import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/bp_readings_page.dart';
import 'package:tunza_presha/home_page.dart';
import 'package:tunza_presha/new_reading_page.dart';
import 'package:tunza_presha/reminder_page.dart';
import 'package:tunza_presha/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  getUsers();
  // createUser();

  runApp(const MyAppWidget() as Widget);
}

// BloodPressureApp
class MyAppWidget extends StatelessWidget {
  const MyAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      routes: {
        homePageRoute: (context) => const HomePage(),
        newReadingPage: (context) => const NewReadingPage(),
        bpReadingPage: (context) => const BPReadingPage(),
        reminderPage: (context) => const ReminderPage()
      },
    );
  }
}

void createUser() {
  final db = FirebaseFirestore.instance;
  // Create a new user with a first and last name
  final user = <String, dynamic>{
    "date_of_birth": "9/30/2003",
    "first_name": "Jason",
    "gender": "Male",
    "last_name": "Bitega"
  };

// Add a new document with a generated ID
  db.collection("users_test").add(user).then((DocumentReference doc) =>
      print('DocumentSnapshot added with ID: ${doc.id}'));
}

Future<void> getUsers() async {
  final db = FirebaseFirestore.instance;

  await db.collection("bp_readings_test").get().then((event) {
    for (var doc in event.docs) {
      print("${doc.id} => ${doc.data()}");
    }
  });
}
