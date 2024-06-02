// Package imports:
import 'package:flutter/foundation.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:tunza_presha/infrastructure/migrations.dart';

Future<T> initDatabase<T extends DatabaseExecutor>(String dbName) async {
  final String dbPath = await getDatabasesPath();
  final String path = join(dbPath, dbName);
  return await openDatabase(
    path,
    version: migrations.length,
    onCreate: onCreateCallback,
    onUpgrade: onUpgradeCallback,
  ) as T;
}

Future<void> onCreateCallback(Database db, int version) async {
  await migrate(db, 0, version);
}

Future<void> onUpgradeCallback(
  Database db,
  int oldVersion,
  int newVersion,
) async {
  await migrate(db, oldVersion, newVersion);
}

Future<void> migrate(Database db, int oldVersion, int newVersion) async {
  assert(
    oldVersion < newVersion,
    'The newVersion($newVersion) should always be greater than the'
    ' oldVersion($oldVersion).',
  );

  for (int i = oldVersion; i <= newVersion - 1; i++) {
    final String currentMigration = migrations[i];

    try {
      await db.execute(currentMigration);
    } catch (e) {
      if (kDebugMode) {
        print('Error executing migration $currentMigration');
      }
    }
  }
}

Future<void> clearDatabaseHelper(String dbName) async {
  final String dbPath = await getDatabasesPath();
  final String path = join(dbPath, dbName);
  deleteDatabase(path);
}
