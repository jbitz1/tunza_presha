import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/components/bp_fiters_widget.dart';
import 'package:tunza_presha/components/bp_reading_item.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/constants/string_constants.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/view_models/bp_readings_view_model.dart';
import 'package:tunza_presha/utils.dart';

class ListRemindersPage extends StatelessWidget {
  const ListRemindersPage({super.key});

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
            "Reminders",
            style: TextStyle(color: primaryColor),
          ),
        ),
        // ),
        // floatingActionButton: PrimaryButton(
        //   onPressed: () {
        //     Navigator.pushNamed(context, AppRoutes.newReadingPageRoute);
        //   },
        //   text: "Add Pressure Reading",
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          //go to new_reading_page
          Navigator.pushNamed(context, AppRoutes.reminderPage);
        },
        style: const ButtonStyle(
            fixedSize: MaterialStatePropertyAll(Size(362, 56)),
            backgroundColor: MaterialStatePropertyAll(primaryColor)),
        child: const Text(
          "Add reminder",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(remindersDescription),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            StoreConnector<AppState, UserReadingsViewModel>(
              converter: (Store<AppState> store) =>
                  UserReadingsViewModel.fromStore(store),
              builder: (BuildContext context,
                  UserReadingsViewModel userReadingsViewModel) {
                if (userReadingsViewModel.userReadings?.isEmpty ?? true) {
                  return const Text('No Reminders found');
                }
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: userReadingsViewModel.userReadings?.length ?? 0,
                  itemBuilder: (context, i) {
                    final reading = userReadingsViewModel.userReadings?[i];

                    final String systole = reading?.systole ?? "";
                    final String diastole = reading?.diastole ?? "";
                    final String bp = "$systole/$diastole";
                    final String note = reading?.note ?? "";
                    final String date = reading?.date ?? "";
                    final String status = getStatus(reading!);

                    return BPReadingItem(
                      reading: bp,
                      dateRecorded: date,
                      status: status,
                      description: note,
                    );
                  },
                );
              },
            ),
            // ...bpReadings.map(
            //   (reading) {
            //     return BPReadingItem(
            //       reading: "${reading["systole"]}/${reading["diastole"]}",
            //       dateRecorded: reading["date"],
            //       status: reading["status"],
            //       description: reading["notes"],
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
