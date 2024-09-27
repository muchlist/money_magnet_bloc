// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pocket_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PocketListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool skipIfLoaded) getPocketList,
    required TResult Function() getNextPocketList,
    required TResult Function(String pocketName, String currency, int icon)
        addPocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool skipIfLoaded)? getPocketList,
    TResult? Function()? getNextPocketList,
    TResult? Function(String pocketName, String currency, int icon)? addPocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool skipIfLoaded)? getPocketList,
    TResult Function()? getNextPocketList,
    TResult Function(String pocketName, String currency, int icon)? addPocket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPocketList value) getPocketList,
    required TResult Function(_GetNextPocketList value) getNextPocketList,
    required TResult Function(_AddPocket value) addPocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPocketList value)? getPocketList,
    TResult? Function(_GetNextPocketList value)? getNextPocketList,
    TResult? Function(_AddPocket value)? addPocket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPocketList value)? getPocketList,
    TResult Function(_GetNextPocketList value)? getNextPocketList,
    TResult Function(_AddPocket value)? addPocket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PocketListEventCopyWith<$Res> {
  factory $PocketListEventCopyWith(
          PocketListEvent value, $Res Function(PocketListEvent) then) =
      _$PocketListEventCopyWithImpl<$Res, PocketListEvent>;
}

/// @nodoc
class _$PocketListEventCopyWithImpl<$Res, $Val extends PocketListEvent>
    implements $PocketListEventCopyWith<$Res> {
  _$PocketListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PocketListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPocketListImplCopyWith<$Res> {
  factory _$$GetPocketListImplCopyWith(
          _$GetPocketListImpl value, $Res Function(_$GetPocketListImpl) then) =
      __$$GetPocketListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool skipIfLoaded});
}

/// @nodoc
class __$$GetPocketListImplCopyWithImpl<$Res>
    extends _$PocketListEventCopyWithImpl<$Res, _$GetPocketListImpl>
    implements _$$GetPocketListImplCopyWith<$Res> {
  __$$GetPocketListImplCopyWithImpl(
      _$GetPocketListImpl _value, $Res Function(_$GetPocketListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PocketListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skipIfLoaded = null,
  }) {
    return _then(_$GetPocketListImpl(
      skipIfLoaded: null == skipIfLoaded
          ? _value.skipIfLoaded
          : skipIfLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetPocketListImpl implements _GetPocketList {
  const _$GetPocketListImpl({this.skipIfLoaded = false});

  @override
  @JsonKey()
  final bool skipIfLoaded;

  @override
  String toString() {
    return 'PocketListEvent.getPocketList(skipIfLoaded: $skipIfLoaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPocketListImpl &&
            (identical(other.skipIfLoaded, skipIfLoaded) ||
                other.skipIfLoaded == skipIfLoaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skipIfLoaded);

  /// Create a copy of PocketListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPocketListImplCopyWith<_$GetPocketListImpl> get copyWith =>
      __$$GetPocketListImplCopyWithImpl<_$GetPocketListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool skipIfLoaded) getPocketList,
    required TResult Function() getNextPocketList,
    required TResult Function(String pocketName, String currency, int icon)
        addPocket,
  }) {
    return getPocketList(skipIfLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool skipIfLoaded)? getPocketList,
    TResult? Function()? getNextPocketList,
    TResult? Function(String pocketName, String currency, int icon)? addPocket,
  }) {
    return getPocketList?.call(skipIfLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool skipIfLoaded)? getPocketList,
    TResult Function()? getNextPocketList,
    TResult Function(String pocketName, String currency, int icon)? addPocket,
    required TResult orElse(),
  }) {
    if (getPocketList != null) {
      return getPocketList(skipIfLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPocketList value) getPocketList,
    required TResult Function(_GetNextPocketList value) getNextPocketList,
    required TResult Function(_AddPocket value) addPocket,
  }) {
    return getPocketList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPocketList value)? getPocketList,
    TResult? Function(_GetNextPocketList value)? getNextPocketList,
    TResult? Function(_AddPocket value)? addPocket,
  }) {
    return getPocketList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPocketList value)? getPocketList,
    TResult Function(_GetNextPocketList value)? getNextPocketList,
    TResult Function(_AddPocket value)? addPocket,
    required TResult orElse(),
  }) {
    if (getPocketList != null) {
      return getPocketList(this);
    }
    return orElse();
  }
}

abstract class _GetPocketList implements PocketListEvent {
  const factory _GetPocketList({final bool skipIfLoaded}) = _$GetPocketListImpl;

