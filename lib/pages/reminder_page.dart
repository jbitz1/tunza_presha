import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/components/buttons.dart';
import 'package:tunza_presha/components/custom_date_time_picker.dart';
import 'package:tunza_presha/components/custom_text_field.dart';
import 'package:tunza_presha/constants/color_constants.dart';
import 'package:tunza_presha/constants/string_constants.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/state/actions/update_current_reminder_action.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/view_models/reminders_view_model.dart';
import 'package:tunza_presha/utils.dart';

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
      body: StoreConnector<AppState, CurrentReminderViewModel>(
          converter: (Store<AppState> store) =>
              CurrentReminderViewModel.fromStore(store),
          onInit: (store) => store.dispatch(ResetCurrentReminderAction()),
          builder: (BuildContext context,
              CurrentReminderViewModel currentReminderViewModel) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomTextField(
                    inputType: TextInputType.text,
                    hintText: 'What is the reminder about',
                    labelText: "Title",
                    onChanged: (value) {
                      context
                          .dispatch(UpdateCurrentReminderAction(title: value));
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomTextField(
                    inputType: TextInputType.text,
                    hintText: 'Describe your reminder',
                    labelText: "Description",
                    onChanged: (value) {
                      context.dispatch(
                          UpdateCurrentReminderAction(description: value));
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Date and Time",
                    style: TextStyle(fontSize: 14, color: greyColor),
                  ),
                ),
                (currentReminderViewModel.currentReminder!.dueDate != unknown)
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            humanizeDate(
                              loadedDate: currentReminderViewModel
                                      .currentReminder?.dueDate ??
                                  unknown,
                              showTime: true,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomDateTimePicker(
                                label: "Change Date and Time",
                                onConfirm: (DateTime dateTime) {
                                  StoreProvider.dispatch<AppState>(
                                    context,
                                    UpdateCurrentReminderAction(
                                      dueDate: dateTime.toIso8601String(),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomDateTimePicker(
                          onConfirm: (DateTime dateTime) {
                            StoreProvider.dispatch<AppState>(
                              context,
                              UpdateCurrentReminderAction(
                                dueDate: dateTime.toIso8601String(),
                              ),
                            );
                          },
                        ),
                      ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      onPressed: () {
                        context.dispatch(SaveCurrentReminderAction());
                        Navigator.pushNamed(
                            context, AppRoutes.listRemindersPage);
                      },
                      text: 'Save Reminder',
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
