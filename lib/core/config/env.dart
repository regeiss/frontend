import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'API_BASE_URL')
  static const String apiBaseUrl = _Env.apiBaseUrl;

  @EnviedField(varName: 'API_TIMEOUT', defaultValue: 30000)
  static const int apiTimeout = _Env.apiTimeout;

  @EnviedField(varName: 'ENVIRONMENT', defaultValue: 'development')
  static const String environment = _Env.environment;

  @EnviedField(varName: 'DEBUG_MODE', defaultValue: true)
  static const bool debugMode = _Env.debugMode;

  @EnviedField(varName: 'FIREBASE_PROJECT_ID', obfuscate: true)
  static String firebaseProjectId = _Env.firebaseProjectId;

  @EnviedField(varName: 'FIREBASE_APP_ID', obfuscate: true)
  static String firebaseAppId = _Env.firebaseAppId;

  @EnviedField(varName: 'ENABLE_ANALYTICS', defaultValue: true)
  static const bool enableAnalytics = _Env.enableAnalytics;

  @EnviedField(varName: 'ENABLE_CRASHLYTICS', defaultValue: true)
  static const bool enableCrashlytics = _Env.enableCrashlytics;

  @EnviedField(varName: 'ENABLE_LOGGING', defaultValue: true)
  static const bool enableLogging = _Env.enableLogging;

  @EnviedField(varName: 'APP_NAME', defaultValue: 'Cadastro Unificado')
  static const String appName = _Env.appName;

  @EnviedField(varName: 'APP_VERSION', defaultValue: '1.0.0')
  static const String appVersion = _Env.appVersion;

  // Helper getters
  static bool get isProduction => environment == 'production';
  static bool get isDevelopment => environment == 'development';
  static bool get isStaging => environment == 'staging';
}