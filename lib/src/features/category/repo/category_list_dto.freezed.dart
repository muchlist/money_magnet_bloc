// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryListResponseDTO _$CategoryListResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _CategoryListResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryListResponseDTO {
  @JsonKey(name: 'data', defaultValue: [])
  List<CategoryDTO>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  MetadataDTO get metaData => throw _privateConstructorUsedError;
  @JsonKey(name: 'error')
  String? get error => throw _privateConstructorUsedError;

  /// Serializes this CategoryListResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryListResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryListResponseDTOCopyWith<CategoryListResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListResponseDTOCopyWith<$Res> {
  factory $CategoryListResponseDTOCopyWith(CategoryListResponseDTO value,
          $Res Function(CategoryListResponseDTO) then) =
      _$CategoryListResponseDTOCopyWithImpl<$Res, CategoryListResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<CategoryDTO>? data,
      @JsonKey(name: 'metadata') MetadataDTO metaData,
      @JsonKey(name: 'error') String? error});

  $MetadataDTOCopyWith<$Res> get metaData;
}

/// @nodoc
class _$CategoryListResponseDTOCopyWithImpl<$Res,
        $Val extends CategoryListResponseDTO>
    implements $CategoryListResponseDTOCopyWith<$Res> {
  _$CategoryListResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryListResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metaData = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryDTO>?,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetadataDTO,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CategoryListResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataDTOCopyWith<$Res> get metaData {
    return $MetadataDTOCopyWith<$Res>(_value.metaData, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryListResponseDTOImplCopyWith<$Res>
    implements $CategoryListResponseDTOCopyWith<$Res> {
  factory _$$CategoryListResponseDTOImplCopyWith(
          _$CategoryListResponseDTOImpl value,
          $Res Function(_$CategoryListResponseDTOImpl) then) =
      __$$CategoryListResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: []) List<CategoryDTO>? data,
      @JsonKey(name: 'metadata') MetadataDTO metaData,
      @JsonKey(name: 'error') String? error});

  @override
  $MetadataDTOCopyWith<$Res> get metaData;
}

/// @nodoc
class __$$CategoryListResponseDTOImplCopyWithImpl<$Res>
    extends _$CategoryListResponseDTOCopyWithImpl<$Res,
        _$CategoryListResponseDTOImpl>
    implements _$$CategoryListResponseDTOImplCopyWith<$Res> {
  __$$CategoryListResponseDTOImplCopyWithImpl(
      _$CategoryListResponseDTOImpl _value,
      $Res Function(_$CategoryListResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryListResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metaData = null,
    Object? error = freezed,
  }) {
    return _then(_$CategoryListResponseDTOImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryDTO>?,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetadataDTO,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryListResponseDTOImpl extends _CategoryListResponseDTO {
  const _$CategoryListResponseDTOImpl(
      {@JsonKey(name: 'data', defaultValue: [])
      required final List<CategoryDTO>? data,
      @JsonKey(name: 'metadata') required this.metaData,
      @JsonKey(name: 'error') required this.error})
      : _data = data,
        super._();

  factory _$CategoryListResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListResponseDTOImplFromJson(json);

  final List<CategoryDTO>? _data;
  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<CategoryDTO>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'metadata')
  final MetadataDTO metaData;
  @override
  @JsonKey(name: 'error')
  final String? error;

  @override
  String toString() {
    return 'CategoryListResponseDTO(data: $data, metaData: $metaData, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListResponseDTOImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), metaData, error);

  /// Create a copy of CategoryListResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryListResponseDTOImplCopyWith<_$CategoryListResponseDTOImpl>
      get copyWith => __$$CategoryListResponseDTOImplCopyWithImpl<
          _$CategoryListResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _CategoryListResponseDTO extends CategoryListResponseDTO {
  const factory _CategoryListResponseDTO(
          {@JsonKey(name: 'data', defaultValue: [])
          required final List<CategoryDTO>? data,
          @JsonKey(name: 'metadata') required final MetadataDTO metaData,
          @JsonKey(name: 'error') required final String? error}) =
      _$CategoryListResponseDTOImpl;
  const _CategoryListResponseDTO._() : super._();

  factory _CategoryListResponseDTO.fromJson(Map<String, dynamic> json) =
      _$CategoryListResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<CategoryDTO>? get data;
  @override
  @JsonKey(name: 'metadata')
  MetadataDTO get metaData;
  @override
  @JsonKey(name: 'error')
  String? get error;

  /// Create a copy of CategoryListResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryListResponseDTOImplCopyWith<_$CategoryListResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryDTO _$CategoryDTOFromJson(Map<String, dynamic> json) {
  return _CategoryDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryDTO {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'pocket_id')
  String get pocketID => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_icon')
  int get categoryIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_income')
  bool get isIncome => throw _privateConstructorUsedError;

  /// Serializes this CategoryDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryDTOCopyWith<CategoryDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDTOCopyWith<$Res> {
  factory $CategoryDTOCopyWith(
          CategoryDTO value, $Res Function(CategoryDTO) then) =
      _$CategoryDTOCopyWithImpl<$Res, CategoryDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'pocket_id') String pocketID,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'category_icon') int categoryIcon,
      @JsonKey(name: 'is_income') bool isIncome});
}

