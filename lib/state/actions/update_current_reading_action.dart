import 'package:async_redux/async_redux.dart';
import 'package:tunza_presha/state/app_state.dart';
import 'package:tunza_presha/state/bp_reading.dart';

class UpdateCurrentReadingAction extends ReduxAction<AppState> {
  final String? systole;
  final String? diastole;
  final String? pulse;
  final String? note;

  UpdateCurrentReadingAction(
      {this.systole, this.diastole, this.pulse, this.note});
  @override
  AppState reduce() {
    return state.copyWith.bpReadingsState!.currentReading!.call(
      systole: systole ?? state.bpReadingsState!.currentReading!.systole,
      diastole: diastole ?? state.bpReadingsState!.currentReading!.diastole,
      pulse: pulse ?? state.bpReadingsState!.currentReading!.pulse,
      note: note ?? state.bpReadingsState!.currentReading!.note,
      date: DateTime.now().toIso8601String(),
    );
  }
}

class SaveCurrentReadingAction extends ReduxAction<AppState> {
  SaveCurrentReadingAction();
  @override
  AppState reduce() {
    // Take the current reading
    final BPReading? currentReading = state.bpReadingsState!.currentReading;

// Get the saved readings from state
    final List<BPReading?>? userReadingsFromState =
        state.bpReadingsState?.userReadings;

    // Add the new reading to the user readings
    userReadingsFromState?.add(currentReading);

    // Update state with the updated readings
    return state.copyWith.bpReadingsState!.call(
      userReadings:
          userReadingsFromState ?? state.bpReadingsState!.userReadings,
    );
  }

  @override
  void after() {
    dispatch(ResetCurrentReadingAction());
    super.after();
  }
}

class ResetCurrentReadingAction extends ReduxAction<AppState> {
  ResetCurrentReadingAction();
  @override
  AppState reduce() {
    return state.copyWith.bpReadingsState!
        .call(currentReading: BPReading.initial());
  }
}
