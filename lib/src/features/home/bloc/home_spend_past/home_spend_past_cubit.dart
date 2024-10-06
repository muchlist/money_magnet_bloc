import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/features/home/bloc/home_spend_list/home_spend_list_bloc.dart';
import 'package:money_magnet_bloc/src/features/spend/bloc/spend_list/spend_list_bloc.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend_helper.dart';

part 'home_spend_past_state.dart';
part 'home_spend_past_cubit.freezed.dart';

class HomeSpendPastCubit extends Cubit<HomeSpendPastState> {
  final HomeSpendListBloc homeSpendBloc;
  late final StreamSubscription<SpendListState> homeSpendBlocSubscription;
  bool needLoading = true;

  HomeSpendPastCubit(this.homeSpendBloc)
      : super(const HomeSpendPastState.initial([])) {
    homeSpendBlocSubscription = homeSpendBloc.stream.listen((spendState) {
      spendState.when(
        initial: (spends) => emit(const HomeSpendPastState.initial([])),
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
    final pastSpends = spends.notTodaySpendItems();
    emit(HomeSpendPastState.loading(
      pastSpends,
    ));
  }

  void emitDataState(List<Spend> spends) {
    final pastSpends = spends.notTodaySpendItems();
    emit(HomeSpendPastState.data(pastSpends));
  }

  @override
  Future<void> close() {
    homeSpendBlocSubscription.cancel();
    return super.close();
  }
}
