// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_game_bus_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayerGameBusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAction,
    required TResult Function() gameStateUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playerAction,
    TResult? Function()? gameStateUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAction,
    TResult Function()? gameStateUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PlayerAction value) playerAction,
    required TResult Function(GameStateUpdate value) gameStateUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PlayerAction value)? playerAction,
    TResult? Function(GameStateUpdate value)? gameStateUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PlayerAction value)? playerAction,
    TResult Function(GameStateUpdate value)? gameStateUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerGameBusEventCopyWith<$Res> {
  factory $PlayerGameBusEventCopyWith(
          PlayerGameBusEvent value, $Res Function(PlayerGameBusEvent) then) =
      _$PlayerGameBusEventCopyWithImpl<$Res, PlayerGameBusEvent>;
}

/// @nodoc
class _$PlayerGameBusEventCopyWithImpl<$Res, $Val extends PlayerGameBusEvent>
    implements $PlayerGameBusEventCopyWith<$Res> {
  _$PlayerGameBusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PlayerGameBusEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PlayerGameBusEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAction,
    required TResult Function() gameStateUpdate,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playerAction,
    TResult? Function()? gameStateUpdate,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAction,
    TResult Function()? gameStateUpdate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PlayerAction value) playerAction,
    required TResult Function(GameStateUpdate value) gameStateUpdate,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PlayerAction value)? playerAction,
    TResult? Function(GameStateUpdate value)? gameStateUpdate,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PlayerAction value)? playerAction,
    TResult Function(GameStateUpdate value)? gameStateUpdate,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PlayerGameBusEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PlayerActionImplCopyWith<$Res> {
  factory _$$PlayerActionImplCopyWith(
          _$PlayerActionImpl value, $Res Function(_$PlayerActionImpl) then) =
      __$$PlayerActionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayerActionImplCopyWithImpl<$Res>
    extends _$PlayerGameBusEventCopyWithImpl<$Res, _$PlayerActionImpl>
    implements _$$PlayerActionImplCopyWith<$Res> {
  __$$PlayerActionImplCopyWithImpl(
      _$PlayerActionImpl _value, $Res Function(_$PlayerActionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayerActionImpl implements PlayerAction {
  const _$PlayerActionImpl();

  @override
  String toString() {
    return 'PlayerGameBusEvent.playerAction()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayerActionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAction,
    required TResult Function() gameStateUpdate,
  }) {
    return playerAction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playerAction,
    TResult? Function()? gameStateUpdate,
  }) {
    return playerAction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAction,
    TResult Function()? gameStateUpdate,
    required TResult orElse(),
  }) {
    if (playerAction != null) {
      return playerAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PlayerAction value) playerAction,
    required TResult Function(GameStateUpdate value) gameStateUpdate,
  }) {
    return playerAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PlayerAction value)? playerAction,
    TResult? Function(GameStateUpdate value)? gameStateUpdate,
  }) {
    return playerAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PlayerAction value)? playerAction,
    TResult Function(GameStateUpdate value)? gameStateUpdate,
    required TResult orElse(),
  }) {
    if (playerAction != null) {
      return playerAction(this);
    }
    return orElse();
  }
}

abstract class PlayerAction implements PlayerGameBusEvent {
  const factory PlayerAction() = _$PlayerActionImpl;
}

/// @nodoc
abstract class _$$GameStateUpdateImplCopyWith<$Res> {
  factory _$$GameStateUpdateImplCopyWith(_$GameStateUpdateImpl value,
          $Res Function(_$GameStateUpdateImpl) then) =
      __$$GameStateUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameStateUpdateImplCopyWithImpl<$Res>
    extends _$PlayerGameBusEventCopyWithImpl<$Res, _$GameStateUpdateImpl>
    implements _$$GameStateUpdateImplCopyWith<$Res> {
  __$$GameStateUpdateImplCopyWithImpl(
      _$GameStateUpdateImpl _value, $Res Function(_$GameStateUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameStateUpdateImpl implements GameStateUpdate {
  const _$GameStateUpdateImpl();

  @override
  String toString() {
    return 'PlayerGameBusEvent.gameStateUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameStateUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() playerAction,
    required TResult Function() gameStateUpdate,
  }) {
    return gameStateUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? playerAction,
    TResult? Function()? gameStateUpdate,
  }) {
    return gameStateUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? playerAction,
    TResult Function()? gameStateUpdate,
    required TResult orElse(),
  }) {
    if (gameStateUpdate != null) {
      return gameStateUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PlayerAction value) playerAction,
    required TResult Function(GameStateUpdate value) gameStateUpdate,
  }) {
    return gameStateUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PlayerAction value)? playerAction,
    TResult? Function(GameStateUpdate value)? gameStateUpdate,
  }) {
    return gameStateUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PlayerAction value)? playerAction,
    TResult Function(GameStateUpdate value)? gameStateUpdate,
    required TResult orElse(),
  }) {
    if (gameStateUpdate != null) {
      return gameStateUpdate(this);
    }
    return orElse();
  }
}

abstract class GameStateUpdate implements PlayerGameBusEvent {
  const factory GameStateUpdate() = _$GameStateUpdateImpl;
}

