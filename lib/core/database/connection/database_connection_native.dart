// database_connection_native.dart - APENAS para mobile/desktop
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// Conexão nativa para mobile/desktop
LazyDatabase createDatabaseConnection() => LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'cadastro_unificado.db'));
    
    return NativeDatabase.createInBackground(
      file,
      logStatements: kDebugMode,
    );
  });

/// Configurações específicas para plataformas nativas
Future<void> configureSqlite(GeneratedDatabase db) async {
  // Habilita foreign keys
  await db.customStatement('PRAGMA foreign_keys = ON');
  
  // Configura WAL mode para melhor performance
  await db.customStatement('PRAGMA journal_mode = WAL');
  
  // Otimizações de performance
  await db.customStatement('PRAGMA synchronous = NORMAL');
  await db.customStatement('PRAGMA cache_size = 10000');
  await db.customStatement('PRAGMA temp_store = MEMORY');
  
  if (kDebugMode) {
    print('🏗️ SQLite nativo configurado com otimizações');
  }
}