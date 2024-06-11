import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tunza_presha/components/buttons.dart';
import 'package:tunza_presha/components/custom_text_field.dart';
import 'package:tunza_presha/router/routes.dart';
import 'package:tunza_presha/state/actions/update_current_reading_action.dart';
import 'package:tunza_presha/state/actions/update_current_reminder_action.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/view_models/reminders_view_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ReminderPage(),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
      body: StoreConnector<AppState, UserRemindersViewModel>(
          converter: (Store<AppState> store) =>
              UserRemindersViewModel.fromStore(store),
          builder: (BuildContext context,
              UserRemindersViewModel userRemindersViewModel) {
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      onPressed: () {
                        context.dispatch(SaveCurrentReminderAction());
                        Navigator.pop(context);
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
