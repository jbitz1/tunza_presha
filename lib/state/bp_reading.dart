import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tunza_presha/constants/string_constants.dart';

part 'bp_reading.freezed.dart';
part 'bp_reading.g.dart';

@freezed
class BPReading with _$BPReading {
  factory BPReading({
    @JsonKey(name: 'systole') String? systole,
    @JsonKey(name: 'diastole') String? diastole,
    @JsonKey(name: 'pulse') String? pulse,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'date') String? date,
  }) = _BPReading;

  factory BPReading.initial() => BPReading(
        systole: unknown,
        diastole: unknown,
        pulse: unknown,
        date: unknown,
        note: unknown,
      );

  factory BPReading.fromJson(Map<String, dynamic> json) =>
      _$BPReadingFromJson(json);
}
