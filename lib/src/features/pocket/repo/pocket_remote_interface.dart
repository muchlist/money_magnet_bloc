import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/features/pocket/repo/pocket_dto.dart';

abstract class IPocketRemoteRepository {
  Future<Result<PocketDTO>> get(String pocketID);

  Future<Result<List<PocketDTO>>> find({
    int page = 1,
    int pageSize = 50,
    String sort = "pocket_name",
  });

  Future<Result<PocketDTO>> create(
    String pocketName,
    String currency,
    int icon,
  );

  Future<Result<PocketDTO>> update(
    String pocketID,
    String pocketName,
    String currency,
  );
}
