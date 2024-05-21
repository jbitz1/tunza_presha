import 'package:flutter/material.dart';
import 'package:tunza_presha/components/bp_reading_item.dart';
import 'package:tunza_presha/routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(117, 68, 191, 1),
                          ),
                        ),
                        Text(
                          "Friday, 17 Feb",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 139, 135, 135)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: Text(
                  "Quick Access",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 177, 175, 175),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 60,
                          color: const Color.fromARGB(2557, 117, 68, 191),
                          icon: const Icon(Icons.add_box),
                          onPressed: () {
                            Navigator.pushNamed(context, newReadingPageRoute);
                          },
                        ),
                        const Text(
                          "Add reading",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(2557, 117, 68, 191)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                    child: Column(
                      children: [
                        IconButton(
                          iconSize: 60,
                          color: const Color.fromARGB(2557, 117, 68, 191),
                          icon: const Icon(Icons.add_box),
                          onPressed: () {
                            Navigator.pushNamed(context, reminderPageRoute);
                          },
                        ),
                        const Text(
                          "Add Reminder",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(2557, 117, 68, 191)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    child: Text(
                      "Last Recorded Blood Pressure",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 177, 175, 175),
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Text("View more"),
                    onPressed: () {
                      Navigator.pushNamed(context, bpReadingPageRoute);
                    },
                  )
                ],
              ),
              const BPReadingItem(
                reading: "120/80",
                dateRecorded: "May 19, 2024",
                status: "NORMAL",
                showMargin: false,
              ),
              const SizedBox(height: 10),
              const BPReadingItem(
                reading: "120/80",
                dateRecorded: "May 19, 2024",
                status: "NORMAL",
                showMargin: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    child: Text(
                      "Reminders",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 177, 175, 175),
                      ),
                    ),
                  ),
                  TextButton(
                    child: const Text("View more"),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
