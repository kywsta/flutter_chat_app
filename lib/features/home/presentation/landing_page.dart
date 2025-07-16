import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: _buildAppBrand(theme),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildLoginButton(theme),
                  const SizedBox(height: 16),
                  _buildRegisterButton(theme),
                  const SizedBox(height: 32), // Bottom padding
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBrand(ThemeData theme) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.chat, size: 72, color: theme.colorScheme.primary),
        const SizedBox(height: 16),
        Text(
          'Chat App',
          style: theme.textTheme.headlineMedium,
        ),
      ],
    );
  }

  Widget _buildLoginButton(ThemeData theme) {
    return ElevatedButton(
      onPressed: () {
        // TODO: Navigate to login page
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        textStyle: theme.textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size.fromHeight(56),
      ),
      child: const Text(
        'Log In',
      ),
    );
  }

  Widget _buildRegisterButton(ThemeData theme) {
    return ElevatedButton(
      onPressed: () {
        // TODO: Navigate to register page
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.secondaryContainer,
        foregroundColor: theme.colorScheme.onSecondaryContainer,
        textStyle: theme.textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.bold,
        ),
        minimumSize: const Size.fromHeight(56),
      ),
      child: const Text(
        'Register',
      ),
    );
  }
}
