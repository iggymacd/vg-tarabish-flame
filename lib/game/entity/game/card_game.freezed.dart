// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardGameView {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)
        tarabish,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() readyToStart,
    required TResult Function() inProgress,
    required TResult Function() gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? readyToStart,
    TResult? Function()? inProgress,
    TResult? Function()? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult Function()? initial,
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
    required TResult Function(_TarabishGame value) tarabish,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToStart value) readyToStart,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_GameOver value) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TarabishGame value)? tarabish,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ReadyToStart value)? readyToStart,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TarabishGame value)? tarabish,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToStart value)? readyToStart,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardGameViewCopyWith<$Res> {
  factory $CardGameViewCopyWith(
          CardGameView value, $Res Function(CardGameView) then) =
      _$CardGameViewCopyWithImpl<$Res, CardGameView>;
}

/// @nodoc
class _$CardGameViewCopyWithImpl<$Res, $Val extends CardGameView>
    implements $CardGameViewCopyWith<$Res> {
  _$CardGameViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TarabishGameImplCopyWith<$Res> {
  factory _$$TarabishGameImplCopyWith(
          _$TarabishGameImpl value, $Res Function(_$TarabishGameImpl) then) =
      __$$TarabishGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String gameId, List<CardGameAction> actions, int? playerPosition});
}

/// @nodoc
class __$$TarabishGameImplCopyWithImpl<$Res>
    extends _$CardGameViewCopyWithImpl<$Res, _$TarabishGameImpl>
    implements _$$TarabishGameImplCopyWith<$Res> {
  __$$TarabishGameImplCopyWithImpl(
      _$TarabishGameImpl _value, $Res Function(_$TarabishGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? actions = null,
    Object? playerPosition = freezed,
  }) {
    return _then(_$TarabishGameImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<CardGameAction>,
      playerPosition: freezed == playerPosition
          ? _value.playerPosition
          : playerPosition // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$TarabishGameImpl extends _TarabishGame {
  const _$TarabishGameImpl(
      {required this.gameId,
      required final List<CardGameAction> actions,
      this.playerPosition})
      : _actions = actions,
        super._();

  @override
  final String gameId;
  final List<CardGameAction> _actions;
  @override
  List<CardGameAction> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  final int? playerPosition;

  @override
  String toString() {
    return 'CardGameView.tarabish(gameId: $gameId, actions: $actions, playerPosition: $playerPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TarabishGameImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.playerPosition, playerPosition) ||
                other.playerPosition == playerPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId,
      const DeepCollectionEquality().hash(_actions), playerPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TarabishGameImplCopyWith<_$TarabishGameImpl> get copyWith =>
      __$$TarabishGameImplCopyWithImpl<_$TarabishGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)
        tarabish,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function() readyToStart,
    required TResult Function() inProgress,
    required TResult Function() gameOver,
  }) {
    return tarabish(gameId, actions, playerPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function()? readyToStart,
    TResult? Function()? inProgress,
    TResult? Function()? gameOver,
  }) {
    return tarabish?.call(gameId, actions, playerPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function()? readyToStart,
    TResult Function()? inProgress,
    TResult Function()? gameOver,
    required TResult orElse(),
  }) {
    if (tarabish != null) {
      return tarabish(gameId, actions, playerPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TarabishGame value) tarabish,
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ReadyToStart value) readyToStart,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_GameOver value) gameOver,
  }) {
    return tarabish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TarabishGame value)? tarabish,
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_ReadyToStart value)? readyToStart,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_GameOver value)? gameOver,
  }) {
    return tarabish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TarabishGame value)? tarabish,
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ReadyToStart value)? readyToStart,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (tarabish != null) {
      return tarabish(this);
    }
    return orElse();
  }
}

abstract class _TarabishGame extends CardGameView {
  const factory _TarabishGame(
      {required final String gameId,
      required final List<CardGameAction> actions,
      final int? playerPosition}) = _$TarabishGameImpl;
  const _TarabishGame._() : super._();

  String get gameId;
  List<CardGameAction> get actions;
  int? get playerPosition;
  @JsonKey(ignore: true)
  _$$TarabishGameImplCopyWith<_$TarabishGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CardGameViewCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'CardGameView.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)
        tarabish,
    required TResult Function() initial,
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
    TResult? Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult? Function()? initial,
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
    TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult Function()? initial,
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
    required TResult Function(_TarabishGame value) tarabish,
    required TResult Function(_Initial value) initial,
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
    TResult? Function(_TarabishGame value)? tarabish,
    TResult? Function(_Initial value)? initial,
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
    TResult Function(_TarabishGame value)? tarabish,
    TResult Function(_Initial value)? initial,
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
}

