import 'package:tunza_presha/infrastructure/tables.dart';

final List<String> migrations = Tables.values
    .map(
      (Tables table) => '''
  CREATE TABLE IF NOT EXISTS ${table.name} (id INTEGER PRIMARY KEY,
          ${table.name} TEXT)''',
    )
    .toList();
