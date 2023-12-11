// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'start_game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartGameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() displayGameTypeDialog,
    required TResult Function() cancelDisplayGameTypeDialog,
    required TResult Function(String gameType) chooseGameType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? displayGameTypeDialog,
    TResult? Function()? cancelDisplayGameTypeDialog,
    TResult? Function(String gameType)? chooseGameType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? displayGameTypeDialog,
    TResult Function()? cancelDisplayGameTypeDialog,
    TResult Function(String gameType)? chooseGameType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayGameTypeDialog value)
        displayGameTypeDialog,
    required TResult Function(_CancelDisplayGameTypeDialog value)
        cancelDisplayGameTypeDialog,
    required TResult Function(_ChooseGameType value) chooseGameType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayGameTypeDialog value)? displayGameTypeDialog,
    TResult? Function(_CancelDisplayGameTypeDialog value)?
        cancelDisplayGameTypeDialog,
    TResult? Function(_ChooseGameType value)? chooseGameType,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayGameTypeDialog value)? displayGameTypeDialog,
    TResult Function(_CancelDisplayGameTypeDialog value)?
        cancelDisplayGameTypeDialog,
    TResult Function(_ChooseGameType value)? chooseGameType,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartGameEventCopyWith<$Res> {
  factory $StartGameEventCopyWith(
          StartGameEvent value, $Res Function(StartGameEvent) then) =
      _$StartGameEventCopyWithImpl<$Res, StartGameEvent>;
}

/// @nodoc
class _$StartGameEventCopyWithImpl<$Res, $Val extends StartGameEvent>
    implements $StartGameEventCopyWith<$Res> {
  _$StartGameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DisplayGameTypeDialogImplCopyWith<$Res> {
  factory _$$DisplayGameTypeDialogImplCopyWith(
          _$DisplayGameTypeDialogImpl value,
          $Res Function(_$DisplayGameTypeDialogImpl) then) =
      __$$DisplayGameTypeDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayGameTypeDialogImplCopyWithImpl<$Res>
    extends _$StartGameEventCopyWithImpl<$Res, _$DisplayGameTypeDialogImpl>
    implements _$$DisplayGameTypeDialogImplCopyWith<$Res> {
  __$$DisplayGameTypeDialogImplCopyWithImpl(_$DisplayGameTypeDialogImpl _value,
      $Res Function(_$DisplayGameTypeDialogImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisplayGameTypeDialogImpl implements _DisplayGameTypeDialog {
  const _$DisplayGameTypeDialogImpl();

  @override
  String toString() {
    return 'StartGameEvent.displayGameTypeDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayGameTypeDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() displayGameTypeDialog,
    required TResult Function() cancelDisplayGameTypeDialog,
    required TResult Function(String gameType) chooseGameType,
  }) {
    return displayGameTypeDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? displayGameTypeDialog,
    TResult? Function()? cancelDisplayGameTypeDialog,
    TResult? Function(String gameType)? chooseGameType,
  }) {
    return displayGameTypeDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? displayGameTypeDialog,
    TResult Function()? cancelDisplayGameTypeDialog,
    TResult Function(String gameType)? chooseGameType,
    required TResult orElse(),
  }) {
    if (displayGameTypeDialog != null) {
      return displayGameTypeDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayGameTypeDialog value)
        displayGameTypeDialog,
    required TResult Function(_CancelDisplayGameTypeDialog value)
        cancelDisplayGameTypeDialog,
    required TResult Function(_ChooseGameType value) chooseGameType,
  }) {
    return displayGameTypeDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayGameTypeDialog value)? displayGameTypeDialog,
    TResult? Function(_CancelDisplayGameTypeDialog value)?
        cancelDisplayGameTypeDialog,
    TResult? Function(_ChooseGameType value)? chooseGameType,
  }) {
    return displayGameTypeDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayGameTypeDialog value)? displayGameTypeDialog,
    TResult Function(_CancelDisplayGameTypeDialog value)?
        cancelDisplayGameTypeDialog,
    TResult Function(_ChooseGameType value)? chooseGameType,
    required TResult orElse(),
  }) {
    if (displayGameTypeDialog != null) {
      return displayGameTypeDialog(this);
    }
    return orElse();
  }
}

abstract class _DisplayGameTypeDialog implements StartGameEvent {
  const factory _DisplayGameTypeDialog() = _$DisplayGameTypeDialogImpl;
}

