import 'package:flutter/material.dart';
import 'package:tunza_presha/components/bp_reading_item.dart';

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
  final TextEditingController _systoleController = TextEditingController();
  final TextEditingController _diastoleController = TextEditingController();
  final TextEditingController _pulseController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();

  String reading = "";
  String dateRecorded = "";
  String status = "";
  String description = "";

  @override
  void dispose() {
    _systoleController.dispose();
    _diastoleController.dispose();
    _pulseController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _submitReading() {
    setState(() {
      reading = "${_systoleController.text}/${_diastoleController.text}";
      dateRecorded = DateTime.now().toString(); // Current date and time
      status =
          "NORMAL"; // Assuming normal status, you can add logic to determine status
      description = _notesController.text.isEmpty
          ? "Your blood pressure seems normal"
          : _notesController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Color.fromRGBO(117, 68, 191, 1),
        ),
        title: const Center(
          child: Text(
            "Add Reading",
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
                controller: _systoleController,
                decoration: InputDecoration(
                  hintText: 'Enter systolic value',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(),
                  ),
                  fillColor: Colors.blueGrey[50],
                  filled: true,
                ),
              ),
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
                controller: _diastoleController,
                decoration: InputDecoration(
                  hintText: 'Enter diastolic value',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(),
                  ),
                  fillColor: Colors.blueGrey[50],
                  filled: true,
                ),
              ),
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
                controller: _pulseController,
                decoration: InputDecoration(
                  hintText: 'Enter pulse value',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(),
                  ),
                  fillColor: Colors.blueGrey[50],
                  filled: true,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                "Notes (Optional)",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _notesController,
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
                  filled: true,
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: _submitReading,
                child: const Text("Submit"),
              ),
            ),
            if (reading.isNotEmpty)
              BPReadingItem(
                reading: reading,
                dateRecorded: dateRecorded,
                status: status,
                description: description,
              ),
          ],
        ),
      ),
    );
  }
}
