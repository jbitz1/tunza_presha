import 'package:flutter/material.dart';
import 'package:tunza_presha/components/bp_fiters_widget.dart';
import 'package:tunza_presha/components/bp_reading_item.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/constants/string_constants.dart';
import 'package:tunza_presha/routes.dart';

class BPReadingPage extends StatelessWidget {
  const BPReadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          // onPressed: () {
          //   Navigator.pushNamed(context, '/home_page');
          // },
          color: primaryColor,
        ),
        title: const Center(
          child: Text(
            bpReadingsTitle,
            style: TextStyle(
              color: primaryColor,
            ),
          ),
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          //go to new_reading_page
          Navigator.pushNamed(context, newReadingPageRoute);
        },
        style: const ButtonStyle(
            fixedSize: MaterialStatePropertyAll(Size(362, 56)),
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(2557, 117, 68, 191))),
        child: const Text(
          "Add Pressure Reading",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: const [
            Center(
              child: Text(
                bpReadingsDescription,
              ),
            ),
            SizedBox(height: 10),
            BPFiltersWidget(),
            SizedBox(height: 10),
            BPReadingItem(
                reading: "122/80",
                dateRecorded: "Oct 21, 2022 at 10:41 am",
                status: "ELEVATED"),
            BPReadingItem(
                reading: "122/80",
                dateRecorded: "Oct 21, 2022 at 10:41 am",
                status: "LOW"),
            BPReadingItem(
                reading: "122/80",
                dateRecorded: "Oct 21, 2022 at 10:41 am",
                status: "NORMAL"),
            BPReadingItem(
                reading: "122/80",
                dateRecorded: "Oct 21, 2022 at 10:41 am",
                status: "NORMAL"),
          ],
        ),
      ),
    );
  }
}
