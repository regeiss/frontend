import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/config/env.dart';
import 'core/config/logging/app_logger.dart';
import 'core/config/notification/notification_service.dart';
// import 'core/database/database.dart';  // Temporarily disabled due to Drift issues
import 'core/router/app_router_provider.dart';
import 'core/theme/theme.dart';
import 'firebase_options.dart';

void main() async {
  await _initializeApp();

  runApp(
    const ProviderScope(
      child: CadastroUnificadoApp(),
    ),
  );
}

Future<void> _initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Configure system UI
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Initialize Firebase
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    // Firebase might not be configured for web development
    AppLogger.warning('Firebase initialization failed: $e');
  }

  // Configure Crashlytics
  if (Env.enableCrashlytics && !kDebugMode && !kIsWeb) {
    try {
      FlutterError.onError =
          FirebaseCrashlytics.instance.recordFlutterFatalError;
      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
    } catch (e) {
      AppLogger.warning('Crashlytics not available: $e');
    }
  }

  // Initialize Core Services
  await _initializeCoreServices();
}

Future<void> _initializeCoreServices() async {
  try {
    // Initialize Logger
    AppLogger.init();

    // Initialize Database
    // final database = AppDatabase.instance;  // Temporarily disabled due to Drift issues
    // await database.initialize();

    // Initialize Notification Service
    await NotificationService.initialize();

    AppLogger.info('Core services initialized successfully');
  } catch (e, stackTrace) {
    AppLogger.error('Failed to initialize core services', e, stackTrace);
    rethrow;
  }
}

class CadastroUnificadoApp extends ConsumerWidget {
  const CadastroUnificadoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: Env.appName,
      debugShowCheckedModeBanner: Env.debugMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaler: const TextScaler.linear(1),
        ),
        child: child!,
      ),
    );
  }
}
