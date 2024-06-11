// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminders_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemindersState _$RemindersStateFromJson(Map<String, dynamic> json) {
  return _RemindersState.fromJson(json);
}

/// @nodoc
mixin _$RemindersState {
  @JsonKey(name: 'currentReminder')
  Reminder? get currentReminder => throw _privateConstructorUsedError;
  @JsonKey(name: 'userReminders')
  List<Reminder?>? get userReminders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemindersStateCopyWith<RemindersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemindersStateCopyWith<$Res> {
  factory $RemindersStateCopyWith(
          RemindersState value, $Res Function(RemindersState) then) =
      _$RemindersStateCopyWithImpl<$Res, RemindersState>;
  @useResult
  $Res call(
      {@JsonKey(name: 'currentReminder') Reminder? currentReminder,
      @JsonKey(name: 'userReminders') List<Reminder?>? userReminders});

  $ReminderCopyWith<$Res>? get currentReminder;
}

/// @nodoc
class _$RemindersStateCopyWithImpl<$Res, $Val extends RemindersState>
    implements $RemindersStateCopyWith<$Res> {
  _$RemindersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentReminder = freezed,
    Object? userReminders = freezed,
  }) {
    return _then(_value.copyWith(
      currentReminder: freezed == currentReminder
          ? _value.currentReminder
          : currentReminder // ignore: cast_nullable_to_non_nullable
              as Reminder?,
      userReminders: freezed == userReminders
          ? _value.userReminders
          : userReminders // ignore: cast_nullable_to_non_nullable
              as List<Reminder?>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReminderCopyWith<$Res>? get currentReminder {
    if (_value.currentReminder == null) {
      return null;
    }

    return $ReminderCopyWith<$Res>(_value.currentReminder!, (value) {
      return _then(_value.copyWith(currentReminder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RemindersStateImplCopyWith<$Res>
    implements $RemindersStateCopyWith<$Res> {
  factory _$$RemindersStateImplCopyWith(_$RemindersStateImpl value,
          $Res Function(_$RemindersStateImpl) then) =
      __$$RemindersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currentReminder') Reminder? currentReminder,
      @JsonKey(name: 'userReminders') List<Reminder?>? userReminders});

  @override
  $ReminderCopyWith<$Res>? get currentReminder;
}

/// @nodoc
class __$$RemindersStateImplCopyWithImpl<$Res>
    extends _$RemindersStateCopyWithImpl<$Res, _$RemindersStateImpl>
    implements _$$RemindersStateImplCopyWith<$Res> {
  __$$RemindersStateImplCopyWithImpl(
      _$RemindersStateImpl _value, $Res Function(_$RemindersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentReminder = freezed,
    Object? userReminders = freezed,
  }) {
    return _then(_$RemindersStateImpl(
      currentReminder: freezed == currentReminder
          ? _value.currentReminder
          : currentReminder // ignore: cast_nullable_to_non_nullable
              as Reminder?,
      userReminders: freezed == userReminders
          ? _value.userReminders
          : userReminders // ignore: cast_nullable_to_non_nullable
              as List<Reminder?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemindersStateImpl implements _RemindersState {
  _$RemindersStateImpl(
      {@JsonKey(name: 'currentReminder') this.currentReminder,
      @JsonKey(name: 'userReminders') this.userReminders});

  factory _$RemindersStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemindersStateImplFromJson(json);

  @override
  @JsonKey(name: 'currentReminder')
  final Reminder? currentReminder;
  @override
  @JsonKey(name: 'userReminders')
  final List<Reminder?>? userReminders;

  @override
  String toString() {
    return 'RemindersState(currentReminder: $currentReminder, userReminders: $userReminders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemindersStateImpl &&
            (identical(other.currentReminder, currentReminder) ||
                other.currentReminder == currentReminder) &&
            const DeepCollectionEquality()
                .equals(other.userReminders, userReminders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentReminder,
      const DeepCollectionEquality().hash(userReminders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemindersStateImplCopyWith<_$RemindersStateImpl> get copyWith =>
      __$$RemindersStateImplCopyWithImpl<_$RemindersStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemindersStateImplToJson(
      this,
    );
  }
}

abstract class _RemindersState implements RemindersState {
  factory _RemindersState(
      {@JsonKey(name: 'currentReminder') final Reminder? currentReminder,
      @JsonKey(name: 'userReminders')
      final List<Reminder?>? userReminders}) = _$RemindersStateImpl;

  factory _RemindersState.fromJson(Map<String, dynamic> json) =
      _$RemindersStateImpl.fromJson;

  @override
  @JsonKey(name: 'currentReminder')
  Reminder? get currentReminder;
  @override
  @JsonKey(name: 'userReminders')
  List<Reminder?>? get userReminders;
  @override
  @JsonKey(ignore: true)
  _$$RemindersStateImplCopyWith<_$RemindersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
