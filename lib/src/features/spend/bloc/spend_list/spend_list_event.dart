part of 'spend_list_bloc.dart';

@freezed
class SpendListEvent with _$SpendListEvent {
  const factory SpendListEvent.getSpendList(String pocketID,
      {@Default(false) bool skipIfLoaded}) = _GetSpendList;
  const factory SpendListEvent.getNextSpendList(String pocketID) =
      _GetNextSpendList;
  const factory SpendListEvent.addSpend(SpendReqDTO data) = _AddSpend;
}