/// @nodoc
mixin _$PlayerGameBusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionReceived,
    required TResult Function() stateUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionReceived,
    TResult? Function()? stateUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionReceived,
    TResult Function()? stateUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ActionReceived value) actionReceived,
    required TResult Function(StateUpdated value) stateUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionReceived value)? actionReceived,
    TResult? Function(StateUpdated value)? stateUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionReceived value)? actionReceived,
    TResult Function(StateUpdated value)? stateUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerGameBusStateCopyWith<$Res> {
  factory $PlayerGameBusStateCopyWith(
          PlayerGameBusState value, $Res Function(PlayerGameBusState) then) =
      _$PlayerGameBusStateCopyWithImpl<$Res, PlayerGameBusState>;
}

/// @nodoc
class _$PlayerGameBusStateCopyWithImpl<$Res, $Val extends PlayerGameBusState>
    implements $PlayerGameBusStateCopyWith<$Res> {
  _$PlayerGameBusStateCopyWithImpl(this._value, this._then);

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
    extends _$PlayerGameBusStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PlayerGameBusState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionReceived,
    required TResult Function() stateUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionReceived,
    TResult? Function()? stateUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionReceived,
    TResult Function()? stateUpdated,
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
    required TResult Function(ActionReceived value) actionReceived,
    required TResult Function(StateUpdated value) stateUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionReceived value)? actionReceived,
    TResult? Function(StateUpdated value)? stateUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionReceived value)? actionReceived,
    TResult Function(StateUpdated value)? stateUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PlayerGameBusState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ActionReceivedImplCopyWith<$Res> {
  factory _$$ActionReceivedImplCopyWith(_$ActionReceivedImpl value,
          $Res Function(_$ActionReceivedImpl) then) =
      __$$ActionReceivedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActionReceivedImplCopyWithImpl<$Res>
    extends _$PlayerGameBusStateCopyWithImpl<$Res, _$ActionReceivedImpl>
    implements _$$ActionReceivedImplCopyWith<$Res> {
  __$$ActionReceivedImplCopyWithImpl(
      _$ActionReceivedImpl _value, $Res Function(_$ActionReceivedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActionReceivedImpl implements ActionReceived {
  const _$ActionReceivedImpl();

  @override
  String toString() {
    return 'PlayerGameBusState.actionReceived()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActionReceivedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionReceived,
    required TResult Function() stateUpdated,
  }) {
    return actionReceived();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionReceived,
    TResult? Function()? stateUpdated,
  }) {
    return actionReceived?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionReceived,
    TResult Function()? stateUpdated,
    required TResult orElse(),
  }) {
    if (actionReceived != null) {
      return actionReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ActionReceived value) actionReceived,
    required TResult Function(StateUpdated value) stateUpdated,
  }) {
    return actionReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionReceived value)? actionReceived,
    TResult? Function(StateUpdated value)? stateUpdated,
  }) {
    return actionReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionReceived value)? actionReceived,
    TResult Function(StateUpdated value)? stateUpdated,
    required TResult orElse(),
  }) {
    if (actionReceived != null) {
      return actionReceived(this);
    }
    return orElse();
  }
}

abstract class ActionReceived implements PlayerGameBusState {
  const factory ActionReceived() = _$ActionReceivedImpl;
}

/// @nodoc
abstract class _$$StateUpdatedImplCopyWith<$Res> {
  factory _$$StateUpdatedImplCopyWith(
          _$StateUpdatedImpl value, $Res Function(_$StateUpdatedImpl) then) =
      __$$StateUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateUpdatedImplCopyWithImpl<$Res>
    extends _$PlayerGameBusStateCopyWithImpl<$Res, _$StateUpdatedImpl>
    implements _$$StateUpdatedImplCopyWith<$Res> {
  __$$StateUpdatedImplCopyWithImpl(
      _$StateUpdatedImpl _value, $Res Function(_$StateUpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateUpdatedImpl implements StateUpdated {
  const _$StateUpdatedImpl();

  @override
  String toString() {
    return 'PlayerGameBusState.stateUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StateUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionReceived,
    required TResult Function() stateUpdated,
  }) {
    return stateUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? actionReceived,
    TResult? Function()? stateUpdated,
  }) {
    return stateUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionReceived,
    TResult Function()? stateUpdated,
    required TResult orElse(),
  }) {
    if (stateUpdated != null) {
      return stateUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ActionReceived value) actionReceived,
    required TResult Function(StateUpdated value) stateUpdated,
  }) {
    return stateUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ActionReceived value)? actionReceived,
    TResult? Function(StateUpdated value)? stateUpdated,
  }) {
    return stateUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ActionReceived value)? actionReceived,
    TResult Function(StateUpdated value)? stateUpdated,
    required TResult orElse(),
  }) {
    if (stateUpdated != null) {
      return stateUpdated(this);
    }
    return orElse();
  }
}

abstract class StateUpdated implements PlayerGameBusState {
  const factory StateUpdated() = _$StateUpdatedImpl;
}
