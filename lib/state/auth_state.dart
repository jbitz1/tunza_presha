// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class AuthState with _$AuthState {
  factory AuthState({
    @JsonKey(name: 'isSignedIn') bool? isSignedIn,
    // @JsonKey(name: 'username') bool? username,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(isSignedIn: false);

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}




/*
COPY THIS INTO A DARTPAD TO UNDERSTAND https://dartpad.dev/
class BPState {
  final String systole;
  final String diastole;
  final String pulse;

  BPState({required this.systole, required this.diastole, required this.pulse});

//    BPState.toJson() {
//     return <String, dynamic> {"systole": "120", "diastole": "80", "pulse": "40"};
//   }

  ///
  /// {
  ///   "systole": true,
  ///   "diastole": "abiudrn"
  /// }
  ///
  ///
  factory BPState.fromJson(Map<String, dynamic> json) {
    return BPState(
        systole: json["systole"],
        diastole: json["diastole"],
        pulse: json['pulse']);
  }

  factory BPState.initial() {
    return BPState(diastole: "0", systole: "0", pulse: "UNKNOWN");
  }
}

void main() {
  final BPState state = BPState(diastole: "120", systole: "100", pulse: "80");
  final newState =
      BPState.fromJson({"systole": "130", "diastole": "140", "pulse": "50"});

  print(state.pulse);
  print(newState.pulse);
  print(BPState.initial().diastole);
}

*/