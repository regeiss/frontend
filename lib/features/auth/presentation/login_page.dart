import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/config/env.dart';

import '../../../../core/theme/app_colors.dart';

import '../../../core/config/notification/notification_service.dart';
import '../../../core/utils/app_validator.dart';

import 'application/auth_state.dart';
import 'auth_text_field.dart';
import 'social_login_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../core/platform/platform_config.dart';
import '../application/auth_notifier.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    
    if (PlatformConfig.isWeb) {
      // Versão web sem estado
      return _buildWebLogin(context, emailController, passwordController);
    }
    
    // Versão mobile com estado
    final authState = ref.watch(authNotifierProvider);
    final authNotifier = ref.read(authNotifierProvider.notifier);

    return _buildMobileLogin(
      context, 
      authState, 
      authNotifier, 
      emailController, 
      passwordController
    );
  }

  Widget _buildWebLogin(
    BuildContext context,
    TextEditingController emailController,
    TextEditingController passwordController,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login - Web')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _handleWebLogin(
                context,
                emailController.text,
                passwordController.text,
              ),
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLogin(
    BuildContext context,
    AuthState authState,
    AuthNotifier authNotifier,
    TextEditingController emailController,
    TextEditingController passwordController,
  ) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login - Mobile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            if (authState.isLoading)
              const CircularProgressIndicator()
            else
              ElevatedButton(
                onPressed: () => authNotifier.login(
                  emailController.text,
                  passwordController.text,
                ),
                child: const Text('Entrar'),
              ),
            if (authState.error != null)
              Text(
                authState.error!,
                style: const TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> _handleWebLogin(
    BuildContext context,
    String email,
    String password,
  ) async {
    try {
      // Fazer login diretamente sem estado
      // await authService.login(email, password);
      if (context.mounted) {
        Navigator.pushReplacementNamed(context, '/dashboard');
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erro: $e')),
        );
      }
    }
  }
}