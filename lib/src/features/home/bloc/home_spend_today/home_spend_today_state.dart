part of 'home_spend_today_cubit.dart';

@freezed
class HomeSpendTodayState with _$HomeSpendTodayState {
  const factory HomeSpendTodayState.initial(List<Spend> spends) = _Initial;
  const factory HomeSpendTodayState.loading(
      List<Spend> spends, SpendSummary summary) = _Loading;
  const factory HomeSpendTodayState.data(
      List<Spend> spends, SpendSummary summary) = _Data;
}
