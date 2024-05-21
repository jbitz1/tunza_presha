import 'package:flutter/material.dart';
import 'package:tunza_presha/bp_readings_page.dart';
import 'package:tunza_presha/home_page.dart';
import 'package:tunza_presha/login_page.dart';
import 'package:tunza_presha/new_reading_page.dart';
import 'package:tunza_presha/register_user_page.dart';
import 'package:tunza_presha/reminder_page.dart';
import 'package:tunza_presha/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyAppWidget() as Widget);
}

// BloodPressureApp
class MyAppWidget extends StatelessWidget {
  const MyAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      routes: {
        homePageRoute: (context) => const HomePage(),
        newReadingPageRoute: (context) => const NewReadingPage(),
        bpReadingPageRoute: (context) => const BPReadingPage(),
        reminderPageRoute: (context) => const ReminderPage(),
        loginPageRoute: (context) => const LoginPage(),
        registerUserPageRoute: (context) => const RegisterUserPage()
      },
    );
  }
}
