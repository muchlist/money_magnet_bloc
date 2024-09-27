import 'package:dio/dio.dart';
import 'package:money_magnet_bloc/src/common/data/api_error_handler.dart';
import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/config/config.dart';
import 'package:money_magnet_bloc/src/features/spend/repo/spend_dto.dart';
import 'package:money_magnet_bloc/src/features/spend/repo/spend_list_dto.dart';
import 'package:money_magnet_bloc/src/features/spend/repo/spend_remote_interface.dart';

class SpendRemoteRepository implements ISpendRemoteRepository {
  final Dio _dio;

  SpendRemoteRepository(this._dio);

  @override
  Future<Result<SpendDTO>> get(String spendID) async {
    if (spendID.isEmpty) {
      return Result.withError(
        errorType: ErrorType.requestError,
        message: 'id is required',
      );
    }

    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/spends/{$spendID}',
    );

    try {
      final response = await _dio.getUri(
        requestUri,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = SpendResponseDTO.fromJson(response.data);
        return Result.withData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Spend
        final data = SpendResponseDTO.fromJson(response.data);
        return Result.withError(
          errorType: ErrorType.requestError,
          message: data.error ?? '',
        );
      } else {
        // Server error
        return Result.withError(
          message: "service response code ${response.statusCode}",
          errorType: ErrorType.apiError,
        );
      }
    } catch (error) {
      return handleError(error);
    }
  }

  @override
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
  }) async {
    if (pocketID.isEmpty) {
      return Result.withError(
        errorType: ErrorType.requestError,
        message: 'pocket_id is required',
      );
    }

    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/spends/from-pocket/$pocketID',
      {"page": "$page", "page_size": "$pageSize", "sort": sort},
    );

    try {
      final response = await _dio.getUri(
        requestUri,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = SpendListResponseDTO.fromJson(response.data);
        return Result.withData(
          data: data.data!,
          meta: {
            'current_page': data.metaData.currentPage,
            'last_page': data.metaData.lastPage,
          },
        );
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Spend
        final data = SpendListResponseDTO.fromJson(response.data);
        return Result.withError(
          errorType: ErrorType.requestError,
          message: data.error ?? '',
        );
      } else {
        // Server error
        return Result.withError(
          message: "service response code ${response.statusCode}",
          errorType: ErrorType.apiError,
        );
      }
    } catch (error) {
      return handleError(error);
    }
  }

  @override
  Future<Result<SpendDTO>> create(SpendReqDTO payload) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/spends',
    );

    try {
      final response = await _dio.postUri(
        requestUri,
        data: payload.toJson(),
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = SpendResponseDTO.fromJson(response.data);
        return Result.withData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Spend
        final data = SpendResponseDTO.fromJson(response.data);
        return Result.withError(
          errorType: ErrorType.requestError,
          message: data.error ?? '',
        );
      } else {
        // Server error
        return Result.withError(
          message: "service response code ${response.statusCode}",
          errorType: ErrorType.apiError,
        );
      }
    } catch (error) {
      return handleError(error);
    }
  }

  @override
  Future<Result<SpendDTO>> update(String spendID, SpendReqDTO payload) async {
    if (spendID.isEmpty) {
      return Result.withError(
        errorType: ErrorType.requestError,
        message: 'id is required',
      );
    }

    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/spends/$spendID',
    );

    try {
      final response = await _dio.postUri(requestUri, data: payload.toJson());

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = SpendResponseDTO.fromJson(response.data);
        return Result.withData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Spend
        final data = SpendResponseDTO.fromJson(response.data);
        return Result.withError(
          errorType: ErrorType.requestError,
          message: data.error ?? '',
        );
      } else {
        // Server error
        return Result.withError(
          message: "service response code ${response.statusCode}",
          errorType: ErrorType.apiError,
        );
      }
    } catch (error) {
      return handleError(error);
    }
  }

  @override
  Future<Result<String>> delete(String spendID) {
    throw UnimplementedError();
  }
}