  bool get skipIfLoaded;

  /// Create a copy of PocketListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPocketListImplCopyWith<_$GetPocketListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNextPocketListImplCopyWith<$Res> {
  factory _$$GetNextPocketListImplCopyWith(_$GetNextPocketListImpl value,
          $Res Function(_$GetNextPocketListImpl) then) =
      __$$GetNextPocketListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNextPocketListImplCopyWithImpl<$Res>
    extends _$PocketListEventCopyWithImpl<$Res, _$GetNextPocketListImpl>
    implements _$$GetNextPocketListImplCopyWith<$Res> {
  __$$GetNextPocketListImplCopyWithImpl(_$GetNextPocketListImpl _value,
      $Res Function(_$GetNextPocketListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PocketListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNextPocketListImpl implements _GetNextPocketList {
  const _$GetNextPocketListImpl();

  @override
  String toString() {
    return 'PocketListEvent.getNextPocketList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNextPocketListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool skipIfLoaded) getPocketList,
    required TResult Function() getNextPocketList,
    required TResult Function(String pocketName, String currency, int icon)
        addPocket,
  }) {
    return getNextPocketList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool skipIfLoaded)? getPocketList,
    TResult? Function()? getNextPocketList,
    TResult? Function(String pocketName, String currency, int icon)? addPocket,
  }) {
    return getNextPocketList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool skipIfLoaded)? getPocketList,
    TResult Function()? getNextPocketList,
    TResult Function(String pocketName, String currency, int icon)? addPocket,
    required TResult orElse(),
  }) {
    if (getNextPocketList != null) {
      return getNextPocketList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPocketList value) getPocketList,
    required TResult Function(_GetNextPocketList value) getNextPocketList,
    required TResult Function(_AddPocket value) addPocket,
  }) {
    return getNextPocketList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPocketList value)? getPocketList,
    TResult? Function(_GetNextPocketList value)? getNextPocketList,
    TResult? Function(_AddPocket value)? addPocket,
  }) {
    return getNextPocketList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPocketList value)? getPocketList,
    TResult Function(_GetNextPocketList value)? getNextPocketList,
    TResult Function(_AddPocket value)? addPocket,
    required TResult orElse(),
  }) {
    if (getNextPocketList != null) {
      return getNextPocketList(this);
    }
    return orElse();
  }
}

abstract class _GetNextPocketList implements PocketListEvent {
  const factory _GetNextPocketList() = _$GetNextPocketListImpl;
}

/// @nodoc
abstract class _$$AddPocketImplCopyWith<$Res> {
  factory _$$AddPocketImplCopyWith(
          _$AddPocketImpl value, $Res Function(_$AddPocketImpl) then) =
      __$$AddPocketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pocketName, String currency, int icon});
}

/// @nodoc
class __$$AddPocketImplCopyWithImpl<$Res>
    extends _$PocketListEventCopyWithImpl<$Res, _$AddPocketImpl>
    implements _$$AddPocketImplCopyWith<$Res> {
  __$$AddPocketImplCopyWithImpl(
      _$AddPocketImpl _value, $Res Function(_$AddPocketImpl) _then)
      : super(_value, _then);

  /// Create a copy of PocketListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pocketName = null,
    Object? currency = null,
    Object? icon = null,
  }) {
    return _then(_$AddPocketImpl(
      null == pocketName
          ? _value.pocketName
          : pocketName // ignore: cast_nullable_to_non_nullable
              as String,
      null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddPocketImpl implements _AddPocket {
  const _$AddPocketImpl(this.pocketName, this.currency, this.icon);

  @override
  final String pocketName;
  @override
  final String currency;
  @override
  final int icon;

  @override
  String toString() {
    return 'PocketListEvent.addPocket(pocketName: $pocketName, currency: $currency, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPocketImpl &&
            (identical(other.pocketName, pocketName) ||
                other.pocketName == pocketName) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pocketName, currency, icon);

  /// Create a copy of PocketListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPocketImplCopyWith<_$AddPocketImpl> get copyWith =>
      __$$AddPocketImplCopyWithImpl<_$AddPocketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool skipIfLoaded) getPocketList,
    required TResult Function() getNextPocketList,
    required TResult Function(String pocketName, String currency, int icon)
        addPocket,
  }) {
    return addPocket(pocketName, currency, icon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool skipIfLoaded)? getPocketList,
    TResult? Function()? getNextPocketList,
    TResult? Function(String pocketName, String currency, int icon)? addPocket,
  }) {
    return addPocket?.call(pocketName, currency, icon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool skipIfLoaded)? getPocketList,
    TResult Function()? getNextPocketList,
    TResult Function(String pocketName, String currency, int icon)? addPocket,
    required TResult orElse(),
  }) {
    if (addPocket != null) {
      return addPocket(pocketName, currency, icon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPocketList value) getPocketList,
    required TResult Function(_GetNextPocketList value) getNextPocketList,
    required TResult Function(_AddPocket value) addPocket,
  }) {
    return addPocket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPocketList value)? getPocketList,
    TResult? Function(_GetNextPocketList value)? getNextPocketList,
    TResult? Function(_AddPocket value)? addPocket,
  }) {
    return addPocket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPocketList value)? getPocketList,
    TResult Function(_GetNextPocketList value)? getNextPocketList,
    TResult Function(_AddPocket value)? addPocket,
    required TResult orElse(),
  }) {
    if (addPocket != null) {
      return addPocket(this);
    }
    return orElse();
  }
}

