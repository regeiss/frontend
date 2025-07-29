// database_connection.dart - Import condicional por plataforma
import 'package:drift/drift.dart';

// Imports condicionais - evita compilar código SQLite nativo para web
import 'database_connection_web.dart'
    if (dart.library.io) 'database_connection_native.dart';

/// Factory que retorna a conexão adequada para cada plataforma
LazyDatabase getDatabaseConnection() => createDatabaseConnection();

/// Configura o banco de acordo com a plataforma
Future<void> configureDatabaseForPlatform(GeneratedDatabase db) async {
  await configureSqlite(db);
}