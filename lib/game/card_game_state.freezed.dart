// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardGameState _$CardGameStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _Initial.fromJson(json);
    case 'bidding':
      return _Bidding.fromJson(json);
    case 'loading':
      return _Loading.fromJson(json);
    case 'error':
      return _Error.fromJson(json);
    case 'readyToStart':
      return _ReadyToStart.fromJson(json);
    case 'inProgress':
      return _InProgress.fromJson(json);
    case 'gameOver':
      return _GameOver.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CardGameState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CardGameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bidding,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() readyToStart,
    required TResult Function() inProgress,
    required TResult Function() gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bidding,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? readyToStart,
    TResult? Function()? inProgress,
    TResult? Function()? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bidding,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? readyToStart,
    TResult Function()? inProgress,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Bidding value) bidding,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToStart value) readyToStart,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_GameOver value) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Bidding value)? bidding,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ReadyToStart value)? readyToStart,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Bidding value)? bidding,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToStart value)? readyToStart,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardGameStateCopyWith<$Res> {
  factory $CardGameStateCopyWith(
          CardGameState value, $Res Function(CardGameState) then) =
      _$CardGameStateCopyWithImpl<$Res, CardGameState>;
}

/// @nodoc
class _$CardGameStateCopyWithImpl<$Res, $Val extends CardGameState>
    implements $CardGameStateCopyWith<$Res> {
  _$CardGameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CardGameStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$InitialImpl extends _Initial {
  const _$InitialImpl({final String? $type})
      : $type = $type ?? 'initial',
        super._();

  factory _$InitialImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CardGameState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bidding,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() readyToStart,
    required TResult Function() inProgress,
    required TResult Function() gameOver,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bidding,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? readyToStart,
    TResult? Function()? inProgress,
    TResult? Function()? gameOver,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bidding,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? readyToStart,
    TResult Function()? inProgress,
    TResult Function()? gameOver,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Bidding value) bidding,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToStart value) readyToStart,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Bidding value)? bidding,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ReadyToStart value)? readyToStart,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Bidding value)? bidding,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToStart value)? readyToStart,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InitialImplToJson(
      this,
    );
  }
}

abstract class _Initial extends CardGameState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();

  factory _Initial.fromJson(Map<String, dynamic> json) = _$InitialImpl.fromJson;
}

/// @nodoc
abstract class _$$BiddingImplCopyWith<$Res> {
  factory _$$BiddingImplCopyWith(
          _$BiddingImpl value, $Res Function(_$BiddingImpl) then) =
      __$$BiddingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BiddingImplCopyWithImpl<$Res>
    extends _$CardGameStateCopyWithImpl<$Res, _$BiddingImpl>
    implements _$$BiddingImplCopyWith<$Res> {
  __$$BiddingImplCopyWithImpl(
      _$BiddingImpl _value, $Res Function(_$BiddingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BiddingImpl extends _Bidding {
  const _$BiddingImpl({final String? $type})
      : $type = $type ?? 'bidding',
        super._();

  factory _$BiddingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BiddingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CardGameState.bidding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BiddingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bidding,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() readyToStart,
    required TResult Function() inProgress,
    required TResult Function() gameOver,
  }) {
    return bidding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bidding,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? readyToStart,
    TResult? Function()? inProgress,
    TResult? Function()? gameOver,
  }) {
    return bidding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bidding,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? readyToStart,
    TResult Function()? inProgress,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) {
    if (bidding != null) {
      return bidding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Bidding value) bidding,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToStart value) readyToStart,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return bidding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Bidding value)? bidding,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ReadyToStart value)? readyToStart,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return bidding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Bidding value)? bidding,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToStart value)? readyToStart,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (bidding != null) {
      return bidding(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BiddingImplToJson(
      this,
    );
  }
}

abstract class _Bidding extends CardGameState {
  const factory _Bidding() = _$BiddingImpl;
  const _Bidding._() : super._();

  factory _Bidding.fromJson(Map<String, dynamic> json) = _$BiddingImpl.fromJson;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CardGameStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoadingImpl extends _Loading {
  const _$LoadingImpl({final String? $type})
      : $type = $type ?? 'loading',
        super._();

  factory _$LoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CardGameState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bidding,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() readyToStart,
    required TResult Function() inProgress,
    required TResult Function() gameOver,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bidding,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? readyToStart,
    TResult? Function()? inProgress,
    TResult? Function()? gameOver,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bidding,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? readyToStart,
    TResult Function()? inProgress,
    TResult Function()? gameOver,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Bidding value) bidding,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToStart value) readyToStart,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Bidding value)? bidding,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ReadyToStart value)? readyToStart,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Bidding value)? bidding,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToStart value)? readyToStart,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingImplToJson(
      this,
    );
  }
}

