import 'package:drift/drift.dart';

@DataClassName('CacheTableData')
class CacheTable extends Table {
  TextColumn get key => text()();
  TextColumn get data => text()();
  DateTimeColumn get expiresAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {key};
}