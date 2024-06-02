// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AuthState? get authState => throw _privateConstructorUsedError;
  BPReadingsState? get bpReadingsState =>
      throw _privateConstructorUsedError; // UserState? userState,
  @JsonKey(includeFromJson: false)
  Wait? get wait => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {AuthState? authState,
      BPReadingsState? bpReadingsState,
      @JsonKey(includeFromJson: false) Wait? wait});

  $AuthStateCopyWith<$Res>? get authState;
  $BPReadingsStateCopyWith<$Res>? get bpReadingsState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = freezed,
    Object? bpReadingsState = freezed,
    Object? wait = freezed,
  }) {
    return _then(_value.copyWith(
      authState: freezed == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState?,
      bpReadingsState: freezed == bpReadingsState
          ? _value.bpReadingsState
          : bpReadingsState // ignore: cast_nullable_to_non_nullable
              as BPReadingsState?,
      wait: freezed == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<$Res>? get authState {
    if (_value.authState == null) {
      return null;
    }

    return $AuthStateCopyWith<$Res>(_value.authState!, (value) {
      return _then(_value.copyWith(authState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BPReadingsStateCopyWith<$Res>? get bpReadingsState {
    if (_value.bpReadingsState == null) {
      return null;
    }

    return $BPReadingsStateCopyWith<$Res>(_value.bpReadingsState!, (value) {
      return _then(_value.copyWith(bpReadingsState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthState? authState,
      BPReadingsState? bpReadingsState,
      @JsonKey(includeFromJson: false) Wait? wait});

  @override
  $AuthStateCopyWith<$Res>? get authState;
  @override
  $BPReadingsStateCopyWith<$Res>? get bpReadingsState;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authState = freezed,
    Object? bpReadingsState = freezed,
    Object? wait = freezed,
  }) {
    return _then(_$AppStateImpl(
      authState: freezed == authState
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState?,
      bpReadingsState: freezed == bpReadingsState
          ? _value.bpReadingsState
          : bpReadingsState // ignore: cast_nullable_to_non_nullable
              as BPReadingsState?,
      wait: freezed == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as Wait?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl with DiagnosticableTreeMixin implements _AppState {
  const _$AppStateImpl(
      {this.authState,
      this.bpReadingsState,
      @JsonKey(includeFromJson: false) this.wait});

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

  @override
  final AuthState? authState;
  @override
  final BPReadingsState? bpReadingsState;
// UserState? userState,
  @override
  @JsonKey(includeFromJson: false)
  final Wait? wait;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(authState: $authState, bpReadingsState: $bpReadingsState, wait: $wait)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState'))
      ..add(DiagnosticsProperty('authState', authState))
      ..add(DiagnosticsProperty('bpReadingsState', bpReadingsState))
      ..add(DiagnosticsProperty('wait', wait));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.authState, authState) ||
                other.authState == authState) &&
            (identical(other.bpReadingsState, bpReadingsState) ||
                other.bpReadingsState == bpReadingsState) &&
            (identical(other.wait, wait) || other.wait == wait));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, authState, bpReadingsState, wait);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final AuthState? authState,
      final BPReadingsState? bpReadingsState,
      @JsonKey(includeFromJson: false) final Wait? wait}) = _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

  @override
  AuthState? get authState;
  @override
  BPReadingsState? get bpReadingsState;
  @override // UserState? userState,
  @JsonKey(includeFromJson: false)
  Wait? get wait;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
