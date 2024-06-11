import 'package:async_redux/async_redux.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/reminder.dart';

class UpdateCurrentReminderAction extends ReduxAction<AppState> {
  final String? title;
  final String? description;
  final String? dueDate;

  UpdateCurrentReminderAction({
    this.title,
    this.description,
    this.dueDate,
  });
  @override
  AppState reduce() {
    return state.copyWith.remindersState!.currentReminder!.call(
      title: title ?? state.remindersState!.currentReminder!.title,
      description:
          description ?? state.remindersState!.currentReminder!.description,
      dueDate: DateTime.now().add(const Duration(days: 5)).toIso8601String(),
      // dueDate: dueDate ?? state.remindersState!.currentReminder!.dueDate,
    );
  }
}

class SaveCurrentReminderAction extends ReduxAction<AppState> {
  SaveCurrentReminderAction();
  @override
  AppState reduce() {
    // Take the current reading
    final Reminder? currentReminder = state.remindersState!.currentReminder;

// Get the saved readings from state
    final List<Reminder?>? userRemindersFromState =
        state.remindersState?.userReminders;

    // Add the new reading to the user readings
    userRemindersFromState?.add(currentReminder);

    // Update state with the updated readings
    final AppState newState = state.copyWith.remindersState!.call(
      userReminders:
          userRemindersFromState ?? state.remindersState!.userReminders,
    );
    return newState;
  }

  @override
  void after() {
    dispatch(ResetCurrentReminderAction());
    super.after();
  }
}

class ResetCurrentReminderAction extends ReduxAction<AppState> {
  ResetCurrentReminderAction();
  @override
  AppState reduce() {
    return state.copyWith.remindersState!
        .call(currentReminder: Reminder.initial());
  }
}