/// @nodoc
abstract class _$$CancelDisplayGameTypeDialogImplCopyWith<$Res> {
  factory _$$CancelDisplayGameTypeDialogImplCopyWith(
          _$CancelDisplayGameTypeDialogImpl value,
          $Res Function(_$CancelDisplayGameTypeDialogImpl) then) =
      __$$CancelDisplayGameTypeDialogImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelDisplayGameTypeDialogImplCopyWithImpl<$Res>
    extends _$StartGameEventCopyWithImpl<$Res,
        _$CancelDisplayGameTypeDialogImpl>
    implements _$$CancelDisplayGameTypeDialogImplCopyWith<$Res> {
  __$$CancelDisplayGameTypeDialogImplCopyWithImpl(
      _$CancelDisplayGameTypeDialogImpl _value,
      $Res Function(_$CancelDisplayGameTypeDialogImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelDisplayGameTypeDialogImpl
    implements _CancelDisplayGameTypeDialog {
  const _$CancelDisplayGameTypeDialogImpl();

  @override
  String toString() {
    return 'StartGameEvent.cancelDisplayGameTypeDialog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelDisplayGameTypeDialogImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() displayGameTypeDialog,
    required TResult Function() cancelDisplayGameTypeDialog,
    required TResult Function(String gameType) chooseGameType,
  }) {
    return cancelDisplayGameTypeDialog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? displayGameTypeDialog,
    TResult? Function()? cancelDisplayGameTypeDialog,
    TResult? Function(String gameType)? chooseGameType,
  }) {
    return cancelDisplayGameTypeDialog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? displayGameTypeDialog,
    TResult Function()? cancelDisplayGameTypeDialog,
    TResult Function(String gameType)? chooseGameType,
    required TResult orElse(),
  }) {
    if (cancelDisplayGameTypeDialog != null) {
      return cancelDisplayGameTypeDialog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayGameTypeDialog value)
        displayGameTypeDialog,
    required TResult Function(_CancelDisplayGameTypeDialog value)
        cancelDisplayGameTypeDialog,
    required TResult Function(_ChooseGameType value) chooseGameType,
  }) {
    return cancelDisplayGameTypeDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayGameTypeDialog value)? displayGameTypeDialog,
    TResult? Function(_CancelDisplayGameTypeDialog value)?
        cancelDisplayGameTypeDialog,
    TResult? Function(_ChooseGameType value)? chooseGameType,
  }) {
    return cancelDisplayGameTypeDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayGameTypeDialog value)? displayGameTypeDialog,
    TResult Function(_CancelDisplayGameTypeDialog value)?
        cancelDisplayGameTypeDialog,
    TResult Function(_ChooseGameType value)? chooseGameType,
    required TResult orElse(),
  }) {
    if (cancelDisplayGameTypeDialog != null) {
      return cancelDisplayGameTypeDialog(this);
    }
    return orElse();
  }
}

abstract class _CancelDisplayGameTypeDialog implements StartGameEvent {
  const factory _CancelDisplayGameTypeDialog() =
      _$CancelDisplayGameTypeDialogImpl;
}

/// @nodoc
abstract class _$$ChooseGameTypeImplCopyWith<$Res> {
  factory _$$ChooseGameTypeImplCopyWith(_$ChooseGameTypeImpl value,
          $Res Function(_$ChooseGameTypeImpl) then) =
      __$$ChooseGameTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String gameType});
}

/// @nodoc
class __$$ChooseGameTypeImplCopyWithImpl<$Res>
    extends _$StartGameEventCopyWithImpl<$Res, _$ChooseGameTypeImpl>
    implements _$$ChooseGameTypeImplCopyWith<$Res> {
  __$$ChooseGameTypeImplCopyWithImpl(
      _$ChooseGameTypeImpl _value, $Res Function(_$ChooseGameTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameType = null,
  }) {
    return _then(_$ChooseGameTypeImpl(
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChooseGameTypeImpl implements _ChooseGameType {
  const _$ChooseGameTypeImpl({required this.gameType});

  @override
  final String gameType;

  @override
  String toString() {
    return 'StartGameEvent.chooseGameType(gameType: $gameType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseGameTypeImpl &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseGameTypeImplCopyWith<_$ChooseGameTypeImpl> get copyWith =>
      __$$ChooseGameTypeImplCopyWithImpl<_$ChooseGameTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() displayGameTypeDialog,
    required TResult Function() cancelDisplayGameTypeDialog,
    required TResult Function(String gameType) chooseGameType,
  }) {
    return chooseGameType(gameType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? displayGameTypeDialog,
    TResult? Function()? cancelDisplayGameTypeDialog,
    TResult? Function(String gameType)? chooseGameType,
  }) {
    return chooseGameType?.call(gameType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? displayGameTypeDialog,
    TResult Function()? cancelDisplayGameTypeDialog,
    TResult Function(String gameType)? chooseGameType,
    required TResult orElse(),
  }) {
    if (chooseGameType != null) {
      return chooseGameType(gameType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayGameTypeDialog value)
        displayGameTypeDialog,
    required TResult Function(_CancelDisplayGameTypeDialog value)
        cancelDisplayGameTypeDialog,
    required TResult Function(_ChooseGameType value) chooseGameType,
  }) {
    return chooseGameType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayGameTypeDialog value)? displayGameTypeDialog,
    TResult? Function(_CancelDisplayGameTypeDialog value)?
        cancelDisplayGameTypeDialog,
    TResult? Function(_ChooseGameType value)? chooseGameType,
  }) {
    return chooseGameType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayGameTypeDialog value)? displayGameTypeDialog,
    TResult Function(_CancelDisplayGameTypeDialog value)?
        cancelDisplayGameTypeDialog,
    TResult Function(_ChooseGameType value)? chooseGameType,
    required TResult orElse(),
  }) {
    if (chooseGameType != null) {
      return chooseGameType(this);
    }
    return orElse();
  }
}