abstract class _Initial extends CardGameView {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CardGameViewCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'CardGameView.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)
        tarabish,
    required TResult Function() initial,
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
    TResult? Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult? Function()? initial,
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
    TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult Function()? initial,
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
    required TResult Function(_TarabishGame value) tarabish,
    required TResult Function(_Initial value) initial,
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
    TResult? Function(_TarabishGame value)? tarabish,
    TResult? Function(_Initial value)? initial,
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
    TResult Function(_TarabishGame value)? tarabish,
    TResult Function(_Initial value)? initial,
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
}

abstract class _Loading extends CardGameView {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
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
    extends _$CardGameViewCopyWithImpl<$Res, _$ErrorImpl>
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

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(this.error) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'CardGameView.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

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
    required TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)
        tarabish,
    required TResult Function() initial,
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
    TResult? Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult? Function()? initial,
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
    TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult Function()? initial,
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
    required TResult Function(_TarabishGame value) tarabish,
    required TResult Function(_Initial value) initial,
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
    TResult? Function(_TarabishGame value)? tarabish,
    TResult? Function(_Initial value)? initial,
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
    TResult Function(_TarabishGame value)? tarabish,
    TResult Function(_Initial value)? initial,
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
}

abstract class _Error extends CardGameView {
  const factory _Error(final String error) = _$ErrorImpl;
  const _Error._() : super._();

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
    extends _$CardGameViewCopyWithImpl<$Res, _$ReadyToStartImpl>
    implements _$$ReadyToStartImplCopyWith<$Res> {
  __$$ReadyToStartImplCopyWithImpl(
      _$ReadyToStartImpl _value, $Res Function(_$ReadyToStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadyToStartImpl extends _ReadyToStart {
  const _$ReadyToStartImpl() : super._();

  @override
  String toString() {
    return 'CardGameView.readyToStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadyToStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)
        tarabish,
    required TResult Function() initial,
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
    TResult? Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult? Function()? initial,
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
    TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult Function()? initial,
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
    required TResult Function(_TarabishGame value) tarabish,
    required TResult Function(_Initial value) initial,
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
    TResult? Function(_TarabishGame value)? tarabish,
    TResult? Function(_Initial value)? initial,
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
    TResult Function(_TarabishGame value)? tarabish,
    TResult Function(_Initial value)? initial,
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
}

abstract class _ReadyToStart extends CardGameView {
  const factory _ReadyToStart() = _$ReadyToStartImpl;
  const _ReadyToStart._() : super._();
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$CardGameViewCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InProgressImpl extends _InProgress {
  const _$InProgressImpl() : super._();

  @override
  String toString() {
    return 'CardGameView.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)
        tarabish,
    required TResult Function() initial,
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
    TResult? Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult? Function()? initial,
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
    TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult Function()? initial,
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
    required TResult Function(_TarabishGame value) tarabish,
    required TResult Function(_Initial value) initial,
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
    TResult? Function(_TarabishGame value)? tarabish,
    TResult? Function(_Initial value)? initial,
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
    TResult Function(_TarabishGame value)? tarabish,
    TResult Function(_Initial value)? initial,
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
}

abstract class _InProgress extends CardGameView {
  const factory _InProgress() = _$InProgressImpl;
  const _InProgress._() : super._();
}

/// @nodoc
abstract class _$$GameOverImplCopyWith<$Res> {
  factory _$$GameOverImplCopyWith(
          _$GameOverImpl value, $Res Function(_$GameOverImpl) then) =
      __$$GameOverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameOverImplCopyWithImpl<$Res>
    extends _$CardGameViewCopyWithImpl<$Res, _$GameOverImpl>
    implements _$$GameOverImplCopyWith<$Res> {
  __$$GameOverImplCopyWithImpl(
      _$GameOverImpl _value, $Res Function(_$GameOverImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameOverImpl extends _GameOver {
  const _$GameOverImpl() : super._();

  @override
  String toString() {
    return 'CardGameView.gameOver()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameOverImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)
        tarabish,
    required TResult Function() initial,
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
    TResult? Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult? Function()? initial,
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
    TResult Function(
            String gameId, List<CardGameAction> actions, int? playerPosition)?
        tarabish,
    TResult Function()? initial,
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
    required TResult Function(_TarabishGame value) tarabish,
    required TResult Function(_Initial value) initial,
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
    TResult? Function(_TarabishGame value)? tarabish,
    TResult? Function(_Initial value)? initial,
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
    TResult Function(_TarabishGame value)? tarabish,
    TResult Function(_Initial value)? initial,
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
}

abstract class _GameOver extends CardGameView {
  const factory _GameOver() = _$GameOverImpl;
  const _GameOver._() : super._();
}
