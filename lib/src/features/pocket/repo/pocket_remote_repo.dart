import 'package:dio/dio.dart';
import 'package:money_magnet_bloc/src/common/data/api_error_handler.dart';
import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/config/config.dart';
import 'package:money_magnet_bloc/src/features/pocket/repo/pocket_dto.dart';
import 'package:money_magnet_bloc/src/features/pocket/repo/pocket_list_dto.dart';
import 'package:money_magnet_bloc/src/features/pocket/repo/pocket_remote_interface.dart';

class PocketRemoteRepository implements IPocketRemoteRepository {
  final Dio _dio;

  PocketRemoteRepository(this._dio);

  @override
  Future<Result<PocketDTO>> get(String pocketID) async {
    if (pocketID.isEmpty) {
      return Result.withError(
        errorType: ErrorType.requestError,
        message: 'pocket id is required',
      );
    }

    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/pockets/$pocketID',
    );

    try {
      final response = await _dio.getUri(
        requestUri,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = PocketResponseDTO.fromJson(response.data);
        return Result.withData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Pocket
        final data = PocketResponseDTO.fromJson(response.data);
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
  Future<Result<List<PocketDTO>>> find({
    int page = 1,
    int pageSize = 50,
    String sort = "pocket_name",
  }) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/pockets',
      {"page": "$page", "page_size": "$pageSize", "sort": sort},
    );

    try {
      final response = await _dio.getUri(
        requestUri,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = PocketListResponseDTO.fromJson(response.data);
        return Result.withData(
          data: data.data!,
          meta: {
            'current_page': data.metaData.currentPage,
            'last_page': data.metaData.lastPage,
          },
        );
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Pocket
        final data = PocketListResponseDTO.fromJson(response.data);
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
  Future<Result<PocketDTO>> create(
      String pocketName, String currency, int icon) async {
    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/pockets',
    );

    try {
      final response = await _dio.postUri(
        requestUri,
        data: {"pocket_name": pocketName, "currency": currency, "icon": icon},
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = PocketResponseDTO.fromJson(response.data);
        return Result.withData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Pocket
        final data = PocketResponseDTO.fromJson(response.data);
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
  Future<Result<PocketDTO>> update(
    String pocketID,
    String pocketName,
    String currency,
  ) async {
    if (pocketID.isEmpty) {
      return Result.withError(
        errorType: ErrorType.requestError,
        message: 'pocket id is required',
      );
    }

    final requestUri = Uri.https(
      RemoteConfig.baseURL,
      '/pockets/$pocketID',
    );

    try {
      final response = await _dio.postUri(requestUri,
          data: {"pocket_name": pocketName, "currency": currency});

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = PocketResponseDTO.fromJson(response.data);
        return Result.withData(
          data: data.data!,
        );
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Pocket
        final data = PocketResponseDTO.fromJson(response.data);
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
}
