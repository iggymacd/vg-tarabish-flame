// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_in_progress_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameInProgressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) initial,
    required TResult Function(bool play) pauseStartGame,
    required TResult Function(int playerPosition) inviteBot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId)? initial,
    TResult? Function(bool play)? pauseStartGame,
    TResult? Function(int playerPosition)? inviteBot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? initial,
    TResult Function(bool play)? pauseStartGame,
    TResult Function(int playerPosition)? inviteBot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PauseStartGame value) pauseStartGame,
    required TResult Function(InviteBot value) inviteBot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PauseStartGame value)? pauseStartGame,
    TResult? Function(InviteBot value)? inviteBot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PauseStartGame value)? pauseStartGame,
    TResult Function(InviteBot value)? inviteBot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInProgressEventCopyWith<$Res> {
  factory $GameInProgressEventCopyWith(
          GameInProgressEvent value, $Res Function(GameInProgressEvent) then) =
      _$GameInProgressEventCopyWithImpl<$Res, GameInProgressEvent>;
}

/// @nodoc
class _$GameInProgressEventCopyWithImpl<$Res, $Val extends GameInProgressEvent>
    implements $GameInProgressEventCopyWith<$Res> {
  _$GameInProgressEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String gameId});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GameInProgressEventCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
  }) {
    return _then(_$InitialImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.gameId = ''});

  @override
  @JsonKey()
  final String gameId;

  @override
  String toString() {
    return 'GameInProgressEvent.initial(gameId: $gameId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) initial,
    required TResult Function(bool play) pauseStartGame,
    required TResult Function(int playerPosition) inviteBot,
  }) {
    return initial(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId)? initial,
    TResult? Function(bool play)? pauseStartGame,
    TResult? Function(int playerPosition)? inviteBot,
  }) {
    return initial?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? initial,
    TResult Function(bool play)? pauseStartGame,
    TResult Function(int playerPosition)? inviteBot,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PauseStartGame value) pauseStartGame,
    required TResult Function(InviteBot value) inviteBot,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PauseStartGame value)? pauseStartGame,
    TResult? Function(InviteBot value)? inviteBot,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PauseStartGame value)? pauseStartGame,
    TResult Function(InviteBot value)? inviteBot,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameInProgressEvent {
  const factory _Initial({final String gameId}) = _$InitialImpl;

  String get gameId;
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseStartGameImplCopyWith<$Res> {
  factory _$$PauseStartGameImplCopyWith(_$PauseStartGameImpl value,
          $Res Function(_$PauseStartGameImpl) then) =
      __$$PauseStartGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool play});
}

/// @nodoc
class __$$PauseStartGameImplCopyWithImpl<$Res>
    extends _$GameInProgressEventCopyWithImpl<$Res, _$PauseStartGameImpl>
    implements _$$PauseStartGameImplCopyWith<$Res> {
  __$$PauseStartGameImplCopyWithImpl(
      _$PauseStartGameImpl _value, $Res Function(_$PauseStartGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? play = null,
  }) {
    return _then(_$PauseStartGameImpl(
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PauseStartGameImpl implements PauseStartGame {
  const _$PauseStartGameImpl({this.play = false});

// required String gameId,
  @override
  @JsonKey()
  final bool play;

  @override
  String toString() {
    return 'GameInProgressEvent.pauseStartGame(play: $play)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseStartGameImpl &&
            (identical(other.play, play) || other.play == play));
  }

  @override
  int get hashCode => Object.hash(runtimeType, play);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PauseStartGameImplCopyWith<_$PauseStartGameImpl> get copyWith =>
      __$$PauseStartGameImplCopyWithImpl<_$PauseStartGameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) initial,
    required TResult Function(bool play) pauseStartGame,
    required TResult Function(int playerPosition) inviteBot,
  }) {
    return pauseStartGame(play);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId)? initial,
    TResult? Function(bool play)? pauseStartGame,
    TResult? Function(int playerPosition)? inviteBot,
  }) {
    return pauseStartGame?.call(play);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? initial,
    TResult Function(bool play)? pauseStartGame,
    TResult Function(int playerPosition)? inviteBot,
    required TResult orElse(),
  }) {
    if (pauseStartGame != null) {
      return pauseStartGame(play);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PauseStartGame value) pauseStartGame,
    required TResult Function(InviteBot value) inviteBot,
  }) {
    return pauseStartGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PauseStartGame value)? pauseStartGame,
    TResult? Function(InviteBot value)? inviteBot,
  }) {
    return pauseStartGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PauseStartGame value)? pauseStartGame,
    TResult Function(InviteBot value)? inviteBot,
    required TResult orElse(),
  }) {
    if (pauseStartGame != null) {
      return pauseStartGame(this);
    }
    return orElse();
  }
}

