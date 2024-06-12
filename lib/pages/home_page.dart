import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/components/add_reading_nudge.dart';
import 'package:tunza_presha/components/bp_reading_card.dart';
import 'package:tunza_presha/components/buttons.dart';
import 'package:tunza_presha/components/reminder_card.dart';
import 'package:tunza_presha/components/user_initials_widget.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/bp_reading.dart';
import 'package:tunza_presha/state/reminder.dart';
import 'package:tunza_presha/state/view_models/bp_readings_view_model.dart';
import 'package:tunza_presha/state/view_models/reminders_view_model.dart';
import 'package:tunza_presha/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome back, Jason",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(height: 5),
                      humanizeDate(loadedDate: DateTime.now().toIso8601String())
                    ],
                  ),
                  const UserInitialsWidget(name: 'Jason Bitega'),
                ],
              ),
              const SizedBox(height: 20),
              const AddReadingNudge(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    child: Text(
                      "Last Recorded Blood Pressure",
                      style: TextStyle(fontSize: 14, color: greyColor),
                    ),
                  ),
                  TextButton(
                    child: const Text("View more"),
                    onPressed: () {
                      // context.dispatch(NavigateAction<AppState>.pushNamed(
                      //     AppRoutes.bpReadingPage));
                      Navigator.pushNamed(context, AppRoutes.bpReadingPage);
                    },
                  )
                ],
              ),
              StoreConnector<AppState, UserReadingsViewModel>(
                converter: (store) => UserReadingsViewModel.fromStore(store),
                builder: (BuildContext context,
                    UserReadingsViewModel userReadingsViewModel) {
                  if (userReadingsViewModel.userReadings?.isEmpty ?? true) {
                    return const SizedBox();
                  }
                  final BPReading? lastReading =
                      userReadingsViewModel.userReadings?.last;
                  final String systole = lastReading?.systole ?? "";
                  final String diastole = lastReading?.diastole ?? "";
                  final String reading = "$systole/$diastole";
                  final String note = lastReading?.note ?? "";
                  final String date = lastReading?.date ?? "";
                  final String status = getStatus(lastReading!);

                  return BPReadingCard(
                    reading: reading,
                    dateRecorded: date,
                    status: status,
                    description: note,
                  );
                },
              ),
              // const BPReadingCard(
              //   reading: "120/80",
              //   dateRecorded: "May 19, 2024 at 9:30 AM",
              //   status: "NORMAL",
              //   showMargin: false,
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                    child: Text(
                      "Today's reminders",
                      style: TextStyle(fontSize: 14, color: greyColor),
                    ),
                  ),
                  TextButton(
                    child: const Text("View more"),
                    onPressed: () {
                      // context.dispatch(NavigateAction<AppState>.pushNamed(
                      //     AppRoutes.bpReadingPage));
                      Navigator.pushNamed(context, AppRoutes.listRemindersPage);
                    },
                  )
                ],
              ),

              const SizedBox(height: 10),
              StoreConnector<AppState, UserRemindersViewModel>(
                converter: (store) => UserRemindersViewModel.fromStore(store),
                builder: (BuildContext context,
                    UserRemindersViewModel userRemindersViewModel) {
                  if (userRemindersViewModel.userReminders?.isEmpty ?? true) {
                    return const SizedBox();
                  }
                  final Reminder? lastReminder =
                      userRemindersViewModel.userReminders?.last;
                  final String title = lastReminder?.title ?? '';
                  final String description = lastReminder?.description ?? '';
                  final String dueDate = lastReminder?.dueDate ?? '';

                  return ReminderCard(
                    title: title,
                    description: description,
                    dueAt: dueDate,
                  );
                },
              ),

              const SizedBox(height: 20),
              Center(
                child: SecondaryButton(
                  text: 'Logout',
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.loginPage);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
