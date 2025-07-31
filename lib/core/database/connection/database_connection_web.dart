// Arquivo: lib/core/database/database_connection_web.dart   
// Este arquivo é usado para Web (Chrome/Firefox/Safari)

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift/wasm.dart';

import '../../config/logging/app_logger.dart'; // ← MUDOU: usar /wasm.dart ao invés de /web.dart

/// Cria QueryExecutor para plataforma web - VERSÃO ULTRA SIMPLES
QueryExecutor createDriftConnection() {
  AppLogger.info('🌐 Configurando Drift para Web (In-Memory)');
  
  // VERSÃO ULTRA SIMPLES: Database in-memory que funciona SEMPRE
  // Dados não persistem entre sessões, mas o app funciona
  final database = NativeDatabase.memory(
    logStatements: true,
    setup: (db) {
      AppLogger.info('📝 Web usando database temporário');
      AppLogger.info('⚠️ Dados não persistem entre reloads da página');
      db.execute('PRAGMA foreign_keys = ON');
    },
  );
  
  AppLogger.info('✅ Web database configurado (temporário)');
  return database;
}

/// Cria conexão para plataforma web usando WasmDatabase (API moderna)
// DatabaseConnection createDriftConnection() {
//   AppLogger.info('Configurando Drift para Web (WASM)');
     
//   return DatabaseConnection.delayed(Future(() async {
//     try {
//       // OPÇÃO 1: Com arquivos WASM (performance máxima)
//       final result = await WasmDatabase.open(
//         databaseName: 'cadastro_unificado_web',
//         sqlite3Uri: Uri.parse('sqlite3.wasm'),
//         driftWorkerUri: Uri.parse('drift_worker.dart.js'),
//       );
      
//       if (result.missingFeatures.isNotEmpty) {
//         AppLogger.info('Funcionalidades limitadas: ${result.missingFeatures}');
//       }
      
//       AppLogger.info('✅ Web database configurado com WASM + ${result.chosenImplementation}');
//       return result.resolvedExecutor;
      
//     } catch (e) {
//       AppLogger.warning('⚠️ WASM não disponível, tentando fallback: $e');
      
//       try {
//         // OPÇÃO 2: Fallback sem arquivos WASM (mais simples)
//         final result = await WasmDatabase.open(
//           databaseName: 'cadastro_unificado_web_fallback',
//           // Sem sqlite3Uri e driftWorkerUri = usa implementação in-memory/IndexedDB
//         );
        
//         AppLogger.info('✅ Web database configurado com fallback: ${result.chosenImplementation}');
//         return result.resolvedExecutor;
        
//       } catch (e2) {
//         AppLogger.error('❌ Erro fatal ao configurar web database: $e2');
//         rethrow;
//       }
//     }
//   }));
// }