abstract class _AddPocket implements PocketListEvent {
  const factory _AddPocket(
          final String pocketName, final String currency, final int icon) =
      _$AddPocketImpl;

  String get pocketName;
  String get currency;
  int get icon;

  /// Create a copy of PocketListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPocketImplCopyWith<_$AddPocketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PocketListState {
  List<Pocket> get pockets => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets) initial,
    required TResult Function(List<Pocket> pockets) loading,
    required TResult Function(List<Pocket> pockets, bool isNextPageAvailable)
        success,
    required TResult Function(List<Pocket> pockets, String failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets)? initial,
    TResult? Function(List<Pocket> pockets)? loading,
    TResult? Function(List<Pocket> pockets, bool isNextPageAvailable)? success,
    TResult? Function(List<Pocket> pockets, String failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets)? initial,
    TResult Function(List<Pocket> pockets)? loading,
    TResult Function(List<Pocket> pockets, bool isNextPageAvailable)? success,
    TResult Function(List<Pocket> pockets, String failure)? failure,
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

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PocketListStateCopyWith<PocketListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PocketListStateCopyWith<$Res> {
  factory $PocketListStateCopyWith(
          PocketListState value, $Res Function(PocketListState) then) =
      _$PocketListStateCopyWithImpl<$Res, PocketListState>;
  @useResult
  $Res call({List<Pocket> pockets});
}

