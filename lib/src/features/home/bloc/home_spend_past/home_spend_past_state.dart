part of 'home_spend_past_cubit.dart';

@freezed
class HomeSpendPastState with _$HomeSpendPastState {
  const factory HomeSpendPastState.initial(List<Spend> spends) = _Initial;
  const factory HomeSpendPastState.loading(List<Spend> spends) = _Loading;
  const factory HomeSpendPastState.data(List<Spend> spends) = _Data;
}
