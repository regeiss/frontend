// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../../../core/config/logging/app_logger.dart';
// import '../../../../core/network/network_exceptions.dart';
// import '../../../../core/storage/secure_storage.dart';

// import '../data/repositories/auth_repository_provider.dart';
// import '../domain/entities/user.dart';
// part 'auth_state.freezed.dart';

// @freezed
// class AuthState with _$AuthState {
//   const factory AuthState.initial() = _Initial;
//   const factory AuthState.loading() = _Loading;
//   const factory AuthState.authenticated(User user) = _Authenticated;
//   const factory AuthState.unauthenticated() = _Unauthenticated;
//   const factory AuthState.error(String message) = _Error;
// }

// final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
//     (ref) => AuthNotifier(ref.read(authRepositoryProvider)));

// class AuthNotifier extends StateNotifier<AuthState> {
//   AuthNotifier(this._authRepository) : super(const AuthState.initial()) {
//     _checkAuthStatus();
//   }
//   final AuthRepository _authRepository;

//   Future<void> _checkAuthStatus() async {
//     try {
//       final isLoggedIn = await SecureStorage.isLoggedIn();

//       if (isLoggedIn) {
//         // Try to get user profile to verify token validity
//         final user = await _authRepository.getUserProfile();
//         state = AuthState.authenticated(user);
//         AppLogger.info('User authentication verified');
//       } else {
//         state = const AuthState.unauthenticated();
//         AppLogger.info('User is not authenticated');
//       }
//     } catch (e) {
//       AppLogger.warning('Failed to verify auth status: $e');
//       await _clearAuthData();
//       state = const AuthState.unauthenticated();
//     }
//   }

//   Future<void> login(String username, String password) async {
//     try {
//       state = const AuthState.loading();
//       AppLogger.info('Attempting login for user: $username');

//       final loginRequest = LoginRequest(
//         username: username,
//         password: password,
//       );

//       final authTokens = await _authRepository.login(loginRequest);

//       // Save tokens and user data
//       await _saveAuthData(authTokens);

//       state = AuthState.authenticated(authTokens.user);
//       AppLogger.info('Login successful for user: ${authTokens.user.username}');
//     } on NetworkExceptions catch (e) {
//       final errorMessage = NetworkExceptions.getErrorMessage(e);
//       AppLogger.error('Login failed with network error: $errorMessage');
//       state = AuthState.error(errorMessage);
//     } catch (e, stackTrace) {
//       AppLogger.error('Login failed with unexpected error', e, stackTrace);
//       state = const AuthState.error('Erro inesperado durante o login');
//     }
//   }

//   Future<void> register({
//     required String username,
//     required String email,
//     required String password,
//     required String passwordConfirm,
//     String? firstName,
//     String? lastName,
//   }) async {
//     try {
//       state = const AuthState.loading();
//       AppLogger.info('Attempting registration for user: $username');

//       final registerRequest = RegisterRequest(
//         username: username,
//         email: email,
//         password: password,
//         passwordConfirm: passwordConfirm,
//         firstName: firstName,
//         lastName: lastName,
//       );

//       final user = await _authRepository.register(registerRequest);

//       // Auto-login after registration
//       await login(username, password);

//       AppLogger.info('Registration successful for user: ${user.username}');
//     } on NetworkExceptions catch (e) {
//       final errorMessage = NetworkExceptions.getErrorMessage(e);
//       AppLogger.error('Registration failed with network error: $errorMessage');
//       state = AuthState.error(errorMessage);
//     } catch (e, stackTrace) {
//       AppLogger.error(
//           'Registration failed with unexpected error', e, stackTrace);
//       state = const AuthState.error('Erro inesperado durante o cadastro');
//     }
//   }

//   Future<void> logout() async {
//     try {
//       AppLogger.info('Logging out user');

//       // Try to logout from server (optional, don't fail if it doesn't work)
//       try {
//         await _authRepository.logout();
//       } catch (e) {
//         AppLogger.warning('Server logout failed: $e');
//       }

