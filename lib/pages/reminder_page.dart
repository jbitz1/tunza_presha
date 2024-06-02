import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ReminderPage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ReminderPage extends StatelessWidget {
  const ReminderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color.fromRGBO(117, 68, 191, 1),
        ),
        title: const Text(
          "           Add Reminder", //I KNOW BUT IT WORKS THO!!!!!!
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(117, 68, 191, 1),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(50),
            child: Text(
              "Time",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(117, 68, 191, 1),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.grey[100],
                height: 56,
                width: 56,
                child: const Center(
                    child: Text(
                  "12",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(":",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Container(
                color: Colors.grey[100],
                height: 56,
                width: 56,
                child: const Center(
                    child: Text(
                  "12",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(50),
            child: Text(
              "Repeat",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(117, 68, 191, 1),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 30,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.grey[300],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                    child: const Center(
                      child: Text(
                        "S",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
