import 'package:drift/drift.dart';

@DataClassName('DemandaTableData')
class DemandaTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get cpfResponsavel => text().withLength(min: 11, max: 11)();
  TextColumn get tipo => text().withLength(
      max: 50)(); // 'saude', 'educacao', 'habitacao', 'ambiente', 'interna'
  TextColumn get demanda => text().withLength(max: 500)();
  TextColumn get status => text().withLength(max: 100).nullable()();
  DateTimeColumn get data => dateTime().withDefault(currentDateAndTime)();
  TextColumn get evolucao => text().withLength(max: 500).nullable()();

  // Campos específicos (JSON string para dados específicos de cada tipo)
  TextColumn get dadosEspecificos => text().nullable()();

  // Local database fields
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  BoolColumn get syncPending => boolean().withDefault(const Constant(false))();
  BoolColumn get deletePending =>
      boolean().withDefault(const Constant(false))();

  @override
  String get tableName => 'demanda'; // Nome da tabela
}
