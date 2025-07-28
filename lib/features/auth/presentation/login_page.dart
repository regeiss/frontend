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

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormBuilderState>.new);
    final isPasswordVisible = useState(false);
    final authState = ref.watch(authNotifierProvider);

    // Listen to auth state changes
    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      next.when(
        initial: () {},
        loading: () {},
        authenticated: (user) {
          NotificationService.showSuccess('Login realizado com sucesso!');
          context.go('/dashboard');
        },
        unauthenticated: () {},
        error: (message) {
          NotificationService.showError(message);
        },
      );
    });

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              
              // Logo and App Name
              _buildHeader(),
              
              const SizedBox(height: 48),
              
              // Login Form
              _buildLoginForm(
                formKey: formKey,
                isPasswordVisible: isPasswordVisible,
                authState: authState,
                onSubmit: () => _handleLogin(formKey, ref),
              ),
              
              const SizedBox(height: 24),
              
              // Forgot Password
              _buildForgotPasswordButton(),
              
              const SizedBox(height: 32),
              
              // Divider
              _buildDivider(),
              
              const SizedBox(height: 24),
              
              // Social Login (if available)
              const SocialLoginButtons(),
              
              const SizedBox(height: 24),
              
              // Register Link
              _buildRegisterLink(context),
              
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() => Column(
      children: [
        // Logo
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryColor.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: const Icon(
            Icons.people_outline,
            size: 40,
            color: Colors.white,
          ),
        ),
        
        const SizedBox(height: 24),
        
        // App Name
        const Text(
          Env.appName,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        
        const SizedBox(height: 8),
        
        // Subtitle
        const Text(
          'Entre em sua conta',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.textSecondaryColor,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );

  Widget _buildLoginForm({
    required GlobalKey<FormBuilderState> formKey,
    required ValueNotifier<bool> isPasswordVisible,
    required AuthState authState,
    required VoidCallback onSubmit,
  }) => FormBuilder(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Username Field
          AuthTextField(
            name: 'username',
            label: 'Usuário',
            hintText: 'Digite seu nome de usuário',
            prefixIcon: Icons.person_outline,
            validator: AppValidators.required(errorText: 'Usuário é obrigatório'),
            textInputAction: TextInputAction.next,
          ),
          
          const SizedBox(height: 16),
          
          // Password Field
          AuthTextField(
            name: 'password',
            label: 'Senha',
            hintText: 'Digite sua senha',
            prefixIcon: Icons.lock_outline,
            obscureText: !isPasswordVisible.value,
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordVisible.value
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: AppColors.textSecondaryColor,
              ),
              onPressed: () {
                isPasswordVisible.value = !isPasswordVisible.value;
              },
            ),
            validator: AppValidators.required(errorText: 'Senha é obrigatória'),
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (_) => onSubmit(),
          ),
          
          const SizedBox(height: 24),
          
          // Login Button
          SizedBox(
            height: 56,
            child: ElevatedButton(
              onPressed: authState.maybeWhen(
                loading: () => null,
                orElse: () => onSubmit,
              ),
              child: authState.maybeWhen(
                loading: () => const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                ),
                orElse: () => const Text(
                  'Entrar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

  Widget _buildForgotPasswordButton() => Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // TODO: Implement forgot password
          NotificationService.showInfo('Funcionalidade em desenvolvimento');
        },
        child: const Text(
          'Esqueceu a senha?',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );

  Widget _buildDivider() => const Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColors.borderColor,
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'ou',
            style: TextStyle(
              color: AppColors.textSecondaryColor,
              fontSize: 14,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.borderColor,
            thickness: 1,
          ),
        ),
      ],
    );

  Widget _buildRegisterLink(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Não tem uma conta? ',
          style: TextStyle(
            color: AppColors.textSecondaryColor,
            fontSize: 16,
          ),
        ),
        TextButton(
          onPressed: () {
            // TODO: Navigate to register page
            NotificationService.showInfo('Cadastro em desenvolvimento');
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const Text(
            'Cadastre-se',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );

  void _handleLogin(GlobalKey<FormBuilderState> formKey, WidgetRef ref) {
    if (formKey.currentState?.saveAndValidate() ?? false) {
      final formData = formKey.currentState!.value;
      final username = formData['username'] as String;
      final password = formData['password'] as String;
      
      ref.read(authNotifierProvider.notifier).login(username, password);
    }
  }
}