abstract class _ChooseGameType implements StartGameEvent {
  const factory _ChooseGameType({required final String gameType}) =
      _$ChooseGameTypeImpl;

  String get gameType;
  @JsonKey(ignore: true)
  _$$ChooseGameTypeImplCopyWith<_$ChooseGameTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StartGameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameTypeDialogDisplayed,
    required TResult Function() gameTypeDialogCancelled,
    required TResult Function(String gameType) gameTypeChosen,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gameTypeDialogDisplayed,
    TResult? Function()? gameTypeDialogCancelled,
    TResult? Function(String gameType)? gameTypeChosen,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameTypeDialogDisplayed,
    TResult Function()? gameTypeDialogCancelled,
    TResult Function(String gameType)? gameTypeChosen,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameTypeDialogDisplayed value)
        gameTypeDialogDisplayed,
    required TResult Function(GameTypeDialogCancelled value)
        gameTypeDialogCancelled,
    required TResult Function(GameTypeChosen value) gameTypeChosen,
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameTypeDialogDisplayed value)? gameTypeDialogDisplayed,
    TResult? Function(GameTypeDialogCancelled value)? gameTypeDialogCancelled,
    TResult? Function(GameTypeChosen value)? gameTypeChosen,
    TResult? Function(Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameTypeDialogDisplayed value)? gameTypeDialogDisplayed,
    TResult Function(GameTypeDialogCancelled value)? gameTypeDialogCancelled,
    TResult Function(GameTypeChosen value)? gameTypeChosen,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartGameStateCopyWith<$Res> {
  factory $StartGameStateCopyWith(
          StartGameState value, $Res Function(StartGameState) then) =
      _$StartGameStateCopyWithImpl<$Res, StartGameState>;
}

/// @nodoc
class _$StartGameStateCopyWithImpl<$Res, $Val extends StartGameState>
    implements $StartGameStateCopyWith<$Res> {
  _$StartGameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GameTypeDialogDisplayedImplCopyWith<$Res> {
  factory _$$GameTypeDialogDisplayedImplCopyWith(
          _$GameTypeDialogDisplayedImpl value,
          $Res Function(_$GameTypeDialogDisplayedImpl) then) =
      __$$GameTypeDialogDisplayedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameTypeDialogDisplayedImplCopyWithImpl<$Res>
    extends _$StartGameStateCopyWithImpl<$Res, _$GameTypeDialogDisplayedImpl>
    implements _$$GameTypeDialogDisplayedImplCopyWith<$Res> {
  __$$GameTypeDialogDisplayedImplCopyWithImpl(
      _$GameTypeDialogDisplayedImpl _value,
      $Res Function(_$GameTypeDialogDisplayedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameTypeDialogDisplayedImpl implements GameTypeDialogDisplayed {
  const _$GameTypeDialogDisplayedImpl();

  @override
  String toString() {
    return 'StartGameState.gameTypeDialogDisplayed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTypeDialogDisplayedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameTypeDialogDisplayed,
    required TResult Function() gameTypeDialogCancelled,
    required TResult Function(String gameType) gameTypeChosen,
    required TResult Function() initial,
  }) {
    return gameTypeDialogDisplayed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gameTypeDialogDisplayed,
    TResult? Function()? gameTypeDialogCancelled,
    TResult? Function(String gameType)? gameTypeChosen,
    TResult? Function()? initial,
  }) {
    return gameTypeDialogDisplayed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameTypeDialogDisplayed,
    TResult Function()? gameTypeDialogCancelled,
    TResult Function(String gameType)? gameTypeChosen,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (gameTypeDialogDisplayed != null) {
      return gameTypeDialogDisplayed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameTypeDialogDisplayed value)
        gameTypeDialogDisplayed,
    required TResult Function(GameTypeDialogCancelled value)
        gameTypeDialogCancelled,
    required TResult Function(GameTypeChosen value) gameTypeChosen,
    required TResult Function(Initial value) initial,
  }) {
    return gameTypeDialogDisplayed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameTypeDialogDisplayed value)? gameTypeDialogDisplayed,
    TResult? Function(GameTypeDialogCancelled value)? gameTypeDialogCancelled,
    TResult? Function(GameTypeChosen value)? gameTypeChosen,
    TResult? Function(Initial value)? initial,
  }) {
    return gameTypeDialogDisplayed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameTypeDialogDisplayed value)? gameTypeDialogDisplayed,
    TResult Function(GameTypeDialogCancelled value)? gameTypeDialogCancelled,
    TResult Function(GameTypeChosen value)? gameTypeChosen,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (gameTypeDialogDisplayed != null) {
      return gameTypeDialogDisplayed(this);
    }
    return orElse();
  }
}

