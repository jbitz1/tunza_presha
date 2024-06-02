import 'package:flutter/material.dart';
import 'package:tunza_presha/pages/login_page.dart';
import 'package:tunza_presha/router/router_generator.dart';
import 'package:tunza_presha/router/routes.dart';

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      // TODO(abiud): check if the user is logged in and change
      // this route to be the home page
      initialRoute: AppRoutes.homePage,
    );
  }
}