abstract class _Loading extends CardGameState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();

  factory _Loading.fromJson(Map<String, dynamic> json) = _$LoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CardGameStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorImpl extends _Error {
  const _$ErrorImpl(this.error, {final String? $type})
      : $type = $type ?? 'error',
        super._();

  factory _$ErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorImplFromJson(json);

  @override
  final String error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CardGameState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bidding,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() readyToStart,
    required TResult Function() inProgress,
    required TResult Function() gameOver,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bidding,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? readyToStart,
    TResult? Function()? inProgress,
    TResult? Function()? gameOver,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bidding,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? readyToStart,
    TResult Function()? inProgress,
    TResult Function()? gameOver,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Bidding value) bidding,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToStart value) readyToStart,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Bidding value)? bidding,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ReadyToStart value)? readyToStart,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Bidding value)? bidding,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToStart value)? readyToStart,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorImplToJson(
      this,
    );
  }
}

abstract class _Error extends CardGameState {
  const factory _Error(final String error) = _$ErrorImpl;
  const _Error._() : super._();

  factory _Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadyToStartImplCopyWith<$Res> {
  factory _$$ReadyToStartImplCopyWith(
          _$ReadyToStartImpl value, $Res Function(_$ReadyToStartImpl) then) =
      __$$ReadyToStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadyToStartImplCopyWithImpl<$Res>
    extends _$CardGameStateCopyWithImpl<$Res, _$ReadyToStartImpl>
    implements _$$ReadyToStartImplCopyWith<$Res> {
  __$$ReadyToStartImplCopyWithImpl(
      _$ReadyToStartImpl _value, $Res Function(_$ReadyToStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ReadyToStartImpl extends _ReadyToStart {
  const _$ReadyToStartImpl({final String? $type})
      : $type = $type ?? 'readyToStart',
        super._();

  factory _$ReadyToStartImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadyToStartImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CardGameState.readyToStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadyToStartImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bidding,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() readyToStart,
    required TResult Function() inProgress,
    required TResult Function() gameOver,
  }) {
    return readyToStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bidding,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? readyToStart,
    TResult? Function()? inProgress,
    TResult? Function()? gameOver,
  }) {
    return readyToStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bidding,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? readyToStart,
    TResult Function()? inProgress,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) {
    if (readyToStart != null) {
      return readyToStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Bidding value) bidding,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToStart value) readyToStart,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return readyToStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Bidding value)? bidding,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ReadyToStart value)? readyToStart,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return readyToStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Bidding value)? bidding,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToStart value)? readyToStart,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (readyToStart != null) {
      return readyToStart(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadyToStartImplToJson(
      this,
    );
  }
}

abstract class _ReadyToStart extends CardGameState {
  const factory _ReadyToStart() = _$ReadyToStartImpl;
  const _ReadyToStart._() : super._();

  factory _ReadyToStart.fromJson(Map<String, dynamic> json) =
      _$ReadyToStartImpl.fromJson;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$CardGameStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$InProgressImpl extends _InProgress {
  const _$InProgressImpl({final String? $type})
      : $type = $type ?? 'inProgress',
        super._();

  factory _$InProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$InProgressImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CardGameState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bidding,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() readyToStart,
    required TResult Function() inProgress,
    required TResult Function() gameOver,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bidding,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? readyToStart,
    TResult? Function()? inProgress,
    TResult? Function()? gameOver,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bidding,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? readyToStart,
    TResult Function()? inProgress,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Bidding value) bidding,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToStart value) readyToStart,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Bidding value)? bidding,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ReadyToStart value)? readyToStart,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Bidding value)? bidding,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToStart value)? readyToStart,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InProgressImplToJson(
      this,
    );
  }
}

abstract class _InProgress extends CardGameState {
  const factory _InProgress() = _$InProgressImpl;
  const _InProgress._() : super._();

  factory _InProgress.fromJson(Map<String, dynamic> json) =
      _$InProgressImpl.fromJson;
}

/// @nodoc
abstract class _$$GameOverImplCopyWith<$Res> {
  factory _$$GameOverImplCopyWith(
          _$GameOverImpl value, $Res Function(_$GameOverImpl) then) =
      __$$GameOverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameOverImplCopyWithImpl<$Res>
    extends _$CardGameStateCopyWithImpl<$Res, _$GameOverImpl>
    implements _$$GameOverImplCopyWith<$Res> {
  __$$GameOverImplCopyWithImpl(
      _$GameOverImpl _value, $Res Function(_$GameOverImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$GameOverImpl extends _GameOver {
  const _$GameOverImpl({final String? $type})
      : $type = $type ?? 'gameOver',
        super._();

  factory _$GameOverImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameOverImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CardGameState.gameOver()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameOverImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() bidding,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() readyToStart,
    required TResult Function() inProgress,
    required TResult Function() gameOver,
  }) {
    return gameOver();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? bidding,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? readyToStart,
    TResult? Function()? inProgress,
    TResult? Function()? gameOver,
  }) {
    return gameOver?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? bidding,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? readyToStart,
    TResult Function()? inProgress,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Bidding value) bidding,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToStart value) readyToStart,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Bidding value)? bidding,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ReadyToStart value)? readyToStart,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return gameOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Bidding value)? bidding,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToStart value)? readyToStart,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GameOverImplToJson(
      this,
    );
  }
}

abstract class _GameOver extends CardGameState {
  const factory _GameOver() = _$GameOverImpl;
  const _GameOver._() : super._();

  factory _GameOver.fromJson(Map<String, dynamic> json) =
      _$GameOverImpl.fromJson;
}
