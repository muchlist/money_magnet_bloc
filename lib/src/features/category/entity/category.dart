import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const Category._();
  const factory Category({
    required String id,
    required String pocketID,
    required String categoryName,
    required int categoryIcon,
    required bool isIncome,
  }) = _Category;

  // Empty constructor with default values
  factory Category.empty() => const Category(
        id: "",
        pocketID: "",
        categoryName: "",
        categoryIcon: 0,
        isIncome: false,
      );
}
