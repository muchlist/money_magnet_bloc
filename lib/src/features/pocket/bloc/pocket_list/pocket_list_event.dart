part of 'pocket_list_bloc.dart';

@freezed
class PocketListEvent with _$PocketListEvent {
  const factory PocketListEvent.getPocketList() = _GetPocketList;
  const factory PocketListEvent.getNextPocketList() = _GetNextPocketList;
  // addPocket to simple to use separated bloc
  const factory PocketListEvent.addPocket(
    String pocketName,
    String currency,
    int icon,
  ) = _AddPocket;
}
