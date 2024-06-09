// Package imports:
import 'package:async_redux/async_redux.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/bp_reading.dart';

// Project imports:
class CurrentReadingsViewModel extends Vm {
  CurrentReadingsViewModel({
    required this.currentReading,
  }) : super(equals: <Object?>[
          currentReading,
        ]);

  factory CurrentReadingsViewModel.fromStore(Store<AppState> store) {
    return CurrentReadingsViewModel(
      currentReading: store.state.bpReadingsState!.currentReading,
    );
  }

  final BPReading? currentReading;
}

class UserReadingsViewModel extends Vm {
  UserReadingsViewModel({
    required this.userReadings,
  }) : super(equals: <Object?>[userReadings]);

  factory UserReadingsViewModel.fromStore(Store<AppState> store) {
    return UserReadingsViewModel(
      userReadings: store.state.bpReadingsState!.userReadings,
    );
  }

  final List<BPReading?>? userReadings;
}
