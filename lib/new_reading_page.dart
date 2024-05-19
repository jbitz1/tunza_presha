import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const NewReadingPage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NewReadingPage extends StatefulWidget {
  const NewReadingPage({super.key});

  @override
  State<NewReadingPage> createState() => _NewReadingPageState();
}

class _NewReadingPageState extends State<NewReadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color.fromRGBO(117, 68, 191, 1),
        ),
        title: const Center(
          child: Text(
            "Add Reading", //I KNOW BUT IT WORKS THO!!!!!!
            style: TextStyle(
              color: Color.fromRGBO(117, 68, 191, 1),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Enter your blood pressure reading details below\n",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                "Systole",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                  // style: ,
                  decoration: InputDecoration(
                      hintText: 'Enter systolic value',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(),
                      ),
                      fillColor: Colors.blueGrey[50],
                      filled: true)),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                "Diastole",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                  // style: ,
                  decoration: InputDecoration(
                      hintText: 'Enter diastolic value',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(),
                      ),
                      fillColor: Colors.blueGrey[50],
                      filled: true)),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                "Pulse",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                  // style: ,
                  decoration: InputDecoration(
                      hintText: 'Enter pulse value',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(),
                      ),
                      fillColor: Colors.blueGrey[50],
                      filled: true)),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                "Notes(Optional)",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                      hintText: 'Describe your reading',
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(),
                      ),
                      fillColor: Colors.blueGrey[50],
                      filled: true)),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 400,
              height: 176,
              color: const Color.fromARGB(255, 255, 204, 166),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Current readings',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 211, 82, 8)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "140/98mmhg",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 211, 82, 8),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '6BPM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromARGB(255, 211, 82, 8)),
                      )
                    ],
                  ),
                  Text(
                    'Your blood pressure seems elevated',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 211, 82, 8)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
