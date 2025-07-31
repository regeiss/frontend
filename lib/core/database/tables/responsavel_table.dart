import 'package:drift/drift.dart';

@DataClassName('ResponsavelTableData')
class ResponsavelTable extends Table {
  TextColumn get cpf => text().withLength(min: 11, max: 11)();
  TextColumn get nome => text().withLength(max: 150)();
  TextColumn get cep => text().withLength(max: 8)();
  IntColumn get numero => integer()(); // Corrigido: BigInt para corresponder ao Django
  TextColumn get complemento => text().withLength(max: 300).nullable()();
  IntColumn get telefone => integer().nullable()(); // Corrigido: BigInt para corresponder ao Django
  TextColumn get bairro => text().withLength(max: 100).nullable()();
  TextColumn get logradouro => text().withLength(max: 100).nullable()();
  TextColumn get nomeMae => text().withLength(max: 100).nullable()(); // Mantido em camelCase para Dart
  DateTimeColumn get dataNasc => dateTime().nullable()(); // Mantido em camelCase para Dart
  DateTimeColumn get timestamp => dateTime().nullable()();
  TextColumn get status => text().withLength(max: 1).nullable()();
  IntColumn get codRge => integer().nullable()(); // Corrigido: BigInt para corresponder ao Django
  
  // Local database fields
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  BoolColumn get syncPending => boolean().withDefault(const Constant(false))();
  BoolColumn get deletePending => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {cpf};

  @override
  String get tableName => 'responsavel'; // Nome da tabela para corresponder ao Django
}