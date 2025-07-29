import 'package:flutter/foundation.dart';

/// Helper para configuração de banco de dados específica para web
class WebDatabaseHelper {
  /// Verifica se está rodando na web
  static bool get isWeb => kIsWeb;

  /// Retorna o nome do banco baseado na plataforma
  static String getDatabaseName() {
    if (isWeb) {
      return 'cadastro_unificado_web_db';
    } else {
      return 'cadastro_unificado.db';
    }
  }

  /// Configurações específicas para web
  static Map<String, dynamic> getWebConfig() {
    return {
      'enableForeignKeys':
          false, // Foreign keys não são totalmente suportadas no IndexedDB
      'enableWAL': false, // WAL mode não é suportado na web
      'enableSync': true, // Habilita sincronização
    };
  }

  /// Configurações específicas para mobile/desktop
  static Map<String, dynamic> getNativeConfig() {
    return {
      'enableForeignKeys': true,
      'enableWAL': true,
      'enableSync': true,
      'logStatements': kDebugMode,
    };
  }

  /// Retorna configurações baseadas na plataforma
  static Map<String, dynamic> getPlatformConfig() {
    return isWeb ? getWebConfig() : getNativeConfig();
  }

  /// Log específico para diferentes plataformas
  static void logPlatformInfo() {
    if (kDebugMode) {
      print(
          '🏗️ Database Platform: ${isWeb ? 'Web (IndexedDB)' : 'Native (SQLite)'}');
      print('📱 Configuration: ${getPlatformConfig()}');
    }
  }
}

/// Extensão para adicionar métodos úteis ao AppDatabase
extension AppDatabaseExtensions on Object {
  /// Verifica se uma operação é suportada na plataforma atual
  bool isOperationSupported(String operation) {
    if (WebDatabaseHelper.isWeb) {
      // Operações não suportadas na web
      const unsupportedOpsWeb = [
        'PRAGMA foreign_keys',
        'PRAGMA journal_mode',
        'ATTACH DATABASE',
        'DETACH DATABASE'
      ];

      return !unsupportedOpsWeb
          .any((op) => operation.toUpperCase().contains(op.toUpperCase()));
    }

    return true; // Todas as operações são suportadas no nativo
  }
}
