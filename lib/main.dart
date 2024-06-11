import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/infrastructure/database_base.dart';
import 'package:tunza_presha/infrastructure/state_persistor.dart';
import 'package:tunza_presha/my_app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'firebase/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// Set navigator key used by async redux
  NavigateAction.setNavigatorKey(navigatorKey);
  final StateDatabase stateDB = StateDatabase(dataBaseName: DatabaseName);
  await stateDB.init();

  final AppState initialState = await stateDB.readState();

  if (initialState == AppState.initial()) {
    await stateDB.saveInitialState(initialState);
  }

  final Store<AppState> store = Store<AppState>(
    initialState: initialState,
    persistor: PersistorPrinterDecorator<AppState>(stateDB),
    defaultDistinct: true,
  );

  runApp(MyAppWidget(appStore: store));
}
