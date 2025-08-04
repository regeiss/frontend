// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../../core/platform/platform_config.dart';
// import '../presentation/application/auth_state.dart';
// import '../presentation/domain/entities/user.dart';

// class AuthNotifier extends StateNotifier<AuthState> {
//   AuthNotifier() : super(const AuthState());

//   Future<void> login(String email, String password) async {
//     if (!PlatformConfig.shouldUseStateManagement) {
//       // Para web, usar abordagem stateless
//       await _webLogin(email, password);
//       return;
//     }

//     // Para mobile, manter estado completo
//     state = state.copyWith(isLoading: true, error: null);
    
//     try {
//       // Lógica de login com estado
//       final user = await _authenticateUser(email, password);
//       state = state.copyWith(
//         isLoading: false,
//         isAuthenticated: true,
//         user: user,
//       );
//     } catch (e) {
//       state = state.copyWith(
//         isLoading: false,
//         error: e.toString(),
//       );
//     }
//   }

//   Future<void> _webLogin(String email, String password) async {
//     // Abordagem stateless para web
//     try {
//       final user = await _authenticateUser(email, password);
//       // Navegar diretamente sem manter estado
//       // Navigator.pushReplacementNamed(context, '/dashboard');
//     } catch (e) {
//       // Mostrar erro temporário sem estado persistente
//       rethrow;
//     }
//   }

//   Future<User> _authenticateUser(String email, String password) async {
//     // Implementação da autenticação
//     await Future.delayed(const Duration(seconds: 1));
//     return User(id: 1, email: email, name: 'Usuário', username: '', isStaff: false, isActive: false, dateJoined:  DateTime.now());  
//   }
// }

// final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
//   return AuthNotifier();
// });