abstract class PauseStartGame implements GameInProgressEvent {
  const factory PauseStartGame({final bool play}) = _$PauseStartGameImpl;

// required String gameId,
  bool get play;
  @JsonKey(ignore: true)
  _$$PauseStartGameImplCopyWith<_$PauseStartGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InviteBotImplCopyWith<$Res> {
  factory _$$InviteBotImplCopyWith(
          _$InviteBotImpl value, $Res Function(_$InviteBotImpl) then) =
      __$$InviteBotImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int playerPosition});
}

/// @nodoc
class __$$InviteBotImplCopyWithImpl<$Res>
    extends _$GameInProgressEventCopyWithImpl<$Res, _$InviteBotImpl>
    implements _$$InviteBotImplCopyWith<$Res> {
  __$$InviteBotImplCopyWithImpl(
      _$InviteBotImpl _value, $Res Function(_$InviteBotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerPosition = null,
  }) {
    return _then(_$InviteBotImpl(
      playerPosition: null == playerPosition
          ? _value.playerPosition
          : playerPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InviteBotImpl implements InviteBot {
  const _$InviteBotImpl({required this.playerPosition});

  @override
  final int playerPosition;

  @override
  String toString() {
    return 'GameInProgressEvent.inviteBot(playerPosition: $playerPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteBotImpl &&
            (identical(other.playerPosition, playerPosition) ||
                other.playerPosition == playerPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, playerPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteBotImplCopyWith<_$InviteBotImpl> get copyWith =>
      __$$InviteBotImplCopyWithImpl<_$InviteBotImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) initial,
    required TResult Function(bool play) pauseStartGame,
    required TResult Function(int playerPosition) inviteBot,
  }) {
    return inviteBot(playerPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId)? initial,
    TResult? Function(bool play)? pauseStartGame,
    TResult? Function(int playerPosition)? inviteBot,
  }) {
    return inviteBot?.call(playerPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? initial,
    TResult Function(bool play)? pauseStartGame,
    TResult Function(int playerPosition)? inviteBot,
    required TResult orElse(),
  }) {
    if (inviteBot != null) {
      return inviteBot(playerPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PauseStartGame value) pauseStartGame,
    required TResult Function(InviteBot value) inviteBot,
  }) {
    return inviteBot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PauseStartGame value)? pauseStartGame,
    TResult? Function(InviteBot value)? inviteBot,
  }) {
    return inviteBot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PauseStartGame value)? pauseStartGame,
    TResult Function(InviteBot value)? inviteBot,
    required TResult orElse(),
  }) {
    if (inviteBot != null) {
      return inviteBot(this);
    }
    return orElse();
  }
}

abstract class InviteBot implements GameInProgressEvent {
  const factory InviteBot({required final int playerPosition}) =
      _$InviteBotImpl;

  int get playerPosition;
  @JsonKey(ignore: true)
  _$$InviteBotImplCopyWith<_$InviteBotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameInProgressState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInProgress) initial,
    required TResult Function(CardGameView cardGameView) playing,
    required TResult Function(CardGameView cardGameView) paused,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInProgress)? initial,
    TResult? Function(CardGameView cardGameView)? playing,
    TResult? Function(CardGameView cardGameView)? paused,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInProgress)? initial,
    TResult Function(CardGameView cardGameView)? playing,
    TResult Function(CardGameView cardGameView)? paused,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInProgressStateInitial value) initial,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInProgressStateInitial value)? initial,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInProgressStateInitial value)? initial,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameInProgressStateCopyWith<$Res> {
  factory $GameInProgressStateCopyWith(
          GameInProgressState value, $Res Function(GameInProgressState) then) =
      _$GameInProgressStateCopyWithImpl<$Res, GameInProgressState>;
}