/// @nodoc
class _$PocketListStateCopyWithImpl<$Res, $Val extends PocketListState>
    implements $PocketListStateCopyWith<$Res> {
  _$PocketListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
  }) {
    return _then(_value.copyWith(
      pockets: null == pockets
          ? _value.pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PocketListStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pocket> pockets});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PocketListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
  }) {
    return _then(_$InitialImpl(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(final List<Pocket> pockets) : _pockets = pockets;

  final List<Pocket> _pockets;
  @override
  List<Pocket> get pockets {
    if (_pockets is EqualUnmodifiableListView) return _pockets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pockets);
  }

  @override
  String toString() {
    return 'PocketListState.initial(pockets: $pockets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._pockets, _pockets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pockets));

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets) initial,
    required TResult Function(List<Pocket> pockets) loading,
    required TResult Function(List<Pocket> pockets, bool isNextPageAvailable)
        success,
    required TResult Function(List<Pocket> pockets, String failure) failure,
  }) {
    return initial(pockets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets)? initial,
    TResult? Function(List<Pocket> pockets)? loading,
    TResult? Function(List<Pocket> pockets, bool isNextPageAvailable)? success,
    TResult? Function(List<Pocket> pockets, String failure)? failure,
  }) {
    return initial?.call(pockets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets)? initial,
    TResult Function(List<Pocket> pockets)? loading,
    TResult Function(List<Pocket> pockets, bool isNextPageAvailable)? success,
    TResult Function(List<Pocket> pockets, String failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(pockets);
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

abstract class _Initial implements PocketListState {
  const factory _Initial(final List<Pocket> pockets) = _$InitialImpl;

  @override
  List<Pocket> get pockets;

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $PocketListStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pocket> pockets});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PocketListStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
  }) {
    return _then(_$LoadingImpl(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(final List<Pocket> pockets) : _pockets = pockets;

  final List<Pocket> _pockets;
  @override
  List<Pocket> get pockets {
    if (_pockets is EqualUnmodifiableListView) return _pockets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pockets);
  }

  @override
  String toString() {
    return 'PocketListState.loading(pockets: $pockets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._pockets, _pockets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pockets));

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets) initial,
    required TResult Function(List<Pocket> pockets) loading,
    required TResult Function(List<Pocket> pockets, bool isNextPageAvailable)
        success,
    required TResult Function(List<Pocket> pockets, String failure) failure,
  }) {
    return loading(pockets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets)? initial,
    TResult? Function(List<Pocket> pockets)? loading,
    TResult? Function(List<Pocket> pockets, bool isNextPageAvailable)? success,
    TResult? Function(List<Pocket> pockets, String failure)? failure,
  }) {
    return loading?.call(pockets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets)? initial,
    TResult Function(List<Pocket> pockets)? loading,
    TResult Function(List<Pocket> pockets, bool isNextPageAvailable)? success,
    TResult Function(List<Pocket> pockets, String failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(pockets);
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

abstract class _Loading implements PocketListState {
  const factory _Loading(final List<Pocket> pockets) = _$LoadingImpl;

  @override
  List<Pocket> get pockets;

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $PocketListStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pocket> pockets, bool isNextPageAvailable});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$PocketListStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
    Object? isNextPageAvailable = null,
  }) {
    return _then(_$SuccessImpl(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
      isNextPageAvailable: null == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<Pocket> pockets,
      {required this.isNextPageAvailable})
      : _pockets = pockets;

  final List<Pocket> _pockets;
  @override
  List<Pocket> get pockets {
    if (_pockets is EqualUnmodifiableListView) return _pockets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pockets);
  }

  @override
  final bool isNextPageAvailable;

  @override
  String toString() {
    return 'PocketListState.success(pockets: $pockets, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._pockets, _pockets) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_pockets), isNextPageAvailable);

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets) initial,
    required TResult Function(List<Pocket> pockets) loading,
    required TResult Function(List<Pocket> pockets, bool isNextPageAvailable)
        success,
    required TResult Function(List<Pocket> pockets, String failure) failure,
  }) {
    return success(pockets, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets)? initial,
    TResult? Function(List<Pocket> pockets)? loading,
    TResult? Function(List<Pocket> pockets, bool isNextPageAvailable)? success,
    TResult? Function(List<Pocket> pockets, String failure)? failure,
  }) {
    return success?.call(pockets, isNextPageAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets)? initial,
    TResult Function(List<Pocket> pockets)? loading,
    TResult Function(List<Pocket> pockets, bool isNextPageAvailable)? success,
    TResult Function(List<Pocket> pockets, String failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(pockets, isNextPageAvailable);
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

abstract class _Success implements PocketListState {
  const factory _Success(final List<Pocket> pockets,
      {required final bool isNextPageAvailable}) = _$SuccessImpl;

  @override
  List<Pocket> get pockets;
  bool get isNextPageAvailable;

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $PocketListStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pocket> pockets, String failure});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$PocketListStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pockets = null,
    Object? failure = null,
  }) {
    return _then(_$FailureImpl(
      null == pockets
          ? _value._pockets
          : pockets // ignore: cast_nullable_to_non_nullable
              as List<Pocket>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(final List<Pocket> pockets, this.failure)
      : _pockets = pockets;

  final List<Pocket> _pockets;
  @override
  List<Pocket> get pockets {
    if (_pockets is EqualUnmodifiableListView) return _pockets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pockets);
  }

  @override
  final String failure;

  @override
  String toString() {
    return 'PocketListState.failure(pockets: $pockets, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            const DeepCollectionEquality().equals(other._pockets, _pockets) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pockets), failure);

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Pocket> pockets) initial,
    required TResult Function(List<Pocket> pockets) loading,
    required TResult Function(List<Pocket> pockets, bool isNextPageAvailable)
        success,
    required TResult Function(List<Pocket> pockets, String failure) failure,
  }) {
    return failure(pockets, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Pocket> pockets)? initial,
    TResult? Function(List<Pocket> pockets)? loading,
    TResult? Function(List<Pocket> pockets, bool isNextPageAvailable)? success,
    TResult? Function(List<Pocket> pockets, String failure)? failure,
  }) {
    return failure?.call(pockets, this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Pocket> pockets)? initial,
    TResult Function(List<Pocket> pockets)? loading,
    TResult Function(List<Pocket> pockets, bool isNextPageAvailable)? success,
    TResult Function(List<Pocket> pockets, String failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(pockets, this.failure);
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

abstract class _Failure implements PocketListState {
  const factory _Failure(final List<Pocket> pockets, final String failure) =
      _$FailureImpl;

  @override
  List<Pocket> get pockets;
  String get failure;

  /// Create a copy of PocketListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
