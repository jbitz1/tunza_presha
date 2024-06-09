// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:tunza_presha/state/auth_state.dart';
import 'package:tunza_presha/state/bp_readings_state.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class AppState with _$AppState {
  const factory AppState({
    AuthState? authState,
    BPReadingsState? bpReadingsState,
    // UserState? userState,

    @JsonKey(includeFromJson: false) Wait? wait,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
        authState: AuthState.initial(),
        bpReadingsState: BPReadingsState.initial(),
        // bottomNavState: BottomNavState.initial(),
        // userState: UserState.initial(),

        wait: Wait(),
      );
}
