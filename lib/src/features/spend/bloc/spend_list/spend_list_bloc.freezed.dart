// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spend_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SpendListEvent {
  String get pocketID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pocketID, bool skipIfLoaded) getSpendList,
    required TResult Function(String pocketID) getNextSpendList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pocketID, bool skipIfLoaded)? getSpendList,
    TResult? Function(String pocketID)? getNextSpendList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pocketID, bool skipIfLoaded)? getSpendList,
    TResult Function(String pocketID)? getNextSpendList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSpendList value) getSpendList,
    required TResult Function(_GetNextSpendList value) getNextSpendList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSpendList value)? getSpendList,
    TResult? Function(_GetNextSpendList value)? getNextSpendList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSpendList value)? getSpendList,
    TResult Function(_GetNextSpendList value)? getNextSpendList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SpendListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpendListEventCopyWith<SpendListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendListEventCopyWith<$Res> {
  factory $SpendListEventCopyWith(
          SpendListEvent value, $Res Function(SpendListEvent) then) =
      _$SpendListEventCopyWithImpl<$Res, SpendListEvent>;
  @useResult
  $Res call({String pocketID});
}

/// @nodoc
class _$SpendListEventCopyWithImpl<$Res, $Val extends SpendListEvent>
    implements $SpendListEventCopyWith<$Res> {
  _$SpendListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpendListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pocketID = null,
  }) {
    return _then(_value.copyWith(
      pocketID: null == pocketID
          ? _value.pocketID
          : pocketID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSpendListImplCopyWith<$Res>
    implements $SpendListEventCopyWith<$Res> {
  factory _$$GetSpendListImplCopyWith(
          _$GetSpendListImpl value, $Res Function(_$GetSpendListImpl) then) =
      __$$GetSpendListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pocketID, bool skipIfLoaded});
}

/// @nodoc
class __$$GetSpendListImplCopyWithImpl<$Res>
    extends _$SpendListEventCopyWithImpl<$Res, _$GetSpendListImpl>
    implements _$$GetSpendListImplCopyWith<$Res> {
  __$$GetSpendListImplCopyWithImpl(
      _$GetSpendListImpl _value, $Res Function(_$GetSpendListImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpendListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pocketID = null,
    Object? skipIfLoaded = null,
  }) {
    return _then(_$GetSpendListImpl(
      null == pocketID
          ? _value.pocketID
          : pocketID // ignore: cast_nullable_to_non_nullable
              as String,
      skipIfLoaded: null == skipIfLoaded
          ? _value.skipIfLoaded
          : skipIfLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetSpendListImpl implements _GetSpendList {
  const _$GetSpendListImpl(this.pocketID, {this.skipIfLoaded = false});

  @override
  final String pocketID;
  @override
  @JsonKey()
  final bool skipIfLoaded;

  @override
  String toString() {
    return 'SpendListEvent.getSpendList(pocketID: $pocketID, skipIfLoaded: $skipIfLoaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSpendListImpl &&
            (identical(other.pocketID, pocketID) ||
                other.pocketID == pocketID) &&
            (identical(other.skipIfLoaded, skipIfLoaded) ||
                other.skipIfLoaded == skipIfLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pocketID, skipIfLoaded);

  /// Create a copy of SpendListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSpendListImplCopyWith<_$GetSpendListImpl> get copyWith =>
      __$$GetSpendListImplCopyWithImpl<_$GetSpendListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pocketID, bool skipIfLoaded) getSpendList,
    required TResult Function(String pocketID) getNextSpendList,
  }) {
    return getSpendList(pocketID, skipIfLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pocketID, bool skipIfLoaded)? getSpendList,
    TResult? Function(String pocketID)? getNextSpendList,
  }) {
    return getSpendList?.call(pocketID, skipIfLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pocketID, bool skipIfLoaded)? getSpendList,
    TResult Function(String pocketID)? getNextSpendList,
    required TResult orElse(),
  }) {
    if (getSpendList != null) {
      return getSpendList(pocketID, skipIfLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSpendList value) getSpendList,
    required TResult Function(_GetNextSpendList value) getNextSpendList,
  }) {
    return getSpendList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSpendList value)? getSpendList,
    TResult? Function(_GetNextSpendList value)? getNextSpendList,
  }) {
    return getSpendList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSpendList value)? getSpendList,
    TResult Function(_GetNextSpendList value)? getNextSpendList,
    required TResult orElse(),
  }) {
    if (getSpendList != null) {
      return getSpendList(this);
    }
    return orElse();
  }
}

