import 'package:drift/drift.dart';
import 'package:flutter/foundation.dart';

import '../config/logging/app_logger.dart';
// Imports para cada plataforma
import 'connection/database_connection_native.dart'
    if (dart.library.html) 'database_connection_web.dart';
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
  AppDatabase._() : super(createDriftConnection());

  static AppDatabase? _instance;
  static AppDatabase get instance {
    _instance ??= AppDatabase._();
    return _instance!;
  }

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      AppLogger.info('Criando banco de dados local');
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
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