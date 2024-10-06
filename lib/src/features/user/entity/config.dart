import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
class Config with _$Config {
  const Config._();
  const factory Config({
    @JsonKey(name: 'main_pocket_id', defaultValue: "00000000000000000000000000")
    required String mainPocketID,
  }) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}
