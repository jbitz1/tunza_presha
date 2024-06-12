import 'package:async_redux/async_redux.dart';
import 'package:tunza_presha/state/app_state.dart';

class UpdateAuthStateAction extends ReduxAction<AppState> {
  final bool isSignedIn;

  UpdateAuthStateAction({
    this.isSignedIn = false,
  });
  @override
  AppState reduce() {
    return state.copyWith.authState!.call(isSignedIn: isSignedIn);
  }
}
