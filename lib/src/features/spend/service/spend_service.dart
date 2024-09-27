import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend.dart';
import 'package:money_magnet_bloc/src/features/spend/repo/spend_dto.dart';
import 'package:money_magnet_bloc/src/features/spend/repo/spend_remote_interface.dart';

class SpendService {
  SpendService(this._remoteRepository);

  final ISpendRemoteRepository _remoteRepository;

  bool _hasNextPage = false;
  int _currentPage = 1;
  bool hasNextPage() => _hasNextPage;
  int getCurrentPage() => _currentPage;

  Future<Result<Spend?>> getDetail(String spendID) async {
    try {
      final spendResponse = await _remoteRepository.get(spendID);
      if (spendResponse.hasError()) {
        return spendResponse.convertError<Spend>();
      }

      final spendData = spendResponse.getData();
      return Result.withData(data: spendData.toEntity());
    } catch (e) {
      return Result.withError(
        errorType: ErrorType.unknownError,
        message: 'error get detail spend service: ${e.toString()}',
      );
    }
  }

  Future<Result<List<Spend>>> findSpend(int page, String pocketID) async {
    try {
      final resp = await _remoteRepository.find(pocketID: pocketID);
      if (resp.hasError()) {
        return resp.convertError<List<Spend>>();
      }

      final data = resp.getData();
      final metadata = resp.getMetaData();
      _currentPage = metadata['current_page'] ?? 0;
      _hasNextPage = (metadata['last_page'] ?? 0) > _currentPage;

      return Result.withData(data: data.map((e) => e.toEntity()).toList());
    } catch (e) {
      return Result.withError(
        errorType: ErrorType.unknownError,
        message: 'error get list spend service: ${e.toString()}',
      );
    }
  }

  Future<Result<List<Spend>>> findNextSpend(String pocketID) async {
    return findSpend(_currentPage + 1, pocketID);
  }

  Future<Result<Spend?>> createSpend(SpendReqDTO payload) async {
    try {
      final resp = await _remoteRepository.create(payload);
      if (resp.hasError()) {
        return resp.convertError<Spend?>();
      }

      final data = resp.getData();
      return Result.withData(data: data.toEntity());
    } catch (e) {
      return Result.withError(
        errorType: ErrorType.unknownError,
        message: 'error create transaction service: ${e.toString()}',
      );
    }
  }

  Future<Result<Spend?>> updateSpend(
      String spendID, SpendReqDTO payload) async {
    try {
      final resp = await _remoteRepository.update(spendID, payload);
      if (resp.hasError()) {
        return resp.convertError<Spend?>();
      }

      final data = resp.getData();
      return Result.withData(data: data.toEntity());
    } catch (e) {
      return Result.withError(
        errorType: ErrorType.unknownError,
        message: 'error update transaction service: ${e.toString()}',
      );
    }
  }
}
