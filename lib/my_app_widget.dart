import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/pages/login_page.dart';
import 'package:tunza_presha/router/router_generator.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/state/app_state.dart';

class MyAppWidget extends StatelessWidget {
  final Store<AppState> appStore;

  const MyAppWidget({super.key, required this.appStore});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: appStore,
      child: StoreConnector<AppState, AppState>(
        converter: (Store<AppState> store) => store.state,
        builder: (BuildContext context, AppState vm) {
          final bool isSignedIn = vm.authState?.isSignedIn ?? false;

          return MaterialApp(
              home: const LoginPage(),
              theme: ThemeData(),
              debugShowCheckedModeBanner: false,
              onGenerateRoute: RouteGenerator.generateRoute,
              // TODO(abiud): check if the user is logged in and change
              // this route to be the home page
              initialRoute:
                  isSignedIn ? AppRoutes.homePage : AppRoutes.loginPage);
        },
      ),
    );
  }
}
