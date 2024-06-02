import 'package:flutter/material.dart';
import 'package:tunza_presha/pages/bp_readings_page.dart';
import 'package:tunza_presha/pages/home_page.dart';
import 'package:tunza_presha/pages/login_page.dart';
import 'package:tunza_presha/pages/new_reading_page.dart';
import 'package:tunza_presha/pages/register_user_page.dart';
import 'package:tunza_presha/pages/reminder_page.dart';
import 'package:tunza_presha/router/routes.dart';

class RouteGenerator {
  /// gets the current route based on the [RouteSettings]
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Will be used in case we want to pass parameters to a new page
    // e.g the current reading when viewing a reading details page
    // final dynamic args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.homePage:
        return MaterialPageRoute<HomePage>(
          builder: (BuildContext context) => const HomePage(),
        );

      case AppRoutes.newReadingPage:
        return MaterialPageRoute<NewReadingPage>(
          builder: (BuildContext context) => const NewReadingPage(),
        );

      case AppRoutes.bpReadingPage:
        return MaterialPageRoute<BPReadingPage>(
          builder: (BuildContext context) => const BPReadingPage(),
        );

      case AppRoutes.reminderPage:
        return MaterialPageRoute<ReminderPage>(
          builder: (BuildContext context) => const ReminderPage(),
        );

      case AppRoutes.loginPage:
        return MaterialPageRoute<LoginPage>(
          builder: (BuildContext context) => const LoginPage(),
        );

      case AppRoutes.registerUserPage:
        return MaterialPageRoute<RegisterUserPage>(
          builder: (BuildContext context) => const RegisterUserPage(),
        );

      default:
        return MaterialPageRoute<HomePage>(
          builder: (BuildContext context) => const HomePage(),
        );
    }
  }
}
