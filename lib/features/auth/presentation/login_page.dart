import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_app/core/auth/bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is LoginFail) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.failure.interpretation.message),
            ),
          );
          return;
        }
      },
      child: Builder(builder: (context) {
        final isLoading =
            context.select((AuthBloc bloc) => bloc.state is LoginLoading);

        return PopScope(
          canPop: !isLoading,
          child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: _buildLoginForm(),
            ),
          ),
        );
      }),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      leading: const BackButton(),
      title: const Text('Login'),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildWelcomeMessage(),
          const SizedBox(height: 32),
          _buildInputFields(),
          const SizedBox(height: 24),
          _buildLoginButton(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildWelcomeMessage() {
    return Text(
      "Welcome back!",
      style: Theme.of(context).textTheme.titleLarge,
      textAlign: TextAlign.center,
    );
  }

  Widget _buildInputFields() {
    return Builder(builder: (context) {
      final isLoading =
          context.select((AuthBloc bloc) => bloc.state is LoginLoading);

      return Column(
        children: [
          _buildUserNameInput(isLoading),
          const SizedBox(height: 16),
          _buildPasswordInput(isLoading)
        ],
      );
    });
  }

  Widget _buildUserNameInput(bool isLoading) {
    return TextFormField(
      controller: _usernameController,
      decoration: const InputDecoration(
        labelText: 'Username',
        prefixIcon: Icon(Icons.person),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your username';
        }
        return null;
      },
      enabled: !isLoading,
    );
  }

  Widget _buildPasswordInput(bool isLoading) {
    return TextFormField(
      controller: _passwordController,
      decoration: const InputDecoration(
        labelText: 'Password',
        prefixIcon: Icon(Icons.lock),
      ),
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
      onFieldSubmitted: (_) => _login(),
      enabled: !isLoading,
    );
  }

  Widget _buildLoginButton() {
    return Builder(builder: (context) {
      final isLoading =
          context.select((AuthBloc bloc) => bloc.state is LoginLoading);

      final theme = Theme.of(context);

      return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: isLoading ? null : _login,
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.primary,
            foregroundColor: theme.colorScheme.onPrimary,
            textStyle: theme.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          child: isLoading ? const CircularProgressIndicator() : Text('Log In'),
        ),
      );
    });
  }

  void _login() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    context.read<AuthBloc>().add(LoginRequested(
          userName: _usernameController.text,
          password: _passwordController.text,
        ));
  }
}
