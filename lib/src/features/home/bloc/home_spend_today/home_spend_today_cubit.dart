import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/features/home/bloc/home_spend_list/home_spend_list_bloc.dart';
import 'package:money_magnet_bloc/src/features/home/entity/spend_summary.dart';
import 'package:money_magnet_bloc/src/features/spend/bloc/spend_list/spend_list_bloc.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend_helper.dart';

part 'home_spend_today_state.dart';
part 'home_spend_today_cubit.freezed.dart';

class HomeSpendTodayCubit extends Cubit<HomeSpendTodayState> {
  final HomeSpendListBloc homeSpendBloc;
  late final StreamSubscription<SpendListState> homeSpendBlocSubscription;
  bool needLoading = true;

  HomeSpendTodayCubit(this.homeSpendBloc)
      : super(const HomeSpendTodayState.initial([])) {
    homeSpendBlocSubscription = homeSpendBloc.stream.listen((spendState) {
      spendState.when(
        initial: (spends) => emit(const HomeSpendTodayState.initial([])),
        loading: (spends) {
          if (needLoading) {
            emitLoadingState(spends);
          }
        },
        success: (spends, _) {
          needLoading = false;
          emitDataState(spends);
        },
        failure: (spends, __) {
          emitDataState(spends);
        },
      );
    });
  }

  void emitLoadingState(List<Spend> spends) {
    final summary = _generateSpendSummary(spends);
    final todaySpends = spends.todaySpendItems();
    emit(HomeSpendTodayState.loading(todaySpends, summary));
  }

  void emitDataState(List<Spend> spends) {
    final summary = _generateSpendSummary(spends);
    final todaySpends = spends.todaySpendItems();
    emit(HomeSpendTodayState.data(todaySpends, summary));
  }

  SpendSummary _generateSpendSummary(List<Spend> spends) {
    final todaySpends = spends.todaySpendItems();
    return SpendSummary(
      mode: "today",
      totalIncome:
          todaySpends.where((sp) => sp.isIncome).toList().totalSpendMoney(),
      totalOutcome:
          todaySpends.where((sp) => !sp.isIncome).toList().totalSpendMoney(),
      totalNeed: todaySpends
          .where((sp) => !sp.isIncome && sp.type == 1)
          .toList()
          .totalSpendMoney(),
      totalLike: todaySpends
          .where((sp) => !sp.isIncome && sp.type == 3)
          .toList()
          .totalSpendMoney(),
      totalWant: todaySpends
          .where((sp) => !sp.isIncome && sp.type == 4)
          .toList()
          .totalSpendMoney(),
    );
  }

  @override
  Future<void> close() {
    homeSpendBlocSubscription.cancel();
    return super.close();
  }
}
