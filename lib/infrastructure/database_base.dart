// Project imports:

import 'package:tunza_presha/infrastructure/tables.dart';

const String DatabaseName = 'tunzapresha.store.db';

/// [DatabaseBase] defines an interface to be fulfilled so that a storage component
/// may work, for each exclusive platform. (Mobile and Web)
abstract class DatabaseBase<T> {
  /// get the [database] instance
  Future<T> get database;

  /// [saveState] stores the state in the linked [database]
  Future<void> saveState({
    required Map<String, dynamic> data,
    required Tables table,
  });

  /// [countTableRecords] get how many records belong to specific table as in the
  /// case of SQLite, and key as in the case of local storage
  Future<int> countTableRecords(Tables table);

  Future<bool> isDatabaseEmpty();

  /// [retrieveState] fetches the state from storage unit
  Future<Map<String, dynamic>> retrieveState(Tables table);

  /// [clearDatabase] flushes or deletes the database.
  Future<void> clearDatabase();
}