abstract class _GetSpendList implements SpendListEvent {
  const factory _GetSpendList(final String pocketID,
      {final bool skipIfLoaded}) = _$GetSpendListImpl;

  @override
  String get pocketID;
  bool get skipIfLoaded;

  /// Create a copy of SpendListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSpendListImplCopyWith<_$GetSpendListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNextSpendListImplCopyWith<$Res>
    implements $SpendListEventCopyWith<$Res> {
  factory _$$GetNextSpendListImplCopyWith(_$GetNextSpendListImpl value,
          $Res Function(_$GetNextSpendListImpl) then) =
      __$$GetNextSpendListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pocketID});
}

/// @nodoc
class __$$GetNextSpendListImplCopyWithImpl<$Res>
    extends _$SpendListEventCopyWithImpl<$Res, _$GetNextSpendListImpl>
    implements _$$GetNextSpendListImplCopyWith<$Res> {
  __$$GetNextSpendListImplCopyWithImpl(_$GetNextSpendListImpl _value,
      $Res Function(_$GetNextSpendListImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpendListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pocketID = null,
  }) {
    return _then(_$GetNextSpendListImpl(
      null == pocketID
          ? _value.pocketID
          : pocketID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNextSpendListImpl implements _GetNextSpendList {
  const _$GetNextSpendListImpl(this.pocketID);

  @override
  final String pocketID;

  @override
  String toString() {
    return 'SpendListEvent.getNextSpendList(pocketID: $pocketID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNextSpendListImpl &&
            (identical(other.pocketID, pocketID) ||
                other.pocketID == pocketID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pocketID);

  /// Create a copy of SpendListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNextSpendListImplCopyWith<_$GetNextSpendListImpl> get copyWith =>
      __$$GetNextSpendListImplCopyWithImpl<_$GetNextSpendListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pocketID, bool skipIfLoaded) getSpendList,
    required TResult Function(String pocketID) getNextSpendList,
  }) {
    return getNextSpendList(pocketID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pocketID, bool skipIfLoaded)? getSpendList,
    TResult? Function(String pocketID)? getNextSpendList,
  }) {
    return getNextSpendList?.call(pocketID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pocketID, bool skipIfLoaded)? getSpendList,
    TResult Function(String pocketID)? getNextSpendList,
    required TResult orElse(),
  }) {
    if (getNextSpendList != null) {
      return getNextSpendList(pocketID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSpendList value) getSpendList,
    required TResult Function(_GetNextSpendList value) getNextSpendList,
  }) {
    return getNextSpendList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSpendList value)? getSpendList,
    TResult? Function(_GetNextSpendList value)? getNextSpendList,
  }) {
    return getNextSpendList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSpendList value)? getSpendList,
    TResult Function(_GetNextSpendList value)? getNextSpendList,
    required TResult orElse(),
  }) {
    if (getNextSpendList != null) {
      return getNextSpendList(this);
    }
    return orElse();
  }
}

abstract class _GetNextSpendList implements SpendListEvent {
  const factory _GetNextSpendList(final String pocketID) =
      _$GetNextSpendListImpl;

  @override
  String get pocketID;

