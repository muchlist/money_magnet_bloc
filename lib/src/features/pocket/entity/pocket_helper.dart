import 'package:money_magnet_bloc/src/common/utils/strings.dart';
import 'package:money_magnet_bloc/src/features/pocket/entity/pocket.dart';

extension PocketListHelper on List<Pocket> {
  String getBalanceByPocketID(String pocketID, {bool viewMode = true}) {
    var pocket = firstWhere((e) => e.id == pocketID, orElse: Pocket.empty);
    if (viewMode) {
      return pocket.balance.toCurrencyString();
    }
    return pocket.balance.toString();
  }
}
