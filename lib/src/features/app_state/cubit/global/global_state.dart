part of 'global_cubit.dart';

@freezed
class GlobalState with _$GlobalState {
  const factory GlobalState.initial() = _Initial;
  const factory GlobalState.forceLogout() = _ForceLogout;
  const factory GlobalState.data(AppState appState) = _Data;
}

@freezed
class AppState with _$AppState {
  const AppState._();
  const factory AppState({
    required bool refreshHome, // home need refresh
    required bool refreshBalance, // balance need refetch
  }) = _AppState;

  factory AppState.empty() => const AppState(
        refreshHome: false,
        refreshBalance: false,
      );
}
