
// ignore_for_file: cascade_invocations

import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../config/logging/app_logger.dart';

/// Cria conexão para plataformas nativas (Android/iOS)
DatabaseConnection createDriftConnection() {
  AppLogger.info('Configurando Drift para Mobile (SQLite)');
  
  return DatabaseConnection.delayed(Future(() async {
    try {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'cadastro_unificado.db'));
      
      AppLogger.info('Mobile database: ${file.path}');
      
      return NativeDatabase.createInBackground(
        file,
        logStatements: kDebugMode,
        setup: (database) {
          // Configurações de performance
          database.execute('PRAGMA foreign_keys = ON');
          database.execute('PRAGMA journal_mode = WAL');
          database.execute('PRAGMA synchronous = NORMAL');
        },
      );
      
    } catch (e) {
      AppLogger.error('Erro ao configurar mobile database: $e');
      rethrow;
    }
  }));
}