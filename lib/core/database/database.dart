import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
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

  Future<void> initialize() async {
    try {
      // Test database connection
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
          // Add migration logic here when needed
        },
        beforeOpen: (details) async {
          // Enable foreign keys
          await customStatement('PRAGMA foreign_keys = ON');

          if (details.wasCreated) {
            AppLogger.info('Database was created for the first time');
          }
        },
      );

  // Responsavel operations
  Future<List<ResponsavelTableData>> getAllResponsaveis() async =>
      await select(responsavelTable).get();

  Future<ResponsavelTableData?> getResponsavelByCpf(String cpf) async =>
      await (select(responsavelTable)..where((t) => t.cpf.equals(cpf)))
          .getSingleOrNull();

  Future<int> insertResponsavel(ResponsavelTableCompanion responsavel) async =>
      await into(responsavelTable).insert(responsavel);

  Future<bool> updateResponsavel(ResponsavelTableCompanion responsavel) async =>
      await update(responsavelTable).replace(responsavel);

  Future<int> deleteResponsavel(String cpf) async =>
      await (delete(responsavelTable)..where((t) => t.cpf.equals(cpf))).go();

  // Membro operations
  Future<List<MembroTableData>> getMembrosDoResponsavel(
          String cpfResponsavel) async =>
      await (select(membroTable)
            ..where((t) => t.cpfResponsavel.equals(cpfResponsavel)))
          .get();

  Future<int> insertMembro(MembroTableCompanion membro) async =>
      await into(membroTable).insert(membro);

  // Demanda operations
  Future<List<DemandaTableData>> getDemandasDoResponsavel(
          String cpfResponsavel) async =>
      await (select(demandaTable)
            ..where((t) => t.cpfResponsavel.equals(cpfResponsavel)))
          .get();

  Future<int> insertDemanda(DemandaTableCompanion demanda) async =>
      await into(demandaTable).insert(demanda);

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

    // Check if expired
    if (result.expiresAt != null &&
        result.expiresAt!.isBefore(DateTime.now())) {
      await (delete(cacheTable)..where((t) => t.key.equals(key))).go();
      return null;
    }

    return result.data;
  }

  Future<void> clearExpiredCache() async {
    await (delete(cacheTable)
          ..where((t) =>
              t.expiresAt.isNotNull() &
              t.expiresAt.isSmallerThanValue(DateTime.now())))
        .go();
  }

  Future<void> clearAllCache() async {
    await delete(cacheTable).go();
  }

  // Clear all data
  Future<void> clearAllData() async {
    await transaction(() async {
      await delete(responsavelTable).go();
      await delete(membroTable).go();
      await delete(demandaTable).go();
      await delete(cacheTable).go();
    });
    AppLogger.info('All database data cleared');
  }
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'cadastro_unificado.db'));

      return NativeDatabase.createInBackground(file, logStatements: true);
    });
