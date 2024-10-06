part of 'home_spend_sum_cubit.dart';

@freezed
class HomeSpendSumState with _$HomeSpendSumState {
  const factory HomeSpendSumState.loading(SpendSummary summary) = _Loading;
  const factory HomeSpendSumState.data(SpendSummary summary) = _Data;
}
