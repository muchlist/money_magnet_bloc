import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/features/pocket/entity/pocket.dart';
import 'package:money_magnet_bloc/src/features/pocket/service/pocket_service.dart';

part 'pocket_detail_state.dart';
part 'pocket_detail_cubit.freezed.dart';

class PocketDetailCubit extends Cubit<PocketDetailState> {
  PocketDetailCubit(this._service)
      : super(PocketDetailState.initial(Pocket.empty()));

  final PocketService _service;

  void loadDetailPocket(String id, {bool skipIfLoaded = false}) async {
    // skip if loaded
    if (skipIfLoaded && state is _Data) {
      return;
    }

    emit(PocketDetailState.loading(state.detail));
    final result = await _service.getDetail(id);
    if (result.hasError()) {
      emit(PocketDetailState.error(state.detail, result.message));
      return;
    }

    final data = result.getData();
    emit(PocketDetailState.data(data));
  }

  void loadDetailMainPocket({bool skipIfLoaded = false}) async {
    // skip if loaded
    if (skipIfLoaded && state is _Data) {
      return;
    }

    emit(PocketDetailState.loading(state.detail));
    final result = await _service.getDetailMainPocket();
    if (result.hasError()) {
      emit(PocketDetailState.error(state.detail, result.message));
      return;
    }

    final data = result.getData();
    emit(PocketDetailState.data(data));
  }
}
