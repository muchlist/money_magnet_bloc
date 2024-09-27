import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/features/pocket/entity/pocket.dart';
import 'package:money_magnet_bloc/src/features/pocket/service/pocket_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:stream_transform/stream_transform.dart';
// import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'pocket_list_event.dart';
part 'pocket_list_state.dart';
part 'pocket_list_bloc.freezed.dart';

// const throttleDuration = Duration(milliseconds: 100);

// EventTransformer<E> throttleDroppable<E>(Duration duration) {
//   return (events, mapper) {
//     return droppable<E>().call(events.throttle(duration), mapper);
//   };
// }

class PocketListBloc extends Bloc<PocketListEvent, PocketListState> {
  final PocketService _service;

  PocketListBloc(this._service) : super(const PocketListState.initial([])) {
    on<PocketListEvent>(
      _onEvent,
      // transformer: throttleDroppable(
      //   const Duration(milliseconds: 100),
      // ),
    );
  }

  Future<void> _onEvent(
      PocketListEvent event, Emitter<PocketListState> emit) async {
    await event.map(
      getPocketList: (value) => _handleGetPocketList(value, emit),
      getNextPocketList: (_) => _handleGetNextPocketList(emit),
      addPocket: (value) => _handleAddPocket(value, emit),
    );
  }

  // ** Event to get list of pockets
  Future<void> _handleGetPocketList(
      _GetPocketList value, Emitter<PocketListState> emit) async {
    // skip when
    if (value.skipIfLoaded && state is _Success) {
      return;
    }

    emit(PocketListState.loading(state.pockets));

    // Memaksa agar loading minimal 1 detik tanpa melakukan block terhadap
    // pemanggilan findpocket()
    final fetchPocketFuture = _service.findPocket(1);
    await Future.wait([
      Future.delayed(const Duration(seconds: 1)),
      fetchPocketFuture,
    ]);
    final result = await fetchPocketFuture;

    // final result = await _service.findPocket(1); << before
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