abstract class GameTypeDialogDisplayed implements StartGameState {
  const factory GameTypeDialogDisplayed() = _$GameTypeDialogDisplayedImpl;
}

/// @nodoc
abstract class _$$GameTypeDialogCancelledImplCopyWith<$Res> {
  factory _$$GameTypeDialogCancelledImplCopyWith(
          _$GameTypeDialogCancelledImpl value,
          $Res Function(_$GameTypeDialogCancelledImpl) then) =
      __$$GameTypeDialogCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameTypeDialogCancelledImplCopyWithImpl<$Res>
    extends _$StartGameStateCopyWithImpl<$Res, _$GameTypeDialogCancelledImpl>
    implements _$$GameTypeDialogCancelledImplCopyWith<$Res> {
  __$$GameTypeDialogCancelledImplCopyWithImpl(
      _$GameTypeDialogCancelledImpl _value,
      $Res Function(_$GameTypeDialogCancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GameTypeDialogCancelledImpl implements GameTypeDialogCancelled {
  const _$GameTypeDialogCancelledImpl();

  @override
  String toString() {
    return 'StartGameState.gameTypeDialogCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTypeDialogCancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameTypeDialogDisplayed,
    required TResult Function() gameTypeDialogCancelled,
    required TResult Function(String gameType) gameTypeChosen,
    required TResult Function() initial,
  }) {
    return gameTypeDialogCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gameTypeDialogDisplayed,
    TResult? Function()? gameTypeDialogCancelled,
    TResult? Function(String gameType)? gameTypeChosen,
    TResult? Function()? initial,
  }) {
    return gameTypeDialogCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameTypeDialogDisplayed,
    TResult Function()? gameTypeDialogCancelled,
    TResult Function(String gameType)? gameTypeChosen,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (gameTypeDialogCancelled != null) {
      return gameTypeDialogCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameTypeDialogDisplayed value)
        gameTypeDialogDisplayed,
    required TResult Function(GameTypeDialogCancelled value)
        gameTypeDialogCancelled,
    required TResult Function(GameTypeChosen value) gameTypeChosen,
    required TResult Function(Initial value) initial,
  }) {
    return gameTypeDialogCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameTypeDialogDisplayed value)? gameTypeDialogDisplayed,
    TResult? Function(GameTypeDialogCancelled value)? gameTypeDialogCancelled,
    TResult? Function(GameTypeChosen value)? gameTypeChosen,
    TResult? Function(Initial value)? initial,
  }) {
    return gameTypeDialogCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameTypeDialogDisplayed value)? gameTypeDialogDisplayed,
    TResult Function(GameTypeDialogCancelled value)? gameTypeDialogCancelled,
    TResult Function(GameTypeChosen value)? gameTypeChosen,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (gameTypeDialogCancelled != null) {
      return gameTypeDialogCancelled(this);
    }
    return orElse();
  }
}

abstract class GameTypeDialogCancelled implements StartGameState {
  const factory GameTypeDialogCancelled() = _$GameTypeDialogCancelledImpl;
}

