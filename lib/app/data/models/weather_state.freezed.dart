// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherStateInitial initial() {
    return const _WeatherStateInitial();
  }

  _WeatherStateLoading loading() {
    return const _WeatherStateLoading();
  }

  _WeatherStateData data(
      {required BaseWeather weather, required DateTime updatedAt}) {
    return _WeatherStateData(
      weather: weather,
      updatedAt: updatedAt,
    );
  }

  _WeatherStateError error([String? error]) {
    return _WeatherStateError(
      error,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseWeather weather, DateTime updatedAt) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseWeather weather, DateTime updatedAt)? data,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseWeather weather, DateTime updatedAt)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateData value) data,
    required TResult Function(_WeatherStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class _$WeatherStateInitialCopyWith<$Res> {
  factory _$WeatherStateInitialCopyWith(_WeatherStateInitial value,
          $Res Function(_WeatherStateInitial) then) =
      __$WeatherStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherStateInitialCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateInitialCopyWith<$Res> {
  __$WeatherStateInitialCopyWithImpl(
      _WeatherStateInitial _value, $Res Function(_WeatherStateInitial) _then)
      : super(_value, (v) => _then(v as _WeatherStateInitial));

  @override
  _WeatherStateInitial get _value => super._value as _WeatherStateInitial;
}

/// @nodoc

class _$_WeatherStateInitial implements _WeatherStateInitial {
  const _$_WeatherStateInitial();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WeatherStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseWeather weather, DateTime updatedAt) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseWeather weather, DateTime updatedAt)? data,
    TResult Function(String? error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseWeather weather, DateTime updatedAt)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateData value) data,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateInitial implements WeatherState {
  const factory _WeatherStateInitial() = _$_WeatherStateInitial;
}

/// @nodoc
abstract class _$WeatherStateLoadingCopyWith<$Res> {
  factory _$WeatherStateLoadingCopyWith(_WeatherStateLoading value,
          $Res Function(_WeatherStateLoading) then) =
      __$WeatherStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeatherStateLoadingCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateLoadingCopyWith<$Res> {
  __$WeatherStateLoadingCopyWithImpl(
      _WeatherStateLoading _value, $Res Function(_WeatherStateLoading) _then)
      : super(_value, (v) => _then(v as _WeatherStateLoading));

  @override
  _WeatherStateLoading get _value => super._value as _WeatherStateLoading;
}

/// @nodoc

class _$_WeatherStateLoading implements _WeatherStateLoading {
  const _$_WeatherStateLoading();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WeatherStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseWeather weather, DateTime updatedAt) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseWeather weather, DateTime updatedAt)? data,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseWeather weather, DateTime updatedAt)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateData value) data,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateLoading implements WeatherState {
  const factory _WeatherStateLoading() = _$_WeatherStateLoading;
}

/// @nodoc
abstract class _$WeatherStateDataCopyWith<$Res> {
  factory _$WeatherStateDataCopyWith(
          _WeatherStateData value, $Res Function(_WeatherStateData) then) =
      __$WeatherStateDataCopyWithImpl<$Res>;
  $Res call({BaseWeather weather, DateTime updatedAt});
}

/// @nodoc
class __$WeatherStateDataCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateDataCopyWith<$Res> {
  __$WeatherStateDataCopyWithImpl(
      _WeatherStateData _value, $Res Function(_WeatherStateData) _then)
      : super(_value, (v) => _then(v as _WeatherStateData));

  @override
  _WeatherStateData get _value => super._value as _WeatherStateData;

  @override
  $Res call({
    Object? weather = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_WeatherStateData(
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as BaseWeather,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_WeatherStateData implements _WeatherStateData {
  const _$_WeatherStateData({required this.weather, required this.updatedAt});

  @override
  final BaseWeather weather;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'WeatherState.data(weather: $weather, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherStateData &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weather),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$WeatherStateDataCopyWith<_WeatherStateData> get copyWith =>
      __$WeatherStateDataCopyWithImpl<_WeatherStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseWeather weather, DateTime updatedAt) data,
    required TResult Function(String? error) error,
  }) {
    return data(weather, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseWeather weather, DateTime updatedAt)? data,
    TResult Function(String? error)? error,
  }) {
    return data?.call(weather, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseWeather weather, DateTime updatedAt)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(weather, updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateData value) data,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateData implements WeatherState {
  const factory _WeatherStateData(
      {required BaseWeather weather,
      required DateTime updatedAt}) = _$_WeatherStateData;

  BaseWeather get weather;
  DateTime get updatedAt;
  @JsonKey(ignore: true)
  _$WeatherStateDataCopyWith<_WeatherStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeatherStateErrorCopyWith<$Res> {
  factory _$WeatherStateErrorCopyWith(
          _WeatherStateError value, $Res Function(_WeatherStateError) then) =
      __$WeatherStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$WeatherStateErrorCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateErrorCopyWith<$Res> {
  __$WeatherStateErrorCopyWithImpl(
      _WeatherStateError _value, $Res Function(_WeatherStateError) _then)
      : super(_value, (v) => _then(v as _WeatherStateError));

  @override
  _WeatherStateError get _value => super._value as _WeatherStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_WeatherStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WeatherStateError implements _WeatherStateError {
  const _$_WeatherStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'WeatherState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$WeatherStateErrorCopyWith<_WeatherStateError> get copyWith =>
      __$WeatherStateErrorCopyWithImpl<_WeatherStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseWeather weather, DateTime updatedAt) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseWeather weather, DateTime updatedAt)? data,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseWeather weather, DateTime updatedAt)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateInitial value) initial,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateData value) data,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateInitial value)? initial,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateError implements WeatherState {
  const factory _WeatherStateError([String? error]) = _$_WeatherStateError;

  String? get error;
  @JsonKey(ignore: true)
  _$WeatherStateErrorCopyWith<_WeatherStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
