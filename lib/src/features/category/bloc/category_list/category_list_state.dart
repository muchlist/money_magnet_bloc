part of 'category_list_cubit.dart';

@freezed
class CategoryListState with _$CategoryListState {
  const factory CategoryListState.loading(List<Category> categories) = _Loading;
  const factory CategoryListState.data(List<Category> categories) = _Data;
  const factory CategoryListState.failure(
      List<Category> categories, String error) = _Failure;
}
