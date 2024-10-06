part of 'pocket_detail_cubit.dart';

@freezed
class PocketDetailState with _$PocketDetailState {
  const factory PocketDetailState.initial(Pocket detail) = _Initial;
  const factory PocketDetailState.loading(Pocket detail) = _Loading;
  const factory PocketDetailState.data(Pocket detail) = _Data;
  const factory PocketDetailState.error(Pocket detail, String error) = _Error;
}
