part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.checkAndUpdateAuthStatus() =
      _CheckAndUpdateAuthStatus;
  const factory UserEvent.forceToUnauthenticated() = _ForceToUnauthenticated;
  const factory UserEvent.signIn(String email, String password) = _SignIn;
  const factory UserEvent.toggleLoading() = _ToggleLoading;
}
