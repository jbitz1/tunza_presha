// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tunza_presha/state/bp_reading.dart';

part 'bp_readings_state.g.dart';
part 'bp_readings_state.freezed.dart';

@freezed
class BPReadingsState with _$BPReadingsState {
  factory BPReadingsState({
    @JsonKey(name: 'currentReading') BPReading? currentReading,
    @JsonKey(name: 'userReadings') List<BPReading?>? userReadings,
  }) = _BPReadingsState;

  factory BPReadingsState.initial() => BPReadingsState(
        currentReading: BPReading.initial(),
        userReadings: <BPReading>[],
      );

  factory BPReadingsState.fromJson(Map<String, dynamic> json) =>
      _$BPReadingsStateFromJson(json);
}
