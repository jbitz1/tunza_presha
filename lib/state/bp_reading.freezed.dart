// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bp_reading.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BPReading _$BPReadingFromJson(Map<String, dynamic> json) {
  return _BPReading.fromJson(json);
}

/// @nodoc
mixin _$BPReading {
  @JsonKey(name: 'systole')
  String? get systole => throw _privateConstructorUsedError;
  @JsonKey(name: 'diastole')
  String? get diastole => throw _privateConstructorUsedError;
  @JsonKey(name: 'pulse')
  String? get pulse => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BPReadingCopyWith<BPReading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BPReadingCopyWith<$Res> {
  factory $BPReadingCopyWith(BPReading value, $Res Function(BPReading) then) =
      _$BPReadingCopyWithImpl<$Res, BPReading>;
  @useResult
  $Res call(
      {@JsonKey(name: 'systole') String? systole,
      @JsonKey(name: 'diastole') String? diastole,
      @JsonKey(name: 'pulse') String? pulse,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'date') String? date});
}

/// @nodoc
class _$BPReadingCopyWithImpl<$Res, $Val extends BPReading>
    implements $BPReadingCopyWith<$Res> {
  _$BPReadingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systole = freezed,
    Object? diastole = freezed,
    Object? pulse = freezed,
    Object? note = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      systole: freezed == systole
          ? _value.systole
          : systole // ignore: cast_nullable_to_non_nullable
              as String?,
      diastole: freezed == diastole
          ? _value.diastole
          : diastole // ignore: cast_nullable_to_non_nullable
              as String?,
      pulse: freezed == pulse
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BPReadingImplCopyWith<$Res>
    implements $BPReadingCopyWith<$Res> {
  factory _$$BPReadingImplCopyWith(
          _$BPReadingImpl value, $Res Function(_$BPReadingImpl) then) =
      __$$BPReadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'systole') String? systole,
      @JsonKey(name: 'diastole') String? diastole,
      @JsonKey(name: 'pulse') String? pulse,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'date') String? date});
}

/// @nodoc
class __$$BPReadingImplCopyWithImpl<$Res>
    extends _$BPReadingCopyWithImpl<$Res, _$BPReadingImpl>
    implements _$$BPReadingImplCopyWith<$Res> {
  __$$BPReadingImplCopyWithImpl(
      _$BPReadingImpl _value, $Res Function(_$BPReadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systole = freezed,
    Object? diastole = freezed,
    Object? pulse = freezed,
    Object? note = freezed,
    Object? date = freezed,
  }) {
    return _then(_$BPReadingImpl(
      systole: freezed == systole
          ? _value.systole
          : systole // ignore: cast_nullable_to_non_nullable
              as String?,
      diastole: freezed == diastole
          ? _value.diastole
          : diastole // ignore: cast_nullable_to_non_nullable
              as String?,
      pulse: freezed == pulse
          ? _value.pulse
          : pulse // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BPReadingImpl with DiagnosticableTreeMixin implements _BPReading {
  _$BPReadingImpl(
      {@JsonKey(name: 'systole') this.systole,
      @JsonKey(name: 'diastole') this.diastole,
      @JsonKey(name: 'pulse') this.pulse,
      @JsonKey(name: 'note') this.note,
      @JsonKey(name: 'date') this.date});

  factory _$BPReadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BPReadingImplFromJson(json);

  @override
  @JsonKey(name: 'systole')
  final String? systole;
  @override
  @JsonKey(name: 'diastole')
  final String? diastole;
  @override
  @JsonKey(name: 'pulse')
  final String? pulse;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'date')
  final String? date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BPReading(systole: $systole, diastole: $diastole, pulse: $pulse, note: $note, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BPReading'))
      ..add(DiagnosticsProperty('systole', systole))
      ..add(DiagnosticsProperty('diastole', diastole))
      ..add(DiagnosticsProperty('pulse', pulse))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BPReadingImpl &&
            (identical(other.systole, systole) || other.systole == systole) &&
            (identical(other.diastole, diastole) ||
                other.diastole == diastole) &&
            (identical(other.pulse, pulse) || other.pulse == pulse) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, systole, diastole, pulse, note, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BPReadingImplCopyWith<_$BPReadingImpl> get copyWith =>
      __$$BPReadingImplCopyWithImpl<_$BPReadingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BPReadingImplToJson(
      this,
    );
  }
}

abstract class _BPReading implements BPReading {
  factory _BPReading(
      {@JsonKey(name: 'systole') final String? systole,
      @JsonKey(name: 'diastole') final String? diastole,
      @JsonKey(name: 'pulse') final String? pulse,
      @JsonKey(name: 'note') final String? note,
      @JsonKey(name: 'date') final String? date}) = _$BPReadingImpl;

  factory _BPReading.fromJson(Map<String, dynamic> json) =
      _$BPReadingImpl.fromJson;

  @override
  @JsonKey(name: 'systole')
  String? get systole;
  @override
  @JsonKey(name: 'diastole')
  String? get diastole;
  @override
  @JsonKey(name: 'pulse')
  String? get pulse;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$BPReadingImplCopyWith<_$BPReadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
