import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/constants/database_constants.dart';
import 'package:tunza_presha/constants/validator_constants.dart';
import 'package:tunza_presha/firebase_auth_services.dart';

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
  db.collection(usersCollection).add(user).then((DocumentReference doc) =>
      debugPrint('DocumentSnapshot added with ID: ${doc.id}'));
}

Future<void> getUsers() async {
  final db = FirebaseFirestore.instance;

  await db.collection(bpReadingsCollection).get().then((event) {
    for (var doc in event.docs) {
      debugPrint("${doc.id} => ${doc.data()}");
    }
  });
}

/*
A function that takes in a value and checks whether the value is high,
normal or low

See https://www.rcp.ac.uk/improving-care/resources/national-early-warning-score-news-2/
and https://www.rcp.ac.uk/media/ctulqqbn/news2-executive-summary_0.pdf
and https://www.ncbi.nlm.nih.gov/books/NBK570233/table/ch1.tab1/
*/
String processSystoleBP(int value) {
  if (value <= 119) {
    return "LOW";
  } else if (value >= 120 && value <= 130) {
    return "NORMAL";
  } else {
    return "ELEVATED";
  }
}

String processDiastoleBP(int value) {
  if (value <= 79) {
    return "LOW";
  } else if (value >= 80 && value <= 89) {
    return "NORMAL";
  } else {
    return "ELEVATED";
  }
}

// BP Statuses can be
// NORMAL
// ELEVATED
// HIGH
// LOW
Color getVitalColor(String status) {
  if (status == "NORMAL") {
    return greenColor;
  } else if (status == "ELEVATED") {
    return amberColor;
  } else {
    return redColor;
  }
}

/// Signs in a user with the provided email and password
///
/// This function will return true or false depending on whether the user is
/// authenticated or not
Future<bool> signIn({
  required String emailAddress,
  required String password,
}) async {
  if (emailAddress.isEmpty || password.isEmpty) return false;

  final FirebaseAuthService auth = FirebaseAuthService();

  User? user = await auth.signInWithEmailAndPassword(emailAddress, password);
  return user != null;
}

/// Creates and account for a user with the provided email and password
///
/// This function will return true or false depending on whether
/// the account has been created or not
Future<bool> signUp({
  required String emailAddress,
  required String password,
}) async {
  if (emailAddress.isEmpty || password.isEmpty) return false;

  final FirebaseAuthService auth = FirebaseAuthService();

  User? user = await auth.signUpWithEmailAndPassword(emailAddress, password);
  return user != null;
}

validateEmail(String emailAddress) {
  if (emailAddress.isEmpty) {
    return false;
  } else {
    return emailValidatorRegexp.hasMatch(emailAddress);
  }
}

/// [extractNamesInitials] => Extracts name initials from a name
///
/// Usage:
///
/// If you pass in a name like 'Abiud Orina', it returns 'AO'
String extractNamesInitials({required String name}) {
  final List<String> parts = name.trim().split(' ');

  // Remove parts that are empty
  parts.removeWhere((String p) => p.isEmpty);

  if (parts.isEmpty) {
    return 'UU';
  } else if (parts.length >= 2) {
    final StringBuffer initials = StringBuffer();
    for (int i = 0; i <= 1; i++) {
      final String part = parts[i];
      initials.write(part[0].toUpperCase());
    }
    return initials.toString().substring(0, 2);
  }
  return parts.first.split('')[0].toUpperCase();
}
