import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/constants/database_constants.dart';

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
      print('DocumentSnapshot added with ID: ${doc.id}'));
}

Future<void> getUsers() async {
  final db = FirebaseFirestore.instance;

  await db.collection(bpReadingsCollection).get().then((event) {
    for (var doc in event.docs) {
      print("${doc.id} => ${doc.data()}");
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
    return Colors.green;
  } else if (status == "ELEVATED") {
    return Colors.amber.withOpacity(.6);
  } else {
    return Colors.orange.withOpacity(.5);
  }
}
