part of 'pocket_list_bloc.dart';

@freezed
class PocketListState with _$PocketListState {
  const factory PocketListState.initial(List<Pocket> pockets) = _Initial;
  const factory PocketListState.loading(List<Pocket> pockets) = _Loading;
  const factory PocketListState.success(List<Pocket> pockets,
      {required bool isNextPageAvailable}) = _Success;
  const factory PocketListState.failure(List<Pocket> pockets, String failure) =
      _Failure;
}
