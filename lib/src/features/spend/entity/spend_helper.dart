import 'package:money_magnet_bloc/src/common/utils/date.dart';
import 'package:money_magnet_bloc/src/common/utils/strings.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend.dart';

extension SpendListHelper on List<Spend> {
  List<Spend> todaySpendItems() {
    return where((element) => element.date.isToday()).toList();
  }

  List<Spend> notTodaySpendItems() {
    return where((element) => !element.date.isToday()).toList();
  }

  String todaySpendMoney() {
    int total = todaySpendItems().fold(0, (sum, item) => sum + item.price);
    return total.toCurrencyString();
  }

  String totalSpendMoney() {
    int total = fold(0, (sum, item) => sum + item.price);
    return total.toCurrencyString();
  }
}
