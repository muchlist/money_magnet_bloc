// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DropdownItem<T> {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  T get additionalData => throw _privateConstructorUsedError;

  /// Create a copy of DropdownItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropdownItemCopyWith<T, DropdownItem<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownItemCopyWith<T, $Res> {
  factory $DropdownItemCopyWith(
          DropdownItem<T> value, $Res Function(DropdownItem<T>) then) =
      _$DropdownItemCopyWithImpl<T, $Res, DropdownItem<T>>;
  @useResult
  $Res call({String id, String value, T additionalData});
}

/// @nodoc
class _$DropdownItemCopyWithImpl<T, $Res, $Val extends DropdownItem<T>>
    implements $DropdownItemCopyWith<T, $Res> {
  _$DropdownItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropdownItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? additionalData = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      additionalData: freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropdownItemImplCopyWith<T, $Res>
    implements $DropdownItemCopyWith<T, $Res> {
  factory _$$DropdownItemImplCopyWith(_$DropdownItemImpl<T> value,
          $Res Function(_$DropdownItemImpl<T>) then) =
      __$$DropdownItemImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String id, String value, T additionalData});
}

/// @nodoc
class __$$DropdownItemImplCopyWithImpl<T, $Res>
    extends _$DropdownItemCopyWithImpl<T, $Res, _$DropdownItemImpl<T>>
    implements _$$DropdownItemImplCopyWith<T, $Res> {
  __$$DropdownItemImplCopyWithImpl(
      _$DropdownItemImpl<T> _value, $Res Function(_$DropdownItemImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DropdownItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? additionalData = freezed,
  }) {
    return _then(_$DropdownItemImpl<T>(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == additionalData
          ? _value.additionalData
          : additionalData // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DropdownItemImpl<T> implements _DropdownItem<T> {
  const _$DropdownItemImpl(this.id, this.value, this.additionalData);

  @override
  final String id;
  @override
  final String value;
  @override
  final T additionalData;

  @override
  String toString() {
    return 'DropdownItem<$T>(id: $id, value: $value, additionalData: $additionalData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownItemImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.additionalData, additionalData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, value,
      const DeepCollectionEquality().hash(additionalData));

  /// Create a copy of DropdownItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownItemImplCopyWith<T, _$DropdownItemImpl<T>> get copyWith =>
      __$$DropdownItemImplCopyWithImpl<T, _$DropdownItemImpl<T>>(
          this, _$identity);
}

abstract class _DropdownItem<T> implements DropdownItem<T> {
  const factory _DropdownItem(
          final String id, final String value, final T additionalData) =
      _$DropdownItemImpl<T>;

  @override
  String get id;
  @override
  String get value;
  @override
  T get additionalData;

  /// Create a copy of DropdownItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropdownItemImplCopyWith<T, _$DropdownItemImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
