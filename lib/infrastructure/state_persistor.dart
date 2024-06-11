// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:tunza_presha/infrastructure/database_base.dart';
import 'package:tunza_presha/infrastructure/database_mobile.dart';
import 'package:tunza_presha/infrastructure/initialize_db.dart';
import 'package:tunza_presha/infrastructure/tables.dart';

// Project imports:
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/auth_state.dart';
import 'package:tunza_presha/state/bp_readings_state.dart';
import 'package:tunza_presha/state/reminders_state.dart';

class StateDatabase implements PersistorPrinterDecorator<AppState> {
  StateDatabase({
    Duration throttle = const Duration(seconds: 2),
    Duration saveDuration = Duration.zero,
    required this.dataBaseName,
  })  : _throttle = throttle,
        _saveDuration = saveDuration;

  final String dataBaseName;

  final Duration? _saveDuration;
  final Duration? _throttle;

  /// initialize the database
  Future<void> init() async {
    await DatabaseMobile<Database>(
      dbInitializer: InitializeDB<Database>(dbName: dataBaseName),
    ).database;

    /// Check and create missing tables dynamically
    /// This prevents the need for uninstalling and reinstalling the app every time there is an update in the database
    for (final Tables table in Tables.values) {
      final bool exists = await DatabaseMobile<Database>(
        dbInitializer: InitializeDB<Database>(dbName: dataBaseName),
      ).tableExists(table.name);
      if (!exists) {
        await DatabaseMobile<Database>(
          dbInitializer: InitializeDB<Database>(dbName: dataBaseName),
        ).createTable(table.name);
      }
    }
  }

  @override
  Future<void> deleteState() async {
    await DatabaseMobile<Database>(
      dbInitializer: InitializeDB<Database>(dbName: dataBaseName),
    ).clearDatabase();
  }

  @override
  Future<void> persistDifference({
    AppState? lastPersistedState,
    required AppState newState,
  }) async {
    await Future<dynamic>.delayed(saveDuration!);

    if (lastPersistedState == null ||
        lastPersistedState.authState != newState.authState ||
        lastPersistedState.bpReadingsState != newState.bpReadingsState ||
        lastPersistedState.remindersState != newState.remindersState) {
      await persistState(
        newState,
        DatabaseMobile<Database>(
          dbInitializer: InitializeDB<Database>(dbName: dataBaseName),
        ),
      );
    }
  }

  @override
  Future<AppState> readState() async {
    if (await DatabaseMobile<Database>(
      dbInitializer: InitializeDB<Database>(dbName: dataBaseName),
    ).isDatabaseEmpty()) {
      return AppState.initial();
    } else {
      return retrieveState(
        DatabaseMobile<Database>(
          dbInitializer: InitializeDB<Database>(dbName: dataBaseName),
        ),
      );
    }
  }

  @override
  Future<void> saveInitialState(AppState state) async {
    return persistDifference(newState: state);
  }

  @override
  Duration? get throttle => _throttle;

  Duration? get saveDuration => _saveDuration;

  Future<void> persistState(
    AppState newState,
    DatabaseBase<dynamic> database,
  ) async {
    try {
      await database.saveState(
        data: newState.authState!.toJson(),
        table: Tables.authState,
      );

      await database.saveState(
        data: newState.bpReadingsState!.toJson(),
        table: Tables.bpReadingsState,
      );
      await database.saveState(
        data: newState.remindersState!.toJson(),
        table: Tables.remindersState,
      );
    } catch (e) {
      // reportErrorToSentry(
      //   exception: e,
      //   state: newState,
      //   hint: e.toString(),
      // );
    }
  }

  Future<AppState> retrieveState(DatabaseBase<dynamic> database) async {
    try {
      return const AppState().copyWith(
        authState:
            AuthState.fromJson(await database.retrieveState(Tables.authState)),
        bpReadingsState: BPReadingsState.fromJson(
          await database.retrieveState(Tables.bpReadingsState),
        ),
        remindersState: RemindersState.fromJson(
          await database.retrieveState(Tables.remindersState),
        ),
        wait: Wait(),
      );
    } catch (e) {
      // reportErrorToSentry(
      //   exception: e,
      //   state: AppState.initial(),
      //   hint: e.toString(),
      // );
      return AppState.initial();
    }
  }
}
