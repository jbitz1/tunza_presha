// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bp_readings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BPReadingsState _$BPReadingsStateFromJson(Map<String, dynamic> json) {
  return _BPReadingsState.fromJson(json);
}

/// @nodoc
mixin _$BPReadingsState {
  @JsonKey(name: 'currentReading')
  BPReading? get currentReading => throw _privateConstructorUsedError;
  @JsonKey(name: 'userReadings')
  List<BPReading?>? get userReadings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BPReadingsStateCopyWith<BPReadingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BPReadingsStateCopyWith<$Res> {
  factory $BPReadingsStateCopyWith(
          BPReadingsState value, $Res Function(BPReadingsState) then) =
      _$BPReadingsStateCopyWithImpl<$Res, BPReadingsState>;
  @useResult
  $Res call(
      {@JsonKey(name: 'currentReading') BPReading? currentReading,
      @JsonKey(name: 'userReadings') List<BPReading?>? userReadings});

  $BPReadingCopyWith<$Res>? get currentReading;
}

/// @nodoc
class _$BPReadingsStateCopyWithImpl<$Res, $Val extends BPReadingsState>
    implements $BPReadingsStateCopyWith<$Res> {
  _$BPReadingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentReading = freezed,
    Object? userReadings = freezed,
  }) {
    return _then(_value.copyWith(
      currentReading: freezed == currentReading
          ? _value.currentReading
          : currentReading // ignore: cast_nullable_to_non_nullable
              as BPReading?,
      userReadings: freezed == userReadings
          ? _value.userReadings
          : userReadings // ignore: cast_nullable_to_non_nullable
              as List<BPReading?>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BPReadingCopyWith<$Res>? get currentReading {
    if (_value.currentReading == null) {
      return null;
    }

    return $BPReadingCopyWith<$Res>(_value.currentReading!, (value) {
      return _then(_value.copyWith(currentReading: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BPReadingsStateImplCopyWith<$Res>
    implements $BPReadingsStateCopyWith<$Res> {
  factory _$$BPReadingsStateImplCopyWith(_$BPReadingsStateImpl value,
          $Res Function(_$BPReadingsStateImpl) then) =
      __$$BPReadingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'currentReading') BPReading? currentReading,
      @JsonKey(name: 'userReadings') List<BPReading?>? userReadings});

  @override
  $BPReadingCopyWith<$Res>? get currentReading;
}

/// @nodoc
class __$$BPReadingsStateImplCopyWithImpl<$Res>
    extends _$BPReadingsStateCopyWithImpl<$Res, _$BPReadingsStateImpl>
    implements _$$BPReadingsStateImplCopyWith<$Res> {
  __$$BPReadingsStateImplCopyWithImpl(
      _$BPReadingsStateImpl _value, $Res Function(_$BPReadingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentReading = freezed,
    Object? userReadings = freezed,
  }) {
    return _then(_$BPReadingsStateImpl(
      currentReading: freezed == currentReading
          ? _value.currentReading
          : currentReading // ignore: cast_nullable_to_non_nullable
              as BPReading?,
      userReadings: freezed == userReadings
          ? _value.userReadings
          : userReadings // ignore: cast_nullable_to_non_nullable
              as List<BPReading?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BPReadingsStateImpl
    with DiagnosticableTreeMixin
    implements _BPReadingsState {
  _$BPReadingsStateImpl(
      {@JsonKey(name: 'currentReading') this.currentReading,
      @JsonKey(name: 'userReadings') this.userReadings});

  factory _$BPReadingsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BPReadingsStateImplFromJson(json);

  @override
  @JsonKey(name: 'currentReading')
  final BPReading? currentReading;
  @override
  @JsonKey(name: 'userReadings')
  final List<BPReading?>? userReadings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BPReadingsState(currentReading: $currentReading, userReadings: $userReadings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BPReadingsState'))
      ..add(DiagnosticsProperty('currentReading', currentReading))
      ..add(DiagnosticsProperty('userReadings', userReadings));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BPReadingsStateImpl &&
            (identical(other.currentReading, currentReading) ||
                other.currentReading == currentReading) &&
            const DeepCollectionEquality()
                .equals(other.userReadings, userReadings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentReading,
      const DeepCollectionEquality().hash(userReadings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BPReadingsStateImplCopyWith<_$BPReadingsStateImpl> get copyWith =>
      __$$BPReadingsStateImplCopyWithImpl<_$BPReadingsStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BPReadingsStateImplToJson(
      this,
    );
  }
}

abstract class _BPReadingsState implements BPReadingsState {
  factory _BPReadingsState(
      {@JsonKey(name: 'currentReading') final BPReading? currentReading,
      @JsonKey(name: 'userReadings')
      final List<BPReading?>? userReadings}) = _$BPReadingsStateImpl;

  factory _BPReadingsState.fromJson(Map<String, dynamic> json) =
      _$BPReadingsStateImpl.fromJson;

  @override
  @JsonKey(name: 'currentReading')
  BPReading? get currentReading;
  @override
  @JsonKey(name: 'userReadings')
  List<BPReading?>? get userReadings;
  @override
  @JsonKey(ignore: true)
  _$$BPReadingsStateImplCopyWith<_$BPReadingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
