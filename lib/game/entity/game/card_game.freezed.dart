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
  String get gameId => throw _privateConstructorUsedError;
  List<CardGameAction> get actions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId, List<CardGameAction> actions)
        tarabish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId, List<CardGameAction> actions)? tarabish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId, List<CardGameAction> actions)? tarabish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TarabishGame value) tarabish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TarabishGame value)? tarabish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TarabishGame value)? tarabish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardGameViewCopyWith<CardGameView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardGameViewCopyWith<$Res> {
  factory $CardGameViewCopyWith(
          CardGameView value, $Res Function(CardGameView) then) =
      _$CardGameViewCopyWithImpl<$Res, CardGameView>;
  @useResult
  $Res call({String gameId, List<CardGameAction> actions});
}

/// @nodoc
class _$CardGameViewCopyWithImpl<$Res, $Val extends CardGameView>
    implements $CardGameViewCopyWith<$Res> {
  _$CardGameViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? actions = null,
  }) {
    return _then(_value.copyWith(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<CardGameAction>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TarabishGameImplCopyWith<$Res>
    implements $CardGameViewCopyWith<$Res> {
  factory _$$TarabishGameImplCopyWith(
          _$TarabishGameImpl value, $Res Function(_$TarabishGameImpl) then) =
      __$$TarabishGameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String gameId, List<CardGameAction> actions});
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
    ));
  }
}

/// @nodoc

class _$TarabishGameImpl extends _TarabishGame {
  const _$TarabishGameImpl(
      {required this.gameId, required final List<CardGameAction> actions})
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
  String toString() {
    return 'CardGameView.tarabish(gameId: $gameId, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TarabishGameImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, gameId, const DeepCollectionEquality().hash(_actions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TarabishGameImplCopyWith<_$TarabishGameImpl> get copyWith =>
      __$$TarabishGameImplCopyWithImpl<_$TarabishGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId, List<CardGameAction> actions)
        tarabish,
  }) {
    return tarabish(gameId, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId, List<CardGameAction> actions)? tarabish,
  }) {
    return tarabish?.call(gameId, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId, List<CardGameAction> actions)? tarabish,
    required TResult orElse(),
  }) {
    if (tarabish != null) {
      return tarabish(gameId, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TarabishGame value) tarabish,
  }) {
    return tarabish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TarabishGame value)? tarabish,
  }) {
    return tarabish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TarabishGame value)? tarabish,
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
      required final List<CardGameAction> actions}) = _$TarabishGameImpl;
  const _TarabishGame._() : super._();

  @override
  String get gameId;
  @override
  List<CardGameAction> get actions;
  @override
  @JsonKey(ignore: true)
  _$$TarabishGameImplCopyWith<_$TarabishGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
