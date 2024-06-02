// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:sqflite/sqflite.dart';
import 'package:tunza_presha/constants/database_constants.dart';
import 'package:tunza_presha/infrastructure/database_base.dart';
import 'package:tunza_presha/infrastructure/initialize_db.dart';
import 'package:tunza_presha/infrastructure/sqlite.dart';
import 'package:tunza_presha/infrastructure/tables.dart';

// Project imports:

/// [DatabaseMobile] is the main entry for interacting with the database for healthcloud mobile
/// It uses sqlite which is a common RDMS. Unlike other key:value storage, sqlite offers
/// high flexibility when storing structured data.
/// The idea is to store, sessions, permissions(highly structured) and anything else
/// that required persistence.
/// When a new state has been added, it needs to be serialized so that it may be saved in the database
/// The command to serialize is [flutter pub run build_runner build --delete-conflicting-outputs]
/// Ref : https://flutter.dev/docs/development/data-and-backend/json
///     : https://pub.dev/packages/built_value
///

class DatabaseMobile<T extends DatabaseExecutor> implements DatabaseBase<T> {
  DatabaseMobile({required this.dbInitializer});

  final InitializeDB<T>? dbInitializer;

  /// [database] creates and returns an instance of the database as a future
  @override
  Future<T> get database async => dbInitializer!.database();

  @override
  Future<void> clearDatabase() =>
      clearDatabaseHelper(this.dbInitializer!.dbName);

  @override
  Future<int> countTableRecords(Tables table) async {
    final T db = await this.database;

    final int? count = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM ${table.name}'),
    );

    return Future<int>.value(count);
  }

  @override
  Future<bool> isDatabaseEmpty() async {
    final int t1 = await countTableRecords(Tables.authState);
    final int t2 = await countTableRecords(Tables.bpReadingsState);
    final int t3 = await countTableRecords(Tables.reminderState);

    final int counts = t1 + t2 + t3;

    if (counts > 0) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<Map<String, dynamic>> retrieveState(Tables table) async {
    final Map<String, dynamic> state = await retrieveWorker(table);

    final dynamic decodedState = json.decode(state[table.name] as String);

    return decodedState as Map<String, dynamic>;
  }

  @override
  Future<void> saveState({
    required Map<String, dynamic> data,
    required Tables table,
  }) async {
    final String tableName = table.name;

    final T db = await this.database;
    final String dataAsString = jsonEncode(data);
    await db.rawInsert(
      'INSERT INTO $tableName($tableName) VALUES(?)',
      <dynamic>[dataAsString],
    );
    return;
  }

  Future<Map<String, dynamic>> retrieveWorker(Tables table) async {
    final T db = await this.database;

    final List<Map<dynamic, dynamic>> queriedStates = await db
        .rawQuery('SELECT * FROM ${table.name} ORDER BY id DESC LIMIT 1');
    final Map<String, dynamic> state =
        Map<String, dynamic>.from(queriedStates.first);

    return state;
  }

  /// [tableExists] checks if table exists
  Future<bool> tableExists(String tableName) async {
    final T db = await this.database;
    final List<Map<dynamic, Object?>> res = await db.rawQuery(
      '''SELECT name FROM $masterSchemaTableName WHERE type='table' AND name='$tableName'  ''',
    );
    return res.isNotEmpty;
  }

  /// [createTable] dynamically create a table if it does not exist
  Future<void> createTable(String tableName) async {
    final T db = await this.database;
    await db.execute(
      '''CREATE TABLE IF NOT EXISTS $tableName(id INTEGER PRIMARY KEY, $tableName TEXT)''',
    );
  }
}
