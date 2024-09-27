import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/features/spend/repo/spend_dto.dart';

abstract class ISpendRemoteRepository {
  Future<Result<SpendDTO>> get(String pocketID);

  Future<Result<List<SpendDTO>>> find({
    int page = 1,
    int pageSize = 500,
    String sort = "-date",
    String pocketID = "",
    String categoryID = "",
    int? isIncome,
    List<int> types = const <int>[],
    String? dateStart,
    String? dateEnd,
  });

  Future<Result<SpendDTO>> create(SpendReqDTO payload);

  Future<Result<SpendDTO>> update(String spendID, SpendReqDTO payload);

  Future<Result<String>> delete(String spendID);
}
