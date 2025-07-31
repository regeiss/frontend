// Arquivo: lib/core/database/database_connection_web.dart  
// Este arquivo é usado para Web (Chrome/Firefox/Safari)

import 'package:drift/drift.dart';
import 'package:drift/web.dart';
import '../../config/logging/app_logger.dart';

/// Cria conexão para plataforma web (IndexedDB)
DatabaseConnection createDriftConnection() {
  AppLogger.info('Configurando Drift para Web (IndexedDB)');
  
  return DatabaseConnection.delayed(Future(() async {
    try {
      // Tentar usar IndexedDB primeiro
      final storage = await DriftWebStorage.indexedDbIfSupported('cadastro_unificado_web');
      final db = DriftWebDatabase.withStorage(storage);
      
      AppLogger.info('Web database configurado com IndexedDB');
      return db;
      
    } catch (e) {
      // Fallback para localStorage se IndexedDB falhar
      AppLogger.warning('IndexedDB não disponível, usando localStorage: $e');
      
      try {
        final storage = DriftWebStorage.volatile();
        final db = DriftWebDatabase.withStorage(storage);
        
        AppLogger.info('Web database configurado com localStorage');
        return db;
        
      } catch (e2) {
        AppLogger.error('Erro fatal ao configurar web database: $e2');
        rethrow;
      }
    }
  }));
}