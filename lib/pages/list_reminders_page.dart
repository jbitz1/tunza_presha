import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/components/buttons.dart';
import 'package:tunza_presha/components/reminder_card.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/constants/string_constants.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/reminder.dart';
import 'package:tunza_presha/state/view_models/reminders_view_model.dart';

class ListRemindersPage extends StatelessWidget {
  const ListRemindersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.pushNamed(context, AppRoutes.homePage);
          },
          color: primaryColor,
        ),
        title: const Center(
          child: Text(
            "Reminders",
            style: TextStyle(color: primaryColor),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: PrimaryButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.reminderPage);
            },
            text: "Add Reminder",
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding: const EdgeInsets.all(8),
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: [
            const Text(remindersDescription),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            StoreConnector<AppState, UserRemindersViewModel>(
              converter: (Store<AppState> store) =>
                  UserRemindersViewModel.fromStore(store),
              builder: (BuildContext context,
                  UserRemindersViewModel userRemindersViewModel) {
                if (userRemindersViewModel.userReminders?.isEmpty ?? true) {
                  return const Text('No Reminders found');
                }
                return ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: userRemindersViewModel.userReminders?.length ?? 0,
                  itemBuilder: (context, i) {
                    final Reminder? reminder =
                        userRemindersViewModel.userReminders?[i];
                    final String title = reminder?.title ?? '';
                    final String description = reminder?.description ?? '';
                    final String dueDate = reminder?.dueDate ?? '';

                    return ReminderCard(
                      title: title,
                      description: description,
                      dueAt: dueDate,
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