  /// Create a copy of SpendListEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetNextSpendListImplCopyWith<_$GetNextSpendListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SpendListState {
  List<Spend> get spends => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends) loading,
    required TResult Function(List<Spend> spends, bool isNextPageAvailable)
        success,
    required TResult Function(List<Spend> spends, String failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends)? loading,
    TResult? Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult? Function(List<Spend> spends, String failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends)? loading,
    TResult Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult Function(List<Spend> spends, String failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpendListStateCopyWith<SpendListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpendListStateCopyWith<$Res> {
  factory $SpendListStateCopyWith(
          SpendListState value, $Res Function(SpendListState) then) =
      _$SpendListStateCopyWithImpl<$Res, SpendListState>;
  @useResult
  $Res call({List<Spend> spends});
}

/// @nodoc
class _$SpendListStateCopyWithImpl<$Res, $Val extends SpendListState>
    implements $SpendListStateCopyWith<$Res> {
  _$SpendListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
  }) {
    return _then(_value.copyWith(
      spends: null == spends
          ? _value.spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SpendListStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SpendListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
  }) {
    return _then(_$InitialImpl(
      null == spends
          ? _value._spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(final List<Spend> spends)
      : _spends = spends,
        super._();

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  String toString() {
    return 'SpendListState.initial(spends: $spends)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._spends, _spends));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_spends));

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends) loading,
    required TResult Function(List<Spend> spends, bool isNextPageAvailable)
        success,
    required TResult Function(List<Spend> spends, String failure) failure,
  }) {
    return initial(spends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends)? loading,
    TResult? Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult? Function(List<Spend> spends, String failure)? failure,
  }) {
    return initial?.call(spends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends)? loading,
    TResult Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult Function(List<Spend> spends, String failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(spends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends SpendListState {
  const factory _Initial(final List<Spend> spends) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  List<Spend> get spends;

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $SpendListStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SpendListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
  }) {
    return _then(_$LoadingImpl(
      null == spends
          ? _value._spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl(final List<Spend> spends)
      : _spends = spends,
        super._();

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  String toString() {
    return 'SpendListState.loading(spends: $spends)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._spends, _spends));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_spends));

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends) loading,
    required TResult Function(List<Spend> spends, bool isNextPageAvailable)
        success,
    required TResult Function(List<Spend> spends, String failure) failure,
  }) {
    return loading(spends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends)? loading,
    TResult? Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult? Function(List<Spend> spends, String failure)? failure,
  }) {
    return loading?.call(spends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends)? loading,
    TResult Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult Function(List<Spend> spends, String failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(spends);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends SpendListState {
  const factory _Loading(final List<Spend> spends) = _$LoadingImpl;
  const _Loading._() : super._();

  @override
  List<Spend> get spends;

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $SpendListStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends, bool isNextPageAvailable});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SpendListStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$SuccessImpl(
      null == spends
          ? _value._spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl extends _Success {
  const _$SuccessImpl(final List<Spend> spends,
      {required this.isNextPageAvailable})
      : _spends = spends,
        super._();

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'SpendListState.success(spends: $spends, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._spends, _spends) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_spends), isNextPageAvailable);

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends) loading,
    required TResult Function(List<Spend> spends, bool isNextPageAvailable)
        success,
    required TResult Function(List<Spend> spends, String failure) failure,
  }) {
    return success(spends, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends)? loading,
    TResult? Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult? Function(List<Spend> spends, String failure)? failure,
  }) {
    return success?.call(spends, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends)? loading,
    TResult Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult Function(List<Spend> spends, String failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(spends, isNextPageAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends SpendListState {
  const factory _Success(final List<Spend> spends,
      {required final bool isNextPageAvailable}) = _$SuccessImpl;
  const _Success._() : super._();

  @override
  List<Spend> get spends;
  bool get isNextPageAvailable;

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $SpendListStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends, String failure});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SpendListStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      null == spends
          ? _value._spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl(final List<Spend> spends, this.failure)
      : _spends = spends,
        super._();

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  final String failure;

  @override
  String toString() {
    return 'SpendListState.failure(spends: $spends, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            const DeepCollectionEquality().equals(other._spends, _spends) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_spends), failure);

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends) loading,
    required TResult Function(List<Spend> spends, bool isNextPageAvailable)
        success,
    required TResult Function(List<Spend> spends, String failure) failure,
  }) {
    return failure(spends, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends)? loading,
    TResult? Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult? Function(List<Spend> spends, String failure)? failure,
  }) {
    return failure?.call(spends, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends)? loading,
    TResult Function(List<Spend> spends, bool isNextPageAvailable)? success,
    TResult Function(List<Spend> spends, String failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(spends, this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends SpendListState {
  const factory _Failure(final List<Spend> spends, final String failure) =
      _$FailureImpl;
  const _Failure._() : super._();

  @override
  List<Spend> get spends;
  String get failure;

  /// Create a copy of SpendListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
