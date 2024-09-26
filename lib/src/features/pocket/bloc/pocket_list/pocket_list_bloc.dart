import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/features/pocket/entity/pocket.dart';
import 'package:money_magnet_bloc/src/features/pocket/service/pocket_service.dart';

part 'pocket_list_event.dart';
part 'pocket_list_state.dart';
part 'pocket_list_bloc.freezed.dart';

class PocketListBloc extends Bloc<PocketListEvent, PocketListState> {
  final PocketService _service;

  PocketListBloc(this._service) : super(const PocketListState.initial([])) {
    on<PocketListEvent>(_onEvent);
  }

  Future<void> _onEvent(
      PocketListEvent event, Emitter<PocketListState> emit) async {
    await event.map(
      getPocketList: (_) => _handleGetPocketList(emit),
      getNextPocketList: (_) => _handleGetNextPocketList(emit),
      addPocket: (value) => _handleAddPocket(value, emit),
    );
  }

  // ** Event to get list of pockets
  Future<void> _handleGetPocketList(Emitter<PocketListState> emit) async {
    emit(PocketListState.loading(state.pockets));

    final result = await _service.findPocket(1);
    if (result.hasError()) {
      emit(PocketListState.failure(state.pockets, result.message));
      return;
    }

    final pockets = result.getData();
    emit(PocketListState.success(
      pockets,
      isNextPageAvailable: _service.hasNextPage(),
    ));
  }

  // ** Event to get next list of pockets
  Future<void> _handleGetNextPocketList(Emitter<PocketListState> emit) async {
    emit(PocketListState.loading(state.pockets));

    final result = await _service.findNextPocket();
    if (result.hasError()) {
      emit(PocketListState.failure(state.pockets, result.message));
      return;
    }

    final pockets = result.getData();
    emit(PocketListState.success(
      pockets,
      isNextPageAvailable: _service.hasNextPage(),
    ));
  }

  // ** Event to add new pocket
  Future<void> _handleAddPocket(
      _AddPocket value, Emitter<PocketListState> emit) async {
    emit(PocketListState.loading(state.pockets));

    final result = await _service.createPocket(
        value.pocketName, value.currency, value.icon);
    if (result.hasError()) {
      emit(PocketListState.failure(state.pockets, result.message));
      return;
    }

    final newPocket = result.getData();
    final List<Pocket> updatedPockets = List.from(state.pockets)
      ..add(newPocket!);
    updatedPockets.sort((a, b) => a.pocketName.compareTo(b.pocketName));

    emit(PocketListState.success(
      updatedPockets,
      isNextPageAvailable: _service.hasNextPage(),
    ));
  }
}
