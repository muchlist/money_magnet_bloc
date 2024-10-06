import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/common/data/metadata.dart';
import 'package:money_magnet_bloc/src/features/category/entity/category.dart';

part 'category_list_dto.freezed.dart';
part 'category_list_dto.g.dart';

@freezed
class CategoryListResponseDTO with _$CategoryListResponseDTO {
  const CategoryListResponseDTO._();
  const factory CategoryListResponseDTO({
    @JsonKey(name: 'data', defaultValue: []) required List<CategoryDTO>? data,
    @JsonKey(name: 'metadata') required MetadataDTO metaData,
    @JsonKey(name: 'error') required String? error,
  }) = _CategoryListResponseDTO;

  factory CategoryListResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryListResponseDTOFromJson(json);
}

@freezed
class CategoryDTO with _$CategoryDTO {
  const CategoryDTO._();
  const factory CategoryDTO({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'pocket_id') required String pocketID,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'category_icon') required int categoryIcon,
    @JsonKey(name: 'is_income') required bool isIncome,
  }) = _CategoryDTO;

  factory CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryDTOFromJson(json);

  Category toEntity() {
    return Category(
      id: id,
      pocketID: pocketID,
      categoryName: categoryName,
      categoryIcon: categoryIcon,
      isIncome: isIncome,
    );
  }
}
