// ignore_for_file: flutter_style_todos

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/config/env.dart';
import '../../../core/config/notification/notification_service.dart';
// import '../../../core/network/dio_provider.dart' as core_dio;
import '../../../core/utils/app_validator.dart';
import '../../../services/dio_client.dart';
import 'application/auth_state.dart';
import 'auth_text_field.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(GlobalKey<FormBuilderState>.new);
    final isPasswordVisible = useState(false);
    final authState = ref.watch(authNotifierProvider);

    // ✅ CORRIGIDO: Listen to auth state changes usando when()
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

    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 768;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1976D2),
              Color(0xFF1565C0),
              Color(0xFF0D47A1),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(isLargeScreen ? 48 : 24),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: isLargeScreen ? 500 : double.infinity,
                ),
                child: _buildLoginCard(
                  context: context,
                  ref: ref,
                  formKey: formKey,
                  isPasswordVisible: isPasswordVisible,
                  authState: authState,
                  onSubmit: () => _handleLogin(formKey, ref),
                  isLargeScreen: isLargeScreen,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginCard({
    required BuildContext context,
    required WidgetRef ref,
    required GlobalKey<FormBuilderState> formKey,
    required ValueNotifier<bool> isPasswordVisible,
    required AuthState authState,
    required VoidCallback onSubmit,
    required bool isLargeScreen,
  }) =>
      Card(
        elevation: 12,
        shadowColor: Colors.black.withValues(alpha: 0.2),
        color: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsets.all(isLargeScreen ? 40.0 : 32.0),
          child: FormBuilder(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildHeader(context, isLargeScreen),
                const SizedBox(height: 32),
                _buildUsernameField(),
                const SizedBox(height: 16),
                _buildPasswordField(isPasswordVisible, onSubmit),
                authState.maybeWhen(
                  error: (message) => Column(
                    children: [
                      const SizedBox(height: 16),
                      _buildErrorMessage(message),
                    ],
                  ),
                  orElse: () => const SizedBox.shrink(),
                ),
                const SizedBox(height: 32),
                _buildLoginButton(authState, onSubmit),
                const SizedBox(height: 16),
                _buildFooter(context, ref),
              ],
            ),
          ),
        ),
      );

  Widget _buildHeader(BuildContext context, bool isLargeScreen) => Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Icon(
              Icons.people,
              size: 40,
              color: Color(0xFF1976D2),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            Env.appName,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1976D2),
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Sistema de Cadastro Unificado',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey.shade600,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      );

  Widget _buildUsernameField() => AuthTextField(
        name: 'username',
        labelText: 'Usuário',
        prefixIcon: const Icon(Icons.person_outline),
        keyboardType: TextInputType.emailAddress,
        validator: AppValidators.required(errorText: 'Usuário é obrigatório'),
        textInputAction: TextInputAction.next,
      );

  Widget _buildPasswordField(
          ValueNotifier<bool> isPasswordVisible, VoidCallback onSubmit) =>
      AuthTextField(
        name: 'password',
        labelText: 'Senha',
        prefixIcon: const Icon(Icons.lock_outline),
        obscureText: !isPasswordVisible.value,
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey.shade600,
          ),
          onPressed: () {
            isPasswordVisible.value = !isPasswordVisible.value;
          },
        ),
        validator: AppValidators.required(errorText: 'Senha é obrigatória'),
        textInputAction: TextInputAction.done,
        onFieldSubmitted: (_) => onSubmit(),
      );

  Widget _buildErrorMessage(String message) => Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.red.shade50,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.red.shade200),
        ),
        child: Row(
          children: [
            Icon(
              Icons.error_outline,
              color: Colors.red.shade700,
              size: 20,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                message,
                style: TextStyle(
                  color: Colors.red.shade700,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      );

  Widget _buildLoginButton(AuthState authState, VoidCallback onSubmit) =>
      SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: authState.maybeWhen(
            loading: () => null,
            orElse: () => onSubmit,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF1976D2),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
          ),
          child: authState.maybeWhen(
            loading: () => const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
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
      );

  Widget _buildFooter(BuildContext context, WidgetRef ref) => Column(
        children: [
          Text(
            'v${Env.appVersion}',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey.shade700,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.info_outline, size: 16, color: Colors.grey.shade900),
              const SizedBox(width: 4),
              Text(
                'Use suas credenciais do sistema',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey.shade800,
                    ),
              ),
            ],
          ),
          if (Env.debugMode) ...[
            const SizedBox(height: 16),
            TextButton.icon(
              onPressed: () => _testApiConnection(ref),
              icon: const Icon(Icons.bug_report, size: 16),
              label: const Text('Testar Conexão API'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: () => _testLoginFormat(ref),
              icon: const Icon(Icons.code, size: 16),
              label: const Text('Testar Formato Login'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: () => _getApiConfigInfo(ref),
              icon: const Icon(Icons.settings, size: 16),
              label: const Text('Configuração API'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Nota: Em modo web, CORS pode impedir testes diretos',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.grey.shade500,
                    fontSize: 11,
                  ),
              textAlign: TextAlign.center,
            ),
          ],
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

  Future<void> _testApiConnection(WidgetRef ref) async {
    try {
      // Import the DioClient from services
      final dioClient = DioClient();
      final result = await dioClient.testApiConnection();

      if (result.success) {
        await NotificationService.showSuccess('API conectada com sucesso!');
      } else {
        await NotificationService.showError('Erro na conexão: ${result.message}');
      }
    } catch (e) {
      await NotificationService.showError('Erro ao testar conexão: $e');
    }
  }

  Future<void> _testLoginFormat(WidgetRef ref) async {
    try {
      final dioClient = DioClient();
      final result = await dioClient.testLoginFormat();

      if (result.success) {
        await NotificationService.showSuccess(
            'Formato de login testado com sucesso!');
        if (kDebugMode) {
          print('📋 Login format test result: ${result.data}');
        }
      } else {
        await NotificationService.showError(
            'Erro no teste de formato: ${result.message}');
      }
    } catch (e) {
      await NotificationService.showError('Erro ao testar formato de login: $e');
    }
  }

  Future<void> _getApiConfigInfo(WidgetRef ref) async {
    try {
      final dioClient = DioClient();
      final result = await dioClient.getApiConfigInfo();

      if (result.success) {
        await NotificationService.showSuccess(
            'Configuração da API obtida com sucesso!');
        if (kDebugMode) {
          print('🔧 API config info: ${result.data}');
        }
      } else {
        await NotificationService.showError(
            'Erro ao obter configuração: ${result.message}');
      }
    } catch (e) {
      await NotificationService.showError('Erro ao obter configuração da API: $e');
    }
  }
}
