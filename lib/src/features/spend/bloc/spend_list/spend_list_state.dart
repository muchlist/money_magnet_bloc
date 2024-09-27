part of 'spend_list_bloc.dart';

@freezed
class SpendListState with _$SpendListState {
  const SpendListState._();

  const factory SpendListState.initial(List<Spend> spends) = _Initial;

  const factory SpendListState.loading(List<Spend> spends) = _Loading;

  const factory SpendListState.success(
    List<Spend> spends, {
    required bool isNextPageAvailable,
  }) = _Success;

  const factory SpendListState.failure(List<Spend> spends, String failure) =
      _Failure;
}