//       // Clear local auth data
//       await _clearAuthData();

//       state = const AuthState.unauthenticated();
//       AppLogger.info('Logout completed');
//     } catch (e, stackTrace) {
//       AppLogger.error('Error during logout', e, stackTrace);
//       // Even if there's an error, clear local data and update state
//       await _clearAuthData();
//       state = const AuthState.unauthenticated();
//     }
//   }

//   Future<void> refreshToken() async {
//     try {
//       AppLogger.info('Refreshing authentication token');

//       final refreshToken = await SecureStorage.getRefreshToken();
//       if (refreshToken == null) {
//         throw Exception('No refresh token available');
//       }

//       final authTokens = await _authRepository.refreshToken(refreshToken);

//       // Save new tokens
//       await _saveAuthData(authTokens);

//       state = AuthState.authenticated(authTokens.user);
//       AppLogger.info('Token refresh successful');
//     } catch (e, stackTrace) {
//       AppLogger.error('Token refresh failed', e, stackTrace);
//       await _clearAuthData();
//       state = const AuthState.unauthenticated();
//     }
//   }

//   Future<void> updateProfile({
//     String? firstName,
//     String? lastName,
//     String? email,
//   }) async {
//     try {
//       final currentState = state;
//       if (currentState is! _Authenticated) {
//         throw Exception('User not authenticated');
//       }

//       state = const AuthState.loading();

//       final updatedUser = await _authRepository.updateProfile(
//         firstName: firstName,
//         lastName: lastName,
//         email: email,
//       );

//       // Update stored user data
//       await _saveUserData(updatedUser);

//       state = AuthState.authenticated(updatedUser);
//       AppLogger.info('Profile updated successfully');
//     } catch (e, stackTrace) {
//       AppLogger.error('Profile update failed', e, stackTrace);
//       // Restore previous state on error
//       await _checkAuthStatus();
//     }
//   }

//   Future<void> changePassword({
//     required String currentPassword,
//     required String newPassword,
//   }) async {
//     try {
//       AppLogger.info('Attempting password change');

//       await _authRepository.changePassword(
//         currentPassword: currentPassword,
//         newPassword: newPassword,
//       );

//       AppLogger.info('Password changed successfully');
//     } on NetworkExceptions catch (e) {
//       final errorMessage = NetworkExceptions.getErrorMessage(e);
//       AppLogger.error('Password change failed: $errorMessage');
//       throw Exception(errorMessage);
//     } catch (e, stackTrace) {
//       AppLogger.error(
//           'Password change failed with unexpected error', e, stackTrace);
//       throw Exception('Erro inesperado ao alterar senha');
//     }
//   }

//   Future<void> _saveAuthData(AuthTokens authTokens) async {
//     await Future.wait([
//       SecureStorage.saveAccessToken(authTokens.accessToken),
//       SecureStorage.saveRefreshToken(authTokens.refreshToken),
//       _saveUserData(authTokens.user),
//     ]);
//   }

//   Future<void> _saveUserData(User user) async {
//     await Future.wait([
//       SecureStorage.saveUserId(user.id),
//       SecureStorage.saveUsername(user.username),
//       SecureStorage.saveEmail(user.email),
//       if (user.firstName != null) SecureStorage.saveFirstName(user.firstName!),
//       if (user.lastName != null) SecureStorage.saveLastName(user.lastName!),
//     ]);
//   }

//   Future<void> _clearAuthData() async {
//     await SecureStorage.clearTokens();
//     AppLogger.info('Authentication data cleared');
//   }

//   // Getters for convenience
//   User? get currentUser {
//     final currentState = state;
//     return currentState is _Authenticated ? currentState.user : null;
//   }

//   bool get isAuthenticated => state is _Authenticated;
//   bool get isLoading => state is _Loading;
//   bool get hasError => state is _Error;

//   String? get errorMessage {
//     final currentState = state;
//     return currentState is _Error ? currentState.message : null;
//   }
// }
