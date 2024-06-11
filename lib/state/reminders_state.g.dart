// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminders_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemindersStateImpl _$$RemindersStateImplFromJson(Map<String, dynamic> json) =>
    _$RemindersStateImpl(
      currentReminder: json['currentReminder'] == null
          ? null
          : Reminder.fromJson(json['currentReminder'] as Map<String, dynamic>),
      userReminders: (json['userReminders'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Reminder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RemindersStateImplToJson(
        _$RemindersStateImpl instance) =>
    <String, dynamic>{
      'currentReminder': instance.currentReminder,
      'userReminders': instance.userReminders,
    };
