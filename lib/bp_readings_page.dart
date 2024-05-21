import 'package:flutter/material.dart';
import 'package:tunza_presha/components/app_button.dart';
import 'package:tunza_presha/components/bp_fiters_widget.dart';
import 'package:tunza_presha/components/bp_reading_item.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/constants/string_constants.dart';
import 'package:tunza_presha/data/app_data.dart';
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
        // ),
        // floatingActionButton: PrimaryButton(
        //   onPressed: () {
        //     Navigator.pushNamed(context, newReadingPageRoute);
        //   },
        //   text: "Add Pressure Reading",
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          //go to new_reading_page
          Navigator.pushNamed(context, newReadingPageRoute);
        },
        style: const ButtonStyle(
            fixedSize: MaterialStatePropertyAll(Size(362, 56)),
            backgroundColor: MaterialStatePropertyAll(primaryColor)),
        child: const Text(
          "Add Pressure Reading",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
          children: [
            const Center(
              child: Text(
                bpReadingsDescription,
              ),
            ),
            const SizedBox(height: 10),
            const BPFiltersWidget(),
            const SizedBox(height: 10),
            ...bpReadings.map(
              (reading) {
                return BPReadingItem(
                  reading: "${reading["systole"]}/${reading["diastole"]}",
                  dateRecorded: reading["systole"],
                  status: reading["status"],
                  description: reading["notes"],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
