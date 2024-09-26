import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/features/pocket/entity/pocket.dart';
import 'package:money_magnet_bloc/src/features/pocket/repo/pocket_remote_interface.dart';

class PocketService {
  PocketService(this._remoteRepository);

  final IPocketRemoteRepository _remoteRepository;

  bool _hasNextPage = false;
  int _currentPage = 1;
  bool hasNextPage() => _hasNextPage;
  int getCurrentPage() => _currentPage;

  Future<Result<Pocket>> getDetail(String pocketID) async {
    try {
      final pocketResponse = await _remoteRepository.get(pocketID);
      if (pocketResponse.hasError()) {
        return pocketResponse.convertError<Pocket>();
      }

      final pocketData = pocketResponse.getData();
      return Result.withData(data: pocketData.toDomain());
    } catch (e) {
      return Result.withError(
        errorType: ErrorType.unknownError,
        message: 'error get detail pocket service: ${e.toString()}',
      );
    }
  }

  Future<Result<List<Pocket>>> findPocket(int page) async {
    try {
      final resp = await _remoteRepository.find();
      if (resp.hasError()) {
        return resp.convertError<List<Pocket>>();
      }

      final pocketsData = resp.getData();
      final pocketsMetaData = resp.getMetaData();

      _currentPage = pocketsMetaData['current_page'] ?? 0;
      _hasNextPage = (pocketsMetaData['last_page'] ?? 0) > _currentPage;

      return Result.withData(
          data: pocketsData.map((e) => e.toDomain()).toList());
    } catch (e) {
      return Result.withError(
        errorType: ErrorType.unknownError,
        message: 'error get list pockets service: ${e.toString()}',
      );
    }
  }

  Future<Result<List<Pocket>>> findNextPocket() async {
    return findPocket(_currentPage + 1);
  }

  Future<Result<Pocket?>> createPocket(
      String pocketName, String currency, int icon) async {
    try {
      final pocketResponse =
          await _remoteRepository.create(pocketName, currency, icon);

      if (pocketResponse.hasError()) {
        return pocketResponse.convertError<Pocket?>();
      }

      final pocketCreated = pocketResponse.getData();
      return Result.withData(data: pocketCreated.toDomain());
    } catch (e) {
      return Result.withError(
        errorType: ErrorType.unknownError,
        message: 'error create pocket service: ${e.toString()}',
      );
    }
  }

  Future<Result<Pocket?>> updatePocket(
      String pocketID, String pocketName, String currency) async {
    try {
      final pocketResponse =
          await _remoteRepository.update(pocketID, pocketName, currency);

      if (pocketResponse.hasError()) {
        return pocketResponse.convertError<Pocket?>();
      }
      final pocketUpdated = pocketResponse.getData();
      return Result.withData(data: pocketUpdated.toDomain());
    } catch (e) {
      return Result.withError(
        errorType: ErrorType.unknownError,
        message: 'error create pocket service: ${e.toString()}',
      );
    }
  }
}
