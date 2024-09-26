import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_magnet_bloc/src/common/data/metadata.dart';
import 'package:money_magnet_bloc/src/features/pocket/repo/pocket_dto.dart';

part 'pocket_list_dto.freezed.dart';
part 'pocket_list_dto.g.dart';

@freezed
class PocketListResponseDTO with _$PocketListResponseDTO {
  const PocketListResponseDTO._();
  const factory PocketListResponseDTO({
    @JsonKey(name: 'data', defaultValue: []) required List<PocketDTO>? data,
    @JsonKey(name: 'metadata') required MetadataDTO metaData,
    @JsonKey(name: 'error') required String? error,
  }) = _PocketListResponseDTO;

  factory PocketListResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PocketListResponseDTOFromJson(json);
}
