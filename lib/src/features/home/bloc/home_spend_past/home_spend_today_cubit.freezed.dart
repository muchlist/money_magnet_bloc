// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_spend_today_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeSpendTodayState {
  List<Spend> get spends => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends, SpendSummary summary) loading,
    required TResult Function(List<Spend> spends, SpendSummary summary) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends, SpendSummary summary)? loading,
    TResult? Function(List<Spend> spends, SpendSummary summary)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends, SpendSummary summary)? loading,
    TResult Function(List<Spend> spends, SpendSummary summary)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeSpendTodayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeSpendTodayStateCopyWith<HomeSpendTodayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSpendTodayStateCopyWith<$Res> {
  factory $HomeSpendTodayStateCopyWith(
          HomeSpendTodayState value, $Res Function(HomeSpendTodayState) then) =
      _$HomeSpendTodayStateCopyWithImpl<$Res, HomeSpendTodayState>;
  @useResult
  $Res call({List<Spend> spends});
}

/// @nodoc
class _$HomeSpendTodayStateCopyWithImpl<$Res, $Val extends HomeSpendTodayState>
    implements $HomeSpendTodayStateCopyWith<$Res> {
  _$HomeSpendTodayStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeSpendTodayState
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
    implements $HomeSpendTodayStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeSpendTodayStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSpendTodayState
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

class _$InitialImpl implements _Initial {
  const _$InitialImpl(final List<Spend> spends) : _spends = spends;

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  String toString() {
    return 'HomeSpendTodayState.initial(spends: $spends)';
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

  /// Create a copy of HomeSpendTodayState
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
    required TResult Function(List<Spend> spends, SpendSummary summary) loading,
    required TResult Function(List<Spend> spends, SpendSummary summary) data,
  }) {
    return initial(spends);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends, SpendSummary summary)? loading,
    TResult? Function(List<Spend> spends, SpendSummary summary)? data,
  }) {
    return initial?.call(spends);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends, SpendSummary summary)? loading,
    TResult Function(List<Spend> spends, SpendSummary summary)? data,
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
    required TResult Function(_Data value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeSpendTodayState {
  const factory _Initial(final List<Spend> spends) = _$InitialImpl;

  @override
  List<Spend> get spends;

  /// Create a copy of HomeSpendTodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $HomeSpendTodayStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends, SpendSummary summary});

  $SpendSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$HomeSpendTodayStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSpendTodayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
    Object? summary = null,
  }) {
    return _then(_$LoadingImpl(
      null == spends
          ? _value._spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
      null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as SpendSummary,
    ));
  }

  /// Create a copy of HomeSpendTodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendSummaryCopyWith<$Res> get summary {
    return $SpendSummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value));
    });
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(final List<Spend> spends, this.summary)
      : _spends = spends;

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  final SpendSummary summary;

  @override
  String toString() {
    return 'HomeSpendTodayState.loading(spends: $spends, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._spends, _spends) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_spends), summary);

  /// Create a copy of HomeSpendTodayState
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
    required TResult Function(List<Spend> spends, SpendSummary summary) loading,
    required TResult Function(List<Spend> spends, SpendSummary summary) data,
  }) {
    return loading(spends, summary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends, SpendSummary summary)? loading,
    TResult? Function(List<Spend> spends, SpendSummary summary)? data,
  }) {
    return loading?.call(spends, summary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends, SpendSummary summary)? loading,
    TResult Function(List<Spend> spends, SpendSummary summary)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(spends, summary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeSpendTodayState {
  const factory _Loading(final List<Spend> spends, final SpendSummary summary) =
      _$LoadingImpl;

  @override
  List<Spend> get spends;
  SpendSummary get summary;

  /// Create a copy of HomeSpendTodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $HomeSpendTodayStateCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Spend> spends, SpendSummary summary});

  $SpendSummaryCopyWith<$Res> get summary;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$HomeSpendTodayStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSpendTodayState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spends = null,
    Object? summary = null,
  }) {
    return _then(_$DataImpl(
      null == spends
          ? _value._spends
          : spends // ignore: cast_nullable_to_non_nullable
              as List<Spend>,
      null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as SpendSummary,
    ));
  }

  /// Create a copy of HomeSpendTodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpendSummaryCopyWith<$Res> get summary {
    return $SpendSummaryCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value));
    });
  }
}

/// @nodoc

class _$DataImpl implements _Data {
  const _$DataImpl(final List<Spend> spends, this.summary) : _spends = spends;

  final List<Spend> _spends;
  @override
  List<Spend> get spends {
    if (_spends is EqualUnmodifiableListView) return _spends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spends);
  }

  @override
  final SpendSummary summary;

  @override
  String toString() {
    return 'HomeSpendTodayState.data(spends: $spends, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._spends, _spends) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_spends), summary);

  /// Create a copy of HomeSpendTodayState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Spend> spends) initial,
    required TResult Function(List<Spend> spends, SpendSummary summary) loading,
    required TResult Function(List<Spend> spends, SpendSummary summary) data,
  }) {
    return data(spends, summary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Spend> spends)? initial,
    TResult? Function(List<Spend> spends, SpendSummary summary)? loading,
    TResult? Function(List<Spend> spends, SpendSummary summary)? data,
  }) {
    return data?.call(spends, summary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Spend> spends)? initial,
    TResult Function(List<Spend> spends, SpendSummary summary)? loading,
    TResult Function(List<Spend> spends, SpendSummary summary)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(spends, summary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements HomeSpendTodayState {
  const factory _Data(final List<Spend> spends, final SpendSummary summary) =
      _$DataImpl;

  @override
  List<Spend> get spends;
  SpendSummary get summary;

  /// Create a copy of HomeSpendTodayState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
