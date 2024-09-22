part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.unauthenticated() = _Unauthenticated;
  const factory UserState.authenticated() = _Authenticated;
  const factory UserState.failure(String failure) = _Failure;
}
