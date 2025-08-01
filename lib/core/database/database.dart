// ignore_for_file: cascade_invocations

import 'dart:io' if (dart.library.html) 'dart:html';
import 'package:drift/drift.dart';
// Mobile imports (só carregam no mobile)
import 'package:drift/native.dart';
import 'package:drift/wasm.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart'
    if (dart.library.html) 'dart:async';

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

  Future<void> initialize() async {
    try {
      await customSelect('SELECT 1').get();
      AppLogger.info('Database initialized successfully');
    } catch (e, stackTrace) {
      AppLogger.error('Failed to initialize database', e, stackTrace);
      rethrow;
    }
  }

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
          AppLogger.info('Database tables created');
        },
        onUpgrade: (m, from, to) async {
          AppLogger.info('Database migrated from version $from to $to');
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
          if (details.wasCreated) {
            AppLogger.info('Database was created for the first time');
          }
        },
      );

  // CRUD Operations
  Future<List<ResponsavelTableData>> getAllResponsaveis() async =>
      select(responsavelTable).get();

  Future<ResponsavelTableData?> getResponsavelByCpf(String cpf) async =>
      (select(responsavelTable)..where((t) => t.cpf.equals(cpf)))
          .getSingleOrNull();

  Future<int> insertResponsavel(ResponsavelTableCompanion responsavel) async =>
      into(responsavelTable).insert(responsavel);

  Future<bool> updateResponsavel(ResponsavelTableCompanion responsavel) async =>
      update(responsavelTable).replace(responsavel);

  Future<int> deleteResponsavel(String cpf) async =>
      (delete(responsavelTable)..where((t) => t.cpf.equals(cpf))).go();

  Future<List<MembroTableData>> getMembrosDoResponsavel(
          String cpfResponsavel) async =>
      (select(membroTable)
            ..where((t) => t.cpfResponsavel.equals(cpfResponsavel)))
          .get();

  Future<int> insertMembro(MembroTableCompanion membro) async =>
      into(membroTable).insert(membro);

  Future<List<DemandaTableData>> getDemandasDoResponsavel(
          String cpfResponsavel) async =>
      (select(demandaTable)
            ..where((t) => t.cpfResponsavel.equals(cpfResponsavel)))
          .get();

  Future<int> insertDemanda(DemandaTableCompanion demanda) async =>
      into(demandaTable).insert(demanda);

  // Cache operations
  Future<void> saveToCache(String key, String data,
      {DateTime? expiresAt}) async {
    await into(cacheTable).insertOnConflictUpdate(
      CacheTableCompanion(
        key: Value(key),
        data: Value(data),
        expiresAt: Value(expiresAt),
        createdAt: Value(DateTime.now()),
      ),
    );
  }

  Future<String?> getFromCache(String key) async {
    final result = await (select(cacheTable)..where((t) => t.key.equals(key)))
        .getSingleOrNull();

    if (result == null) return null;

    if (result.expiresAt != null &&
        result.expiresAt!.isBefore(DateTime.now())) {
      await (delete(cacheTable)..where((t) => t.key.equals(key))).go();
      return null;
    }

    return result.data;
  }
}

// Função para abrir conexão multiplataforma
DatabaseConnection _openConnection() {
  if (kIsWeb) {
    return _openWebConnection();
  } else {
    return _openMobileConnection();
  }
}

// LazyDatabase _openConnection() => LazyDatabase(() async {
//       final dbFolder = await getApplicationDocumentsDirectory();
//       final file = File(p.join(dbFolder.path, 'cadastro_unificado.db'));

//       // CORRIGIDO: Removido closeExecutorOnClose
//       return NativeDatabase.createInBackground(file, logStatements: true);
//     });

// Conexão WEB - usando a API moderna
DatabaseConnection _openWebConnection() {
  AppLogger.info('🌐 Configurando Drift para Web');

  return DatabaseConnection.delayed(Future(() async {
    try {
      // Usar WasmDatabase (API moderna)
      final result = await WasmDatabase.open(
        databaseName: 'cadastro_unificado_web',
        sqlite3Uri: Uri.parse('sqlite3.wasm'),
        driftWorkerUri: Uri.parse('drift_worker.dart.js'),
      );

      if (result.missingFeatures.isNotEmpty) {
        AppLogger.warning(
            'Algumas funcionalidades não disponíveis: ${result.missingFeatures}');
      }

      AppLogger.info('✅ Database Web configurado com WASM');
      return result.resolvedExecutor;
    } catch (e) {
      // Fallback simples para desenvolvimento
      AppLogger.warning('⚠️ WASM não disponível, usando fallback simples: $e');

      // Criar conexão simples para desenvolvimento
      return DatabaseConnection(
        NativeDatabase.memory(logStatements: kDebugMode),
        // closeExecutorOnClose: true,
      );
    }
  }));
}

// Conexão MOBILE - usando NativeDatabase
DatabaseConnection _openMobileConnection() {
  AppLogger.info('📱 Configurando Drift para Mobile');

  return DatabaseConnection.delayed(Future(() async {
    try {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'cadastro_unificado.db'));

      AppLogger.info('📁 Database file: ${file.path}');

      // CORREÇÃO: Usar DatabaseConnection, não retornar QueryExecutor diretamente
      final executor = NativeDatabase.createInBackground(
        file,
        logStatements: kDebugMode,
        setup: (database) {
          database.execute('PRAGMA foreign_keys = ON');
          database.execute('PRAGMA journal_mode = WAL');
          database.execute('PRAGMA synchronous = NORMAL');
        },
      );

      // Retornar como DatabaseConnection
      // ignore: deprecated_member_use
      return DatabaseConnection.fromExecutor(executor);
    } catch (e) {
      AppLogger.error('❌ Erro mobile database: $e');
      rethrow;
    }
  }));
}
