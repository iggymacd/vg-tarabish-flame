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
mixin _$CardGame {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tarabish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tarabish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tarabish,
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
}

/// @nodoc
abstract class $CardGameCopyWith<$Res> {
  factory $CardGameCopyWith(CardGame value, $Res Function(CardGame) then) =
      _$CardGameCopyWithImpl<$Res, CardGame>;
}

/// @nodoc
class _$CardGameCopyWithImpl<$Res, $Val extends CardGame>
    implements $CardGameCopyWith<$Res> {
  _$CardGameCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$TarabishGameImplCopyWithImpl<$Res>
    extends _$CardGameCopyWithImpl<$Res, _$TarabishGameImpl>
    implements _$$TarabishGameImplCopyWith<$Res> {
  __$$TarabishGameImplCopyWithImpl(
      _$TarabishGameImpl _value, $Res Function(_$TarabishGameImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TarabishGameImpl implements _TarabishGame {
  const _$TarabishGameImpl();

  @override
  String toString() {
    return 'CardGame.tarabish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TarabishGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() tarabish,
  }) {
    return tarabish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? tarabish,
  }) {
    return tarabish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? tarabish,
    required TResult orElse(),
  }) {
    if (tarabish != null) {
      return tarabish();
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

abstract class _TarabishGame implements CardGame {
  const factory _TarabishGame() = _$TarabishGameImpl;
}