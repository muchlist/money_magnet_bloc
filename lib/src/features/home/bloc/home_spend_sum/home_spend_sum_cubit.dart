import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/common/utils/strings.dart';
import 'package:money_magnet_bloc/src/features/home/bloc/export.dart';
import 'package:money_magnet_bloc/src/features/home/entity/spend_summary.dart';
import 'package:money_magnet_bloc/src/features/spend/bloc/spend_list/spend_list_bloc.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend.dart';
import 'package:intl/intl.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend_helper.dart';

part 'home_spend_sum_state.dart';
part 'home_spend_sum_cubit.freezed.dart';

class HomeSpendSumCubit extends Cubit<HomeSpendSumState> {
  final HomeSpendListBloc homeSpendBloc;
  late final StreamSubscription<SpendListState> homeSpendBlocSubscription;

  HomeSpendSumCubit(this.homeSpendBloc)
      : super(const HomeSpendSumState.loading(SpendSummary(
          mode: "--",
          totalIncome: "",
          totalOutcome: "Loading ...",
          totalNeed: "--",
          totalLike: "--",
          totalWant: "--",
          totalUncategorized: "--",
        ))) {
    homeSpendBlocSubscription = homeSpendBloc.stream.listen((spendState) {
      spendState.maybeWhen(
        success: (spends, _) {
          final summary = _generateSpendSummary(spends);
          emit(HomeSpendSumState.data(summary));
        },
        orElse: () {
          // skip
        },
      );
    });
  }

  SpendSummary _generateSpendSummary(List<Spend> spends) {
    final todaySpends = spends.todaySpendItems();

    double totalIncome = 0;
    double totalOutcome = 0;
    double totalNeed = 0;
    double totalLike = 0;
    double totalWant = 0;
    double totalUncategorized = 0;

    for (var spend in todaySpends) {
      if (spend.isIncome) {
        totalIncome += spend.price;
      } else {
        totalOutcome += spend.price;

        switch (spend.type) {
          case 1:
            totalNeed += spend.price;
            break;
          case 3:
            totalLike += spend.price;
            break;
          case 4:
            totalWant += spend.price;
            break;
          case 0:
            totalUncategorized += spend.price;
            break;
        }
      }
    }

    return SpendSummary(
      mode: "today",
      totalIncome: totalIncome.toCurrencyString(),
      totalOutcome: totalOutcome.toCurrencyString(),
      totalNeed: formatWithPercentage(totalNeed, totalOutcome),
      totalLike: formatWithPercentage(totalLike, totalOutcome),
      totalWant: formatWithPercentage(totalWant, totalOutcome),
      totalUncategorized:
          formatWithPercentage(totalUncategorized, totalOutcome),
    );
  }

  @override
  Future<void> close() {
    homeSpendBlocSubscription.cancel();
    return super.close();
  }
}

// Helper function to format with percentage and thousand separators
String formatWithPercentage(double amount, double total) {
  final formatter =
      NumberFormat("#,##0", "id_ID"); // Format with thousand separators

  if (total == 0) return '${formatter.format(amount)} (0%)';

  double percentage = (amount / total) * 100;
  return '${formatter.format(amount)} (${percentage.toStringAsFixed(0)}%)';
}
