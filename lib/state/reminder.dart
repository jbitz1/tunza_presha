import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tunza_presha/constants/string_constants.dart';
part 'reminder.freezed.dart';
part 'reminder.g.dart';

@freezed
class Reminder with _$Reminder {
  factory Reminder({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'dueDate') String? dueDate,
  }) = _Reminder;

  factory Reminder.initial() => Reminder(
        title: unknown,
        description: unknown,
        dueDate: unknown,
      );

  factory Reminder.fromJson(Map<String, dynamic> json) =>
      _$ReminderFromJson(json);
}
