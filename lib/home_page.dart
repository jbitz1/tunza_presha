import 'package:flutter/material.dart';

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
                          "Good morning user",
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
                            Navigator.pushNamed(context, '/NewReadingPage');
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
                            Navigator.pushNamed(context, '/reminderPage');
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
                      Navigator.pushNamed(context, '/bpReadingPage');
                    },
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "16 Feb 24",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("120/80",
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                        child: Text(
                          "Normal",
                          style: TextStyle(fontSize: 18, color: Colors.green),
                        ),
                      )
                    ])
                  ],
                ),
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
