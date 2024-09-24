part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAndUpdateAuthStatus() =
      _CheckAndUpdateAuthStatus;
  const factory AuthEvent.forceToUnauthenticated() = _ForceToUnauthenticated;
  const factory AuthEvent.signIn(String email, String password) = _SignIn;
  const factory AuthEvent.toggleLoading() = _ToggleLoading;
}
