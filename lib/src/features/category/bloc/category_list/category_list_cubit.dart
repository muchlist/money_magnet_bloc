import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/features/category/entity/category.dart';
import 'package:money_magnet_bloc/src/features/category/service/category_service.dart';

part 'category_list_state.dart';
part 'category_list_cubit.freezed.dart';

class CategoryListCubit extends Cubit<CategoryListState> {
  CategoryListCubit(this._service) : super(const CategoryListState.loading([]));

  final CategoryService _service;

  Future<void> getCategoryByPocketID(String pocketID) async {
    emit(CategoryListState.loading(state.categories));

    final result = await _service.findCategory(pocketID);
    if (result.hasError()) {
      emit(CategoryListState.failure(state.categories, result.message));
      return;
    }

    final categories = result.getData();

    emit(CategoryListState.data(
      categories,
    ));
  }
}
