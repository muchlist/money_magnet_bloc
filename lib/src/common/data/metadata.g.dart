// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetadataDTOImpl _$$MetadataDTOImplFromJson(Map<String, dynamic> json) =>
    _$MetadataDTOImpl(
      currentPage: (json['current_page'] as num?)?.toInt() ?? 0,
      firstPage: (json['first_page'] as num?)?.toInt() ?? 0,
      lastPage: (json['last_page'] as num?)?.toInt() ?? 0,
      pageSize: (json['page_size'] as num?)?.toInt() ?? 0,
      totalRecords: (json['total_records'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MetadataDTOImplToJson(_$MetadataDTOImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'first_page': instance.firstPage,
      'last_page': instance.lastPage,
      'page_size': instance.pageSize,
      'total_records': instance.totalRecords,
    };
