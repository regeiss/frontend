// ignore_for_file: cascade_invocations

import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../config/logging/app_logger.dart';

QueryExecutor createDriftConnection() {
  AppLogger.info('Configurando Drift para Mobile (SQLite)');
  
  // Retornar LazyDatabase (que é um QueryExecutor)
  return LazyDatabase(() async {
    try {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'cadastro_unificado.db'));
      
      AppLogger.info('📁 Mobile database: ${file.path}');
      
      return NativeDatabase(
        file,
        logStatements: kDebugMode,
        setup: (database) {
          database.execute('PRAGMA foreign_keys = ON');
          database.execute('PRAGMA journal_mode = WAL');
          database.execute('PRAGMA synchronous = NORMAL');
        },
      );
      
    } catch (e) {
      AppLogger.error('❌ Erro ao configurar mobile database: $e');
      rethrow;
    }
  });
}
/// Cria conexão para plataformas nativas (Android/iOS)
// DatabaseConnection createDriftConnection() {
//   AppLogger.info('Configurando Drift para Mobile (SQLite)');
  
//   return DatabaseConnection.delayed(Future(() async {
//     try {
//       // Configurações específicas do Android
//       if (Platform.isAndroid) {
//         await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
        
//         // Configurar diretório temporário para sqlite3
//         final cachebase = (await getTemporaryDirectory()).path;
//         sqlite3.tempDirectory = cachebase;
//       }
      
//       final dbFolder = await getApplicationDocumentsDirectory();
//       final file = File(p.join(dbFolder.path, 'cadastro_unificado.db'));
      
//       AppLogger.info('📁 Mobile database: ${file.path}');
      
//       // CORREÇÃO: NativeDatabase é um QueryExecutor, precisa ser envolvido
//       final database = NativeDatabase(
//         file,
//         logStatements: kDebugMode,
//         setup: (database) {
//           // Configurações de performance e segurança
//           database.execute('PRAGMA foreign_keys = ON');
//           database.execute('PRAGMA journal_mode = WAL');
//           database.execute('PRAGMA synchronous = NORMAL');
//           database.execute('PRAGMA temp_store = MEMORY');
//           database.execute('PRAGMA mmap_size = 268435456'); // 256MB
//         },
//       );
      
//       // Retornar o QueryExecutor (NativeDatabase É um QueryExecutor)
//       return database;
      
//     } catch (e) {
//       AppLogger.error('❌ Erro ao configurar mobile database: $e');
//       rethrow;
//     }
//   }));
// }