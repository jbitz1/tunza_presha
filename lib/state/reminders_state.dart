import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tunza_presha/state/reminder.dart';
part 'reminders_state.freezed.dart';
part 'reminders_state.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class RemindersState with _$RemindersState {
  factory RemindersState({
    @JsonKey(name: 'currentReminder') Reminder? currentReminder,
    @JsonKey(name: 'userReminders') List<Reminder?>? userReminders,
  }) = _RemindersState;

  factory RemindersState.initial() => RemindersState(
        currentReminder: Reminder.initial(),
        userReminders: <Reminder>[],
      );

  factory RemindersState.fromJson(Map<String, dynamic> json) =>
      _$RemindersStateFromJson(json);
}
