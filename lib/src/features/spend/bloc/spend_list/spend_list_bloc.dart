import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend.dart';
import 'package:money_magnet_bloc/src/features/spend/service/spend_service.dart';

part 'spend_list_event.dart';
part 'spend_list_state.dart';
part 'spend_list_bloc.freezed.dart';

class SpendListBloc extends Bloc<SpendListEvent, SpendListState> {
  final SpendService _service;

  SpendListBloc(this._service) : super(const SpendListState.initial([])) {
    on<_GetSpendList>(_handleGetSpendList);
    on<_GetNextSpendList>(_handleGetNextSpendList);
  }

  // ** Event to get list of spends
  Future<void> _handleGetSpendList(
      _GetSpendList event, Emitter<SpendListState> emit) async {
    // skip when
    if (event.skipIfLoaded && state is _Success) {
      return;
    }

    emit(SpendListState.loading(state.spends));

    final result = await _service.findSpend(1, event.pocketID);
    if (result.hasError()) {
      emit(SpendListState.failure(state.spends, result.message));
      return;
    }

    final spends = result.getData();
    emit(
      SpendListState.success(
        spends,
        isNextPageAvailable: _service.hasNextPage(),
      ),
    );
  }

  // ** Event to get next list of spends
  Future<void> _handleGetNextSpendList(
      _GetNextSpendList event, Emitter<SpendListState> emit) async {
    emit(SpendListState.loading(state.spends));
    final result = await _service.findNextSpend(event.pocketID);
    if (result.hasError()) {
      emit(SpendListState.failure(state.spends, result.message));
      return;
    }

    final spends = result.getData();

    // !! Must be latest state + new state
    emit(
      SpendListState.success(
        spends,
        isNextPageAvailable: _service.hasNextPage(),
      ),
    );
  }
}
