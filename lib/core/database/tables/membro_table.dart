import 'package:drift/drift.dart';

@DataClassName('MembroTableData')
class MembroTable extends Table {
  TextColumn get cpf => text().withLength(min: 11, max: 11)();
  TextColumn get nome => text().withLength(max: 150)();
  TextColumn get cpfResponsavel => text().withLength(min: 11, max: 11)();
  DateTimeColumn get timestamp => dateTime().nullable()();
  TextColumn get status => text().withLength(max: 1).nullable()();

  // Local database fields
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  BoolColumn get syncPending => boolean().withDefault(const Constant(false))();
  BoolColumn get deletePending => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {cpf};

  @override
  String get tableName => 'membro'; // Nome da tabela para corresponder ao Django
}