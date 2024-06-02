// Package imports:
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:tunza_presha/infrastructure/sqlite.dart';

class InitializeDB<T extends DatabaseExecutor> extends InitializeDBHelper<T> {
  InitializeDB({required super.dbName});
}

abstract class InitializeDBHelper<T extends DatabaseExecutor> {
  final String dbName;
  InitializeDBHelper({required this.dbName});

  Future<T> database({T? preInitializedDB}) async {
    return preInitializedDB != null
        ? Future<T>.value(preInitializedDB)
        : initDatabase<T>(dbName);
  }
}
