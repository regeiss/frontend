import 'dart:developer' as developer;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

import '../env.dart';


class AppLogger {
  static late Logger _logger;
  static bool _initialized = false;

  static void init() {
    if (_initialized) return;

    _logger = Logger(
      filter: _AppLogFilter(),
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        printTime: true,
      ),
      output: _AppLogOutput(),
    );

    _initialized = true;
    info('AppLogger initialized');
  }

  static void debug(String message, [Object? error, StackTrace? stackTrace]) {
    if (!_initialized) return;
    _logger.d(message, error: error, stackTrace: stackTrace);
  }

  static void info(String message, [Object? error, StackTrace? stackTrace]) {
    if (!_initialized) return;
    _logger.i(message, error: error, stackTrace: stackTrace);
  }

  static void warning(String message, [Object? error, StackTrace? stackTrace]) {
    if (!_initialized) return;
    _logger.w(message, error: error, stackTrace: stackTrace);
  }

  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    if (!_initialized) return;
    _logger.e(message, error: error, stackTrace: stackTrace);
    
    // Send to Crashlytics in production
    if (Env.enableCrashlytics && !kDebugMode) {
      FirebaseCrashlytics.instance.recordError(
        error ?? message,
        stackTrace,
        fatal: false,
      );
    }
  }

  static void fatal(String message, [Object? error, StackTrace? stackTrace]) {
    if (!_initialized) return;
    _logger.f(message, error: error, stackTrace: stackTrace);
    
    // Send to Crashlytics
    if (Env.enableCrashlytics && !kDebugMode) {
      FirebaseCrashlytics.instance.recordError(
        error ?? message,
        stackTrace,
        fatal: true,
      );
    }
  }

  // Network logging
  static void network(String message, {
    String? method,
    String? url,
    int? statusCode,
    Object? data,
  }) {
    if (!_initialized) return;
    
    final logMessage = StringBuffer(message);
    if (method != null) logMessage.write(' [$method]');
    if (url != null) logMessage.write(' $url');
    if (statusCode != null) logMessage.write(' ($statusCode)');
    if (data != null) logMessage.write('\nData: $data');
    
    _logger.i(logMessage.toString());
  }

  // Analytics logging
  static void analytics(String event, Map<String, Object?>? parameters) {
    if (!_initialized) return;
    
    final message = 'Analytics Event: $event';
    if (parameters?.isNotEmpty == true) {
      _logger.i('$message\nParameters: $parameters');
    } else {
      _logger.i(message);
    }
  }
}

class _AppLogFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    if (!Env.enableLogging) return false;
    if (kReleaseMode && event.level.index < Level.info.index) return false;
    return true;
  }
}

class _AppLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    for (final line in event.lines) {
      if (kDebugMode) {
        developer.log(
          line,
          name: 'CadastroUnificado',
          level: _getLogLevel(event.level),
        );
      }
    }
  }

  int _getLogLevel(Level level) {
    switch (level) {
      case Level.trace:
      case Level.debug:
        return 500;
      case Level.info:
        return 800;
      case Level.warning:
        return 900;
      case Level.error:
      case Level.fatal:
        return 1000;
      default:
        return 800;
    }
  }
}