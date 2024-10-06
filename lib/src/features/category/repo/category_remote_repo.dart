import 'package:dio/dio.dart';
import 'package:money_magnet_bloc/src/common/data/api_error_handler.dart';
import 'package:money_magnet_bloc/src/common/data/export.dart';
import 'package:money_magnet_bloc/src/config/config.dart';
import 'package:money_magnet_bloc/src/features/category/repo/category_list_dto.dart';

class CategoryRemoteRepository {
  final Dio _dio;

  CategoryRemoteRepository(this._dio);

  Future<Result<List<CategoryDTO>>> findByPocketID(
    String pocketID, {
    int page = 1,
    int pageSize = 500,
    String sort = "category_name",
  }) async {
    final requestUri = Uri.https(
      EnvConfig.baseURL,
      '/categories/from-pocket/$pocketID',
      {"page": "$page", "page_size": "$pageSize", "sort": sort},
    );

    try {
      final response = await _dio.getUri(
        requestUri,
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        // Success
        final data = CategoryListResponseDTO.fromJson(response.data);
        return Result.withData(data: data.data!);
      } else if (response.statusCode! == 400 || response.statusCode! == 422) {
        // Bad request from Category
        final data = CategoryListResponseDTO.fromJson(response.data);
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
