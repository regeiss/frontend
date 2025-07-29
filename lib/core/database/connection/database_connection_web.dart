// database_connection_web.dart - APENAS para web
import 'package:drift/drift.dart';
import 'package:drift/web.dart';
import 'package:flutter/foundation.dart';

/// Conexão web usando IndexedDB
LazyDatabase createDatabaseConnection() => LazyDatabase(() async => WebDatabase('cadastro_unificado_web_db'));

/// Configurações específicas para web
Future<void> configureSqlite(GeneratedDatabase db) async {
  // Configurações básicas para web
  // Foreign keys não são totalmente suportadas no IndexedDB
  
  if (kDebugMode) {
    print('🌐 Database web configurado (IndexedDB)');
  }
  
  // Não executa PRAGMAs na web pois não são suportados
}