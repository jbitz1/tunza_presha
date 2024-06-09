import 'package:flutter/material.dart';
import 'package:tunza_presha/components/add_reading_nudge.dart';
import 'package:tunza_presha/components/bp_reading_card.dart';
import 'package:tunza_presha/components/reminder_card.dart';
import 'package:tunza_presha/components/user_initials_widget.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/router/routes.dart';

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
                      Text(
                        "Friday, 17 Feb",
                        style: TextStyle(
                            fontSize: 14, color: greyColor.withOpacity(.4)),
                      )
                    ],
                  ),
                  const UserInitialsWidget(name: 'Jason Bitega'),
                ],
              ),
              const SizedBox(height: 20),
              const AddReadingNudge(),
              // const Padding(
              //   padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
              //   child: Text(
              //     "Quick Access",
              //     style: TextStyle(fontSize: 14, color: greyColor),
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Padding(
              //       padding:
              //           const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
              //       child: Column(
              //         children: [
              //           IconButton(
              //             iconSize: 60,
              //             color: const Color.fromARGB(2557, 117, 68, 191),
              //             icon: const Icon(Icons.add_box),
              //             onPressed: () {
              //               Navigator.pushNamed(
              //                   context, AppRoutes.newReadingPageRoute);
              //             },
              //           ),
              //           const Text(
              //             "Add reading",
              //             style: TextStyle(
              //                 fontSize: 12,
              //                 color: Color.fromARGB(2557, 117, 68, 191)),
              //           )
              //         ],
              //       ),
              //     ),
              //     Padding(
              //       padding:
              //           const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              //       child: Column(
              //         children: [
              //           IconButton(
              //             iconSize: 60,
              //             color: const Color.fromARGB(2557, 117, 68, 191),
              //             icon: const Icon(Icons.add_box),
              //             onPressed: () {
              //               Navigator.pushNamed(
              //                   context, AppRoutes.reminderPageRoute);
              //             },
              //           ),
              //           const Text(
              //             "Add Reminder",
              //             style: TextStyle(
              //                 fontSize: 12,
              //                 color: Color.fromARGB(2557, 117, 68, 191)),
              //           )
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
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
                      Navigator.pushNamed(context, AppRoutes.bpReadingPage);
                    },
                  )
                ],
              ),

              const BPReadingCard(
                reading: "120/80",
                dateRecorded: "May 19, 2024 at 9:30 AM",
                status: "NORMAL",
                showMargin: false,
              ),

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
                      Navigator.pushNamed(context, AppRoutes.reminderPage);
                    },
                  )
                ],
              ),

              const SizedBox(height: 10),
              const ReminderCard(
                title: 'Take a new blood pressure reading',
                description:
                    'Ensure it is recorded correctly with the BP machine',
                dueAt: 'At 7 AM',
              ),
              const SizedBox(height: 10),

              const ReminderCard(
                title: 'Take a new blood pressure reading',
                description:
                    'Ensure it is recorded correctly with the BP machine',
                dueAt: 'At 7 AM',
              ),
              const SizedBox(height: 10),

              const ReminderCard(
                title: 'Take a new blood pressure reading',
                description:
                    'Ensure it is recorded correctly with the BP machine',
                dueAt: 'At 7 AM',
              ),
              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