/// @nodoc
class _$GameInProgressStateCopyWithImpl<$Res, $Val extends GameInProgressState>
    implements $GameInProgressStateCopyWith<$Res> {
  _$GameInProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GameInProgressStateInitialImplCopyWith<$Res> {
  factory _$$GameInProgressStateInitialImplCopyWith(
          _$GameInProgressStateInitialImpl value,
          $Res Function(_$GameInProgressStateInitialImpl) then) =
      __$$GameInProgressStateInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isInProgress});
}

/// @nodoc
class __$$GameInProgressStateInitialImplCopyWithImpl<$Res>
    extends _$GameInProgressStateCopyWithImpl<$Res,
        _$GameInProgressStateInitialImpl>
    implements _$$GameInProgressStateInitialImplCopyWith<$Res> {
  __$$GameInProgressStateInitialImplCopyWithImpl(
      _$GameInProgressStateInitialImpl _value,
      $Res Function(_$GameInProgressStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isInProgress = null,
  }) {
    return _then(_$GameInProgressStateInitialImpl(
      isInProgress: null == isInProgress
          ? _value.isInProgress
          : isInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GameInProgressStateInitialImpl implements GameInProgressStateInitial {
  const _$GameInProgressStateInitialImpl({this.isInProgress = false});

  @override
  @JsonKey()
  final bool isInProgress;

  @override
  String toString() {
    return 'GameInProgressState.initial(isInProgress: $isInProgress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameInProgressStateInitialImpl &&
            (identical(other.isInProgress, isInProgress) ||
                other.isInProgress == isInProgress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isInProgress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameInProgressStateInitialImplCopyWith<_$GameInProgressStateInitialImpl>
      get copyWith => __$$GameInProgressStateInitialImplCopyWithImpl<
          _$GameInProgressStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInProgress) initial,
    required TResult Function(CardGameView cardGameView) playing,
    required TResult Function(CardGameView cardGameView) paused,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return initial(isInProgress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInProgress)? initial,
    TResult? Function(CardGameView cardGameView)? playing,
    TResult? Function(CardGameView cardGameView)? paused,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return initial?.call(isInProgress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInProgress)? initial,
    TResult Function(CardGameView cardGameView)? playing,
    TResult Function(CardGameView cardGameView)? paused,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isInProgress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInProgressStateInitial value) initial,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInProgressStateInitial value)? initial,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInProgressStateInitial value)? initial,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GameInProgressStateInitial implements GameInProgressState {
  const factory GameInProgressStateInitial({final bool isInProgress}) =
      _$GameInProgressStateInitialImpl;

  bool get isInProgress;
  @JsonKey(ignore: true)
  _$$GameInProgressStateInitialImplCopyWith<_$GameInProgressStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayingImplCopyWith<$Res> {
  factory _$$PlayingImplCopyWith(
          _$PlayingImpl value, $Res Function(_$PlayingImpl) then) =
      __$$PlayingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CardGameView cardGameView});

  $CardGameViewCopyWith<$Res> get cardGameView;
}

/// @nodoc
class __$$PlayingImplCopyWithImpl<$Res>
    extends _$GameInProgressStateCopyWithImpl<$Res, _$PlayingImpl>
    implements _$$PlayingImplCopyWith<$Res> {
  __$$PlayingImplCopyWithImpl(
      _$PlayingImpl _value, $Res Function(_$PlayingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardGameView = null,
  }) {
    return _then(_$PlayingImpl(
      cardGameView: null == cardGameView
          ? _value.cardGameView
          : cardGameView // ignore: cast_nullable_to_non_nullable
              as CardGameView,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CardGameViewCopyWith<$Res> get cardGameView {
    return $CardGameViewCopyWith<$Res>(_value.cardGameView, (value) {
      return _then(_value.copyWith(cardGameView: value));
    });
  }
}

/// @nodoc

class _$PlayingImpl implements Playing {
  const _$PlayingImpl({required this.cardGameView});

  @override
  final CardGameView cardGameView;

  @override
  String toString() {
    return 'GameInProgressState.playing(cardGameView: $cardGameView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayingImpl &&
            (identical(other.cardGameView, cardGameView) ||
                other.cardGameView == cardGameView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardGameView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayingImplCopyWith<_$PlayingImpl> get copyWith =>
      __$$PlayingImplCopyWithImpl<_$PlayingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInProgress) initial,
    required TResult Function(CardGameView cardGameView) playing,
    required TResult Function(CardGameView cardGameView) paused,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return playing(cardGameView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInProgress)? initial,
    TResult? Function(CardGameView cardGameView)? playing,
    TResult? Function(CardGameView cardGameView)? paused,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return playing?.call(cardGameView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInProgress)? initial,
    TResult Function(CardGameView cardGameView)? playing,
    TResult Function(CardGameView cardGameView)? paused,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(cardGameView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInProgressStateInitial value) initial,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Error value) error,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInProgressStateInitial value)? initial,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Error value)? error,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInProgressStateInitial value)? initial,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class Playing implements GameInProgressState {
  const factory Playing({required final CardGameView cardGameView}) =
      _$PlayingImpl;

  CardGameView get cardGameView;
  @JsonKey(ignore: true)
  _$$PlayingImplCopyWith<_$PlayingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PausedImplCopyWith<$Res> {
  factory _$$PausedImplCopyWith(
          _$PausedImpl value, $Res Function(_$PausedImpl) then) =
      __$$PausedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CardGameView cardGameView});

  $CardGameViewCopyWith<$Res> get cardGameView;
}

/// @nodoc
class __$$PausedImplCopyWithImpl<$Res>
    extends _$GameInProgressStateCopyWithImpl<$Res, _$PausedImpl>
    implements _$$PausedImplCopyWith<$Res> {
  __$$PausedImplCopyWithImpl(
      _$PausedImpl _value, $Res Function(_$PausedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardGameView = null,
  }) {
    return _then(_$PausedImpl(
      cardGameView: null == cardGameView
          ? _value.cardGameView
          : cardGameView // ignore: cast_nullable_to_non_nullable
              as CardGameView,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CardGameViewCopyWith<$Res> get cardGameView {
    return $CardGameViewCopyWith<$Res>(_value.cardGameView, (value) {
      return _then(_value.copyWith(cardGameView: value));
    });
  }
}

/// @nodoc

class _$PausedImpl implements Paused {
  const _$PausedImpl({required this.cardGameView});

  @override
  final CardGameView cardGameView;

  @override
  String toString() {
    return 'GameInProgressState.paused(cardGameView: $cardGameView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PausedImpl &&
            (identical(other.cardGameView, cardGameView) ||
                other.cardGameView == cardGameView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardGameView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PausedImplCopyWith<_$PausedImpl> get copyWith =>
      __$$PausedImplCopyWithImpl<_$PausedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInProgress) initial,
    required TResult Function(CardGameView cardGameView) playing,
    required TResult Function(CardGameView cardGameView) paused,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return paused(cardGameView);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInProgress)? initial,
    TResult? Function(CardGameView cardGameView)? playing,
    TResult? Function(CardGameView cardGameView)? paused,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return paused?.call(cardGameView);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInProgress)? initial,
    TResult Function(CardGameView cardGameView)? playing,
    TResult Function(CardGameView cardGameView)? paused,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(cardGameView);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInProgressStateInitial value) initial,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Error value) error,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInProgressStateInitial value)? initial,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Error value)? error,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInProgressStateInitial value)? initial,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class Paused implements GameInProgressState {
  const factory Paused({required final CardGameView cardGameView}) =
      _$PausedImpl;

  CardGameView get cardGameView;
  @JsonKey(ignore: true)
  _$$PausedImplCopyWith<_$PausedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$GameInProgressStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ErrorImpl(
      error: null == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.error, required this.stackTrace});

// required CardGameView cardGameView,
  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GameInProgressState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isInProgress) initial,
    required TResult Function(CardGameView cardGameView) playing,
    required TResult Function(CardGameView cardGameView) paused,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isInProgress)? initial,
    TResult? Function(CardGameView cardGameView)? playing,
    TResult? Function(CardGameView cardGameView)? paused,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isInProgress)? initial,
    TResult Function(CardGameView cardGameView)? playing,
    TResult Function(CardGameView cardGameView)? paused,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameInProgressStateInitial value) initial,
    required TResult Function(Playing value) playing,
    required TResult Function(Paused value) paused,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameInProgressStateInitial value)? initial,
    TResult? Function(Playing value)? playing,
    TResult? Function(Paused value)? paused,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameInProgressStateInitial value)? initial,
    TResult Function(Playing value)? playing,
    TResult Function(Paused value)? paused,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GameInProgressState {
  const factory Error(
      {required final Object error,
      required final StackTrace stackTrace}) = _$ErrorImpl;

// required CardGameView cardGameView,
  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
