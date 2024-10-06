// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryListResponseDTOImpl _$$CategoryListResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryListResponseDTOImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CategoryDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      metaData: MetadataDTO.fromJson(json['metadata'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$CategoryListResponseDTOImplToJson(
        _$CategoryListResponseDTOImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'metadata': instance.metaData.toJson(),
      'error': instance.error,
    };

_$CategoryDTOImpl _$$CategoryDTOImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDTOImpl(
      id: json['id'] as String,
      pocketID: json['pocket_id'] as String,
      categoryName: json['category_name'] as String,
      categoryIcon: (json['category_icon'] as num).toInt(),
      isIncome: json['is_income'] as bool,
    );

Map<String, dynamic> _$$CategoryDTOImplToJson(_$CategoryDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pocket_id': instance.pocketID,
      'category_name': instance.categoryName,
      'category_icon': instance.categoryIcon,
      'is_income': instance.isIncome,
    };