/// @nodoc
abstract class _$$GameTypeChosenImplCopyWith<$Res> {
  factory _$$GameTypeChosenImplCopyWith(_$GameTypeChosenImpl value,
          $Res Function(_$GameTypeChosenImpl) then) =
      __$$GameTypeChosenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String gameType});
}

/// @nodoc
class __$$GameTypeChosenImplCopyWithImpl<$Res>
    extends _$StartGameStateCopyWithImpl<$Res, _$GameTypeChosenImpl>
    implements _$$GameTypeChosenImplCopyWith<$Res> {
  __$$GameTypeChosenImplCopyWithImpl(
      _$GameTypeChosenImpl _value, $Res Function(_$GameTypeChosenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameType = null,
  }) {
    return _then(_$GameTypeChosenImpl(
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GameTypeChosenImpl implements GameTypeChosen {
  const _$GameTypeChosenImpl({required this.gameType});

  @override
  final String gameType;

  @override
  String toString() {
    return 'StartGameState.gameTypeChosen(gameType: $gameType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameTypeChosenImpl &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameTypeChosenImplCopyWith<_$GameTypeChosenImpl> get copyWith =>
      __$$GameTypeChosenImplCopyWithImpl<_$GameTypeChosenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameTypeDialogDisplayed,
    required TResult Function() gameTypeDialogCancelled,
    required TResult Function(String gameType) gameTypeChosen,
    required TResult Function() initial,
  }) {
    return gameTypeChosen(gameType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gameTypeDialogDisplayed,
    TResult? Function()? gameTypeDialogCancelled,
    TResult? Function(String gameType)? gameTypeChosen,
    TResult? Function()? initial,
  }) {
    return gameTypeChosen?.call(gameType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameTypeDialogDisplayed,
    TResult Function()? gameTypeDialogCancelled,
    TResult Function(String gameType)? gameTypeChosen,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (gameTypeChosen != null) {
      return gameTypeChosen(gameType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GameTypeDialogDisplayed value)
        gameTypeDialogDisplayed,
    required TResult Function(GameTypeDialogCancelled value)
        gameTypeDialogCancelled,
    required TResult Function(GameTypeChosen value) gameTypeChosen,
    required TResult Function(Initial value) initial,
  }) {
    return gameTypeChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameTypeDialogDisplayed value)? gameTypeDialogDisplayed,
    TResult? Function(GameTypeDialogCancelled value)? gameTypeDialogCancelled,
    TResult? Function(GameTypeChosen value)? gameTypeChosen,
    TResult? Function(Initial value)? initial,
  }) {
    return gameTypeChosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameTypeDialogDisplayed value)? gameTypeDialogDisplayed,
    TResult Function(GameTypeDialogCancelled value)? gameTypeDialogCancelled,
    TResult Function(GameTypeChosen value)? gameTypeChosen,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (gameTypeChosen != null) {
      return gameTypeChosen(this);
    }
    return orElse();
  }
}

abstract class GameTypeChosen implements StartGameState {
  const factory GameTypeChosen({required final String gameType}) =
      _$GameTypeChosenImpl;

  String get gameType;
  @JsonKey(ignore: true)
  _$$GameTypeChosenImplCopyWith<_$GameTypeChosenImpl> get copyWith =>
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
    extends _$StartGameStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'StartGameState.initial()';
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
    required TResult Function() gameTypeDialogDisplayed,
    required TResult Function() gameTypeDialogCancelled,
    required TResult Function(String gameType) gameTypeChosen,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gameTypeDialogDisplayed,
    TResult? Function()? gameTypeDialogCancelled,
    TResult? Function(String gameType)? gameTypeChosen,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameTypeDialogDisplayed,
    TResult Function()? gameTypeDialogCancelled,
    TResult Function(String gameType)? gameTypeChosen,
    TResult Function()? initial,
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
    required TResult Function(GameTypeDialogDisplayed value)
        gameTypeDialogDisplayed,
    required TResult Function(GameTypeDialogCancelled value)
        gameTypeDialogCancelled,
    required TResult Function(GameTypeChosen value) gameTypeChosen,
    required TResult Function(Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GameTypeDialogDisplayed value)? gameTypeDialogDisplayed,
    TResult? Function(GameTypeDialogCancelled value)? gameTypeDialogCancelled,
    TResult? Function(GameTypeChosen value)? gameTypeChosen,
    TResult? Function(Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GameTypeDialogDisplayed value)? gameTypeDialogDisplayed,
    TResult Function(GameTypeDialogCancelled value)? gameTypeDialogCancelled,
    TResult Function(GameTypeChosen value)? gameTypeChosen,
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements StartGameState {
  const factory Initial() = _$InitialImpl;
}
