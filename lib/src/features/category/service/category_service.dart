import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/features/category/entity/category.dart';
import 'package:money_magnet_bloc/src/features/category/repo/category_remote_repo.dart';

class CategoryService {
  CategoryService(
    this._remoteRepository,
  );

  final CategoryRemoteRepository _remoteRepository;

  Future<Result<List<Category>>> findCategory(String pocketID) async {
    try {
      final resp = await _remoteRepository.findByPocketID(pocketID);
      if (resp.hasError()) {
        return resp.convertError<List<Category>>();
      }

      final pocketsData = resp.getData();

      return Result.withData(
          data: pocketsData.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Result.withError(
        errorType: ErrorType.unknownError,
        message: 'error get list category service: ${e.toString()}',
      );
    }
  }
}
