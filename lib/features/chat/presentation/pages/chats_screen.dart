import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/auth/auth_session.dart';
import 'package:flutter_chat_app/core/auth/bloc/auth_bloc.dart';
import 'package:flutter_chat_app/core/di/service_locator.dart';
import 'package:flutter_chat_app/core/navigation/app_router.dart';
import 'package:flutter_chat_app/features/chat/domain/graphql/get_chats.graphql.dart';
import 'package:flutter_chat_app/features/chat/presentation/bloc/chat_list_bloc.dart';
import 'package:flutter_chat_app/features/chat/routes.dart';
import 'package:flutter_chat_app/shared/theme/app_theme_cubit.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_loadMoreListener);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _buildNewChatFab(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Chats'),
      actions: [
        _buildThemeToggleButton(),
        _buildUserInfoButton(),
        _buildLogOutButton(),
      ],
    );
  }

  Widget _buildThemeToggleButton() {
    return IconButton(
      onPressed: () => context.read<AppThemeCubit>().toggleTheme(),
      icon: const Icon(Icons.brightness_6),
    );
  }

  Widget _buildUserInfoButton() {
    return IconButton(
      onPressed: () => _showUserInfo(context),
      icon: const Icon(Icons.person),
    );
  }

  Widget _buildLogOutButton() {
    return IconButton(
      onPressed: _logout,
      icon: const Icon(Icons.logout),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<ChatListBloc, ChatListState>(
      builder: (context, state) {
        switch (state.status) {
          case ChatListStatus.initial:
            return _buildLoadingIndicator();
          case ChatListStatus.loaded:
            return _buildChatList(state);
        }
      },
    );
  }

  Widget _buildLoadingIndicator() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildChatList(ChatListState state) {
    return ListView.separated(
      controller: _scrollController,
      itemCount:
          state.hasReachedMax ? state.chats.length : state.chats.length + 1,
      itemBuilder: (context, index) {
        if (index < state.chats.length) {
          return _buildChatListItem(state.chats[index]);
        } else {
          return _buildLoadingMoreIndicator();
        }
      },
      separatorBuilder: (context, index) => const Divider(height: 0),
    );
  }

  Widget _buildChatListItem(Query$GetChats$getChats$edges$node chat) {
    final chatName = chat.name;
    final isGroup = chat.isGroup;
    final memberCount = chat.memberIds.length;
    final createdAt = chat.createdAt;

    final theme = Theme.of(context);

    return ListTile(
      leading: CircleAvatar(
        child: Icon(
          isGroup ? Icons.group : Icons.person,
        ),
      ),
      title: Text(
        chatName,
        style: theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        isGroup ? '$memberCount members' : 'Direct message',
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _formatDate(createdAt),
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
      onTap: () {
        _openChatDetail(chat);
      },
    );
  }

  Widget _buildLoadingMoreIndicator() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: SizedBox.square(
          dimension: 24,
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  Widget _buildNewChatFab() {
    return FloatingActionButton(
      onPressed: _showCreateChatDialog,
      child: const Icon(Icons.add),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 0) {
      return '${difference.inDays}d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes}m ago';
    } else {
      return 'Just now';
    }
  }

  void _showUserInfo(BuildContext context) {
    final userAuth = AuthSession().userAuthModel;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('User Info'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Username: ${userAuth?.user.username ?? 'Unknown'}'),
            Text('Email: ${userAuth?.user.email ?? 'Not provided'}'),
            Text('ID: ${userAuth?.user.id ?? 'Unknown'}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  void _logout() {
    serviceLocator.get<AuthBloc>().add(LogoutRequested());
  }

  void _loadMoreListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      if (!context.read<ChatListBloc>().state.hasReachedMax) {
        context.read<ChatListBloc>().add(GetChatsEvent());
      }
    }
  }

  void _openChatDetail(Query$GetChats$getChats$edges$node chat) {
    serviceLocator.get<AppRouter>().navigateToChatDetail(chat);
  }

  void _showCreateChatDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Create Chat'),
        content: const Text('Chat creation feature coming soon!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