/// @nodoc
class _$CategoryDTOCopyWithImpl<$Res, $Val extends CategoryDTO>
    implements $CategoryDTOCopyWith<$Res> {
  _$CategoryDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pocketID = null,
    Object? categoryName = null,
    Object? categoryIcon = null,
    Object? isIncome = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pocketID: null == pocketID
          ? _value.pocketID
          : pocketID // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIcon: null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as int,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDTOImplCopyWith<$Res>
    implements $CategoryDTOCopyWith<$Res> {
  factory _$$CategoryDTOImplCopyWith(
          _$CategoryDTOImpl value, $Res Function(_$CategoryDTOImpl) then) =
      __$$CategoryDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'pocket_id') String pocketID,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'category_icon') int categoryIcon,
      @JsonKey(name: 'is_income') bool isIncome});
}

/// @nodoc
class __$$CategoryDTOImplCopyWithImpl<$Res>
    extends _$CategoryDTOCopyWithImpl<$Res, _$CategoryDTOImpl>
    implements _$$CategoryDTOImplCopyWith<$Res> {
  __$$CategoryDTOImplCopyWithImpl(
      _$CategoryDTOImpl _value, $Res Function(_$CategoryDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? pocketID = null,
    Object? categoryName = null,
    Object? categoryIcon = null,
    Object? isIncome = null,
  }) {
    return _then(_$CategoryDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pocketID: null == pocketID
          ? _value.pocketID
          : pocketID // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIcon: null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as int,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDTOImpl extends _CategoryDTO {
  const _$CategoryDTOImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'pocket_id') required this.pocketID,
      @JsonKey(name: 'category_name') required this.categoryName,
      @JsonKey(name: 'category_icon') required this.categoryIcon,
      @JsonKey(name: 'is_income') required this.isIncome})
      : super._();

  factory _$CategoryDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'pocket_id')
  final String pocketID;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  @JsonKey(name: 'category_icon')
  final int categoryIcon;
  @override
  @JsonKey(name: 'is_income')
  final bool isIncome;

  @override
  String toString() {
    return 'CategoryDTO(id: $id, pocketID: $pocketID, categoryName: $categoryName, categoryIcon: $categoryIcon, isIncome: $isIncome)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pocketID, pocketID) ||
                other.pocketID == pocketID) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, pocketID, categoryName, categoryIcon, isIncome);

  /// Create a copy of CategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDTOImplCopyWith<_$CategoryDTOImpl> get copyWith =>
      __$$CategoryDTOImplCopyWithImpl<_$CategoryDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDTOImplToJson(
      this,
    );
  }
}

abstract class _CategoryDTO extends CategoryDTO {
  const factory _CategoryDTO(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'pocket_id') required final String pocketID,
          @JsonKey(name: 'category_name') required final String categoryName,
          @JsonKey(name: 'category_icon') required final int categoryIcon,
          @JsonKey(name: 'is_income') required final bool isIncome}) =
      _$CategoryDTOImpl;
  const _CategoryDTO._() : super._();

  factory _CategoryDTO.fromJson(Map<String, dynamic> json) =
      _$CategoryDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'pocket_id')
  String get pocketID;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(name: 'category_icon')
  int get categoryIcon;
  @override
  @JsonKey(name: 'is_income')
  bool get isIncome;

  /// Create a copy of CategoryDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryDTOImplCopyWith<_$CategoryDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
