// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/reminder.dart';

// Project imports:
class CurrentReminderViewModel extends Vm {
  CurrentReminderViewModel({
    required this.currentReminder,
  }) : super(equals: <Object?>[
          currentReminder,
        ]);

  factory CurrentReminderViewModel.fromStore(Store<AppState> store) {
    return CurrentReminderViewModel(
      currentReminder: store.state.remindersState!.currentReminder,
    );
  }

  final Reminder? currentReminder;
}

class UserRemindersViewModel extends Vm {
  UserRemindersViewModel({
    required this.userReminders,
  }) : super(equals: <Object?>[userReminders]);

  factory UserRemindersViewModel.fromStore(Store<AppState> store) {
    return UserRemindersViewModel(
      userReminders: store.state.remindersState!.userReminders,
    );
  }

  final List<Reminder?>? userReminders;
}
