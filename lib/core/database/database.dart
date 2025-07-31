// Para mobile
import 'dart:io' show File;

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
// Para web
import 'package:drift/web.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../config/logging/app_logger.dart';
import 'tables/cache_table.dart';
import 'tables/demanda_table.dart';
import 'tables/membro_table.dart';
import 'tables/responsavel_table.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  ResponsavelTable,
  MembroTable,
  DemandaTable,
  CacheTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase._() : super(_openConnection());

  static AppDatabase? _instance;
  static AppDatabase get instance {
    _instance ??= AppDatabase._();
    return _instance!;
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      AppLogger.info('Criando banco de dados local');
      await m.createAll();
    },
    onUpgrade: (m, from, to) async {
      AppLogger.info('Atualizando banco de dados de $from para $to');
      // Implementar migrações futuras aqui
    },
    beforeOpen: (details) async {
      AppLogger.info('Abrindo banco de dados - versão ${details.versionNow}');
    },
  );
  
  /// Método para limpar todos os dados
  Future<void> clearAllData() async {
    await transaction(() async {
      AppLogger.info('Limpando todos os dados do banco');
      
      await delete(cacheTable).go();
      await delete(demandaTable).go();
      await delete(membroTable).go();
      await delete(responsavelTable).go();
      
      AppLogger.info('Todos os dados foram removidos');
    });
  }
  
  /// Status do banco de dados
  Future<Map<String, int>> getDatabaseStatus() async {
    final responsaveisCount = await select(responsavelTable).get().then((r) => r.length);
    final membrosCount = await select(membroTable).get().then((r) => r.length);
    final demandasCount = await select(demandaTable).get().then((r) => r.length);
    final cacheCount = await select(cacheTable).get().then((r) => r.length);
    
    return {
      'responsaveis': responsaveisCount,
      'membros': membrosCount,
      'demandas': demandasCount,
      'cache': cacheCount,
    };
  }
}

// Função para abrir conexão
DatabaseConnection _openConnection() {
  if (kIsWeb) {
    return _openWebConnection();
  } else {
    return _openMobileConnection();
  }
}

// Conexão Web
DatabaseConnection _openWebConnection() {
  AppLogger.info('Configurando Drift para Web (IndexedDB)');
  
  return DatabaseConnection.delayed(Future(() async {
    try {
      // Tentar usar IndexedDB primeiro
      final storage = await DriftWebStorage.indexedDbIfSupported('cadastro_unificado_web');
      final db = DriftWebDatabase.withStorage(storage);
      
      AppLogger.info('Web database configurado com IndexedDB');
      return db;
      
    } catch (e) {
      // Fallback para localStorage
      AppLogger.warning('IndexedDB não disponível, usando localStorage: $e');
      
      final storage = DriftWebStorage.volatile();
      final db = DriftWebDatabase.withStorage(storage);
      
      return db;
    }
  }));
}

// Conexão Mobile  
DatabaseConnection _openMobileConnection() {
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
        },
      );
      
    } catch (e) {
      AppLogger.error('Erro ao configurar mobile database: $e');
      rethrow;
    }
  }));
}