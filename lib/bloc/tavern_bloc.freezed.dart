// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tavern_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TavernEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) newGame,
    required TResult Function(String gameId) switchGame,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId)? newGame,
    TResult? Function(String gameId)? switchGame,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? newGame,
    TResult Function(String gameId)? switchGame,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewGame value) newGame,
    required TResult Function(_SwitchGame value) switchGame,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(_SwitchGame value)? switchGame,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(_SwitchGame value)? switchGame,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TavernEventCopyWith<$Res> {
  factory $TavernEventCopyWith(
          TavernEvent value, $Res Function(TavernEvent) then) =
      _$TavernEventCopyWithImpl<$Res, TavernEvent>;
}

/// @nodoc
class _$TavernEventCopyWithImpl<$Res, $Val extends TavernEvent>
    implements $TavernEventCopyWith<$Res> {
  _$TavernEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewGameImplCopyWith<$Res> {
  factory _$$NewGameImplCopyWith(
          _$NewGameImpl value, $Res Function(_$NewGameImpl) then) =
      __$$NewGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String gameId});
}

/// @nodoc
class __$$NewGameImplCopyWithImpl<$Res>
    extends _$TavernEventCopyWithImpl<$Res, _$NewGameImpl>
    implements _$$NewGameImplCopyWith<$Res> {
  __$$NewGameImplCopyWithImpl(
      _$NewGameImpl _value, $Res Function(_$NewGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
  }) {
    return _then(_$NewGameImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewGameImpl implements _NewGame {
  const _$NewGameImpl({this.gameId = ''});

  @override
  @JsonKey()
  final String gameId;

  @override
  String toString() {
    return 'TavernEvent.newGame(gameId: $gameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewGameImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewGameImplCopyWith<_$NewGameImpl> get copyWith =>
      __$$NewGameImplCopyWithImpl<_$NewGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) newGame,
    required TResult Function(String gameId) switchGame,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
  }) {
    return newGame(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId)? newGame,
    TResult? Function(String gameId)? switchGame,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
  }) {
    return newGame?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? newGame,
    TResult Function(String gameId)? switchGame,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    required TResult orElse(),
  }) {
    if (newGame != null) {
      return newGame(gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewGame value) newGame,
    required TResult Function(_SwitchGame value) switchGame,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
  }) {
    return newGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(_SwitchGame value)? switchGame,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
  }) {
    return newGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(_SwitchGame value)? switchGame,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    required TResult orElse(),
  }) {
    if (newGame != null) {
      return newGame(this);
    }
    return orElse();
  }
}

abstract class _NewGame implements TavernEvent {
  const factory _NewGame({final String gameId}) = _$NewGameImpl;

  String get gameId;
  @JsonKey(ignore: true)
  _$$NewGameImplCopyWith<_$NewGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchGameImplCopyWith<$Res> {
  factory _$$SwitchGameImplCopyWith(
          _$SwitchGameImpl value, $Res Function(_$SwitchGameImpl) then) =
      __$$SwitchGameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String gameId});
}

/// @nodoc
class __$$SwitchGameImplCopyWithImpl<$Res>
    extends _$TavernEventCopyWithImpl<$Res, _$SwitchGameImpl>
    implements _$$SwitchGameImplCopyWith<$Res> {
  __$$SwitchGameImplCopyWithImpl(
      _$SwitchGameImpl _value, $Res Function(_$SwitchGameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
  }) {
    return _then(_$SwitchGameImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SwitchGameImpl implements _SwitchGame {
  const _$SwitchGameImpl({required this.gameId});

  @override
  final String gameId;

  @override
  String toString() {
    return 'TavernEvent.switchGame(gameId: $gameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchGameImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchGameImplCopyWith<_$SwitchGameImpl> get copyWith =>
      __$$SwitchGameImplCopyWithImpl<_$SwitchGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) newGame,
    required TResult Function(String gameId) switchGame,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
  }) {
    return switchGame(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId)? newGame,
    TResult? Function(String gameId)? switchGame,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
  }) {
    return switchGame?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? newGame,
    TResult Function(String gameId)? switchGame,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    required TResult orElse(),
  }) {
    if (switchGame != null) {
      return switchGame(gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewGame value) newGame,
    required TResult Function(_SwitchGame value) switchGame,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
  }) {
    return switchGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(_SwitchGame value)? switchGame,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
  }) {
    return switchGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(_SwitchGame value)? switchGame,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    required TResult orElse(),
  }) {
    if (switchGame != null) {
      return switchGame(this);
    }
    return orElse();
  }
}

abstract class _SwitchGame implements TavernEvent {
  const factory _SwitchGame({required final String gameId}) = _$SwitchGameImpl;

  String get gameId;
  @JsonKey(ignore: true)
  _$$SwitchGameImplCopyWith<_$SwitchGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowGameTypesImplCopyWith<$Res> {
  factory _$$ShowGameTypesImplCopyWith(
          _$ShowGameTypesImpl value, $Res Function(_$ShowGameTypesImpl) then) =
      __$$ShowGameTypesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowGameTypesImplCopyWithImpl<$Res>
    extends _$TavernEventCopyWithImpl<$Res, _$ShowGameTypesImpl>
    implements _$$ShowGameTypesImplCopyWith<$Res> {
  __$$ShowGameTypesImplCopyWithImpl(
      _$ShowGameTypesImpl _value, $Res Function(_$ShowGameTypesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowGameTypesImpl implements _ShowGameTypes {
  const _$ShowGameTypesImpl();

  @override
  String toString() {
    return 'TavernEvent.showGameTypes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowGameTypesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) newGame,
    required TResult Function(String gameId) switchGame,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
  }) {
    return showGameTypes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId)? newGame,
    TResult? Function(String gameId)? switchGame,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
  }) {
    return showGameTypes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? newGame,
    TResult Function(String gameId)? switchGame,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    required TResult orElse(),
  }) {
    if (showGameTypes != null) {
      return showGameTypes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewGame value) newGame,
    required TResult Function(_SwitchGame value) switchGame,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
  }) {
    return showGameTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(_SwitchGame value)? switchGame,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
  }) {
    return showGameTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(_SwitchGame value)? switchGame,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    required TResult orElse(),
  }) {
    if (showGameTypes != null) {
      return showGameTypes(this);
    }
    return orElse();
  }
}

abstract class _ShowGameTypes implements TavernEvent {
  const factory _ShowGameTypes() = _$ShowGameTypesImpl;
}

/// @nodoc
abstract class _$$TavernGamesUpdatedImplCopyWith<$Res> {
  factory _$$TavernGamesUpdatedImplCopyWith(_$TavernGamesUpdatedImpl value,
          $Res Function(_$TavernGamesUpdatedImpl) then) =
      __$$TavernGamesUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TavernGame> tavernGames});
}

/// @nodoc
class __$$TavernGamesUpdatedImplCopyWithImpl<$Res>
    extends _$TavernEventCopyWithImpl<$Res, _$TavernGamesUpdatedImpl>
    implements _$$TavernGamesUpdatedImplCopyWith<$Res> {
  __$$TavernGamesUpdatedImplCopyWithImpl(_$TavernGamesUpdatedImpl _value,
      $Res Function(_$TavernGamesUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tavernGames = null,
  }) {
    return _then(_$TavernGamesUpdatedImpl(
      tavernGames: null == tavernGames
          ? _value._tavernGames
          : tavernGames // ignore: cast_nullable_to_non_nullable
              as List<TavernGame>,
    ));
  }
}

/// @nodoc

class _$TavernGamesUpdatedImpl implements _TavernGamesUpdated {
  const _$TavernGamesUpdatedImpl({required final List<TavernGame> tavernGames})
      : _tavernGames = tavernGames;

  final List<TavernGame> _tavernGames;
  @override
  List<TavernGame> get tavernGames {
    if (_tavernGames is EqualUnmodifiableListView) return _tavernGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tavernGames);
  }

  @override
  String toString() {
    return 'TavernEvent.tavernGamesUpdated(tavernGames: $tavernGames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TavernGamesUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._tavernGames, _tavernGames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tavernGames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TavernGamesUpdatedImplCopyWith<_$TavernGamesUpdatedImpl> get copyWith =>
      __$$TavernGamesUpdatedImplCopyWithImpl<_$TavernGamesUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) newGame,
    required TResult Function(String gameId) switchGame,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
  }) {
    return tavernGamesUpdated(tavernGames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId)? newGame,
    TResult? Function(String gameId)? switchGame,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
  }) {
    return tavernGamesUpdated?.call(tavernGames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? newGame,
    TResult Function(String gameId)? switchGame,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    required TResult orElse(),
  }) {
    if (tavernGamesUpdated != null) {
      return tavernGamesUpdated(tavernGames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewGame value) newGame,
    required TResult Function(_SwitchGame value) switchGame,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
  }) {
    return tavernGamesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(_SwitchGame value)? switchGame,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
  }) {
    return tavernGamesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(_SwitchGame value)? switchGame,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    required TResult orElse(),
  }) {
    if (tavernGamesUpdated != null) {
      return tavernGamesUpdated(this);
    }
    return orElse();
  }
}

abstract class _TavernGamesUpdated implements TavernEvent {
  const factory _TavernGamesUpdated(
      {required final List<TavernGame> tavernGames}) = _$TavernGamesUpdatedImpl;

  List<TavernGame> get tavernGames;
  @JsonKey(ignore: true)
  _$$TavernGamesUpdatedImplCopyWith<_$TavernGamesUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TavernMembersUpdatedImplCopyWith<$Res> {
  factory _$$TavernMembersUpdatedImplCopyWith(_$TavernMembersUpdatedImpl value,
          $Res Function(_$TavernMembersUpdatedImpl) then) =
      __$$TavernMembersUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TavernMember> tavernMembers});
}

/// @nodoc
class __$$TavernMembersUpdatedImplCopyWithImpl<$Res>
    extends _$TavernEventCopyWithImpl<$Res, _$TavernMembersUpdatedImpl>
    implements _$$TavernMembersUpdatedImplCopyWith<$Res> {
  __$$TavernMembersUpdatedImplCopyWithImpl(_$TavernMembersUpdatedImpl _value,
      $Res Function(_$TavernMembersUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tavernMembers = null,
  }) {
    return _then(_$TavernMembersUpdatedImpl(
      tavernMembers: null == tavernMembers
          ? _value._tavernMembers
          : tavernMembers // ignore: cast_nullable_to_non_nullable
              as List<TavernMember>,
    ));
  }
}

/// @nodoc

class _$TavernMembersUpdatedImpl implements _TavernMembersUpdated {
  const _$TavernMembersUpdatedImpl(
      {required final List<TavernMember> tavernMembers})
      : _tavernMembers = tavernMembers;

  final List<TavernMember> _tavernMembers;
  @override
  List<TavernMember> get tavernMembers {
    if (_tavernMembers is EqualUnmodifiableListView) return _tavernMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tavernMembers);
  }

  @override
  String toString() {
    return 'TavernEvent.tavernMembersUpdated(tavernMembers: $tavernMembers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TavernMembersUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._tavernMembers, _tavernMembers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tavernMembers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TavernMembersUpdatedImplCopyWith<_$TavernMembersUpdatedImpl>
      get copyWith =>
          __$$TavernMembersUpdatedImplCopyWithImpl<_$TavernMembersUpdatedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId) newGame,
    required TResult Function(String gameId) switchGame,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
  }) {
    return tavernMembersUpdated(tavernMembers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId)? newGame,
    TResult? Function(String gameId)? switchGame,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
  }) {
    return tavernMembersUpdated?.call(tavernMembers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId)? newGame,
    TResult Function(String gameId)? switchGame,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    required TResult orElse(),
  }) {
    if (tavernMembersUpdated != null) {
      return tavernMembersUpdated(tavernMembers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewGame value) newGame,
    required TResult Function(_SwitchGame value) switchGame,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
  }) {
    return tavernMembersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(_SwitchGame value)? switchGame,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
  }) {
    return tavernMembersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(_SwitchGame value)? switchGame,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    required TResult orElse(),
  }) {
    if (tavernMembersUpdated != null) {
      return tavernMembersUpdated(this);
    }
    return orElse();
  }
}

abstract class _TavernMembersUpdated implements TavernEvent {
  const factory _TavernMembersUpdated(
          {required final List<TavernMember> tavernMembers}) =
      _$TavernMembersUpdatedImpl;

  List<TavernMember> get tavernMembers;
  @JsonKey(ignore: true)
  _$$TavernMembersUpdatedImplCopyWith<_$TavernMembersUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TavernState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)
        tavernGamesOrMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TavernGamesOrMembersUpdated value)
        tavernGamesOrMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TavernStateCopyWith<$Res> {
  factory $TavernStateCopyWith(
          TavernState value, $Res Function(TavernState) then) =
      _$TavernStateCopyWithImpl<$Res, TavernState>;
}

/// @nodoc
class _$TavernStateCopyWithImpl<$Res, $Val extends TavernState>
    implements $TavernStateCopyWith<$Res> {
  _$TavernStateCopyWithImpl(this._value, this._then);

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
    extends _$TavernStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TavernState.initial()';
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
    required TResult Function() initial,
    required TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)
        tavernGamesOrMembersUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
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
    required TResult Function(_TavernGamesOrMembersUpdated value)
        tavernGamesOrMembersUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TavernState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TavernGamesOrMembersUpdatedImplCopyWith<$Res> {
  factory _$$TavernGamesOrMembersUpdatedImplCopyWith(
          _$TavernGamesOrMembersUpdatedImpl value,
          $Res Function(_$TavernGamesOrMembersUpdatedImpl) then) =
      __$$TavernGamesOrMembersUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TavernMember> tavernMembers, List<TavernGame> tavernGames});
}

/// @nodoc
class __$$TavernGamesOrMembersUpdatedImplCopyWithImpl<$Res>
    extends _$TavernStateCopyWithImpl<$Res, _$TavernGamesOrMembersUpdatedImpl>
    implements _$$TavernGamesOrMembersUpdatedImplCopyWith<$Res> {
  __$$TavernGamesOrMembersUpdatedImplCopyWithImpl(
      _$TavernGamesOrMembersUpdatedImpl _value,
      $Res Function(_$TavernGamesOrMembersUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tavernMembers = null,
    Object? tavernGames = null,
  }) {
    return _then(_$TavernGamesOrMembersUpdatedImpl(
      tavernMembers: null == tavernMembers
          ? _value._tavernMembers
          : tavernMembers // ignore: cast_nullable_to_non_nullable
              as List<TavernMember>,
      tavernGames: null == tavernGames
          ? _value._tavernGames
          : tavernGames // ignore: cast_nullable_to_non_nullable
              as List<TavernGame>,
    ));
  }
}

/// @nodoc

class _$TavernGamesOrMembersUpdatedImpl
    implements _TavernGamesOrMembersUpdated {
  const _$TavernGamesOrMembersUpdatedImpl(
      {final List<TavernMember> tavernMembers = const <TavernMember>[],
      final List<TavernGame> tavernGames = const <TavernGame>[]})
      : _tavernMembers = tavernMembers,
        _tavernGames = tavernGames;

  final List<TavernMember> _tavernMembers;
  @override
  @JsonKey()
  List<TavernMember> get tavernMembers {
    if (_tavernMembers is EqualUnmodifiableListView) return _tavernMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tavernMembers);
  }

  final List<TavernGame> _tavernGames;
  @override
  @JsonKey()
  List<TavernGame> get tavernGames {
    if (_tavernGames is EqualUnmodifiableListView) return _tavernGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tavernGames);
  }

  @override
  String toString() {
    return 'TavernState.tavernGamesOrMembersUpdated(tavernMembers: $tavernMembers, tavernGames: $tavernGames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TavernGamesOrMembersUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._tavernMembers, _tavernMembers) &&
            const DeepCollectionEquality()
                .equals(other._tavernGames, _tavernGames));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tavernMembers),
      const DeepCollectionEquality().hash(_tavernGames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TavernGamesOrMembersUpdatedImplCopyWith<_$TavernGamesOrMembersUpdatedImpl>
      get copyWith => __$$TavernGamesOrMembersUpdatedImplCopyWithImpl<
          _$TavernGamesOrMembersUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)
        tavernGamesOrMembersUpdated,
  }) {
    return tavernGamesOrMembersUpdated(tavernMembers, tavernGames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
  }) {
    return tavernGamesOrMembersUpdated?.call(tavernMembers, tavernGames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) {
    if (tavernGamesOrMembersUpdated != null) {
      return tavernGamesOrMembersUpdated(tavernMembers, tavernGames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TavernGamesOrMembersUpdated value)
        tavernGamesOrMembersUpdated,
  }) {
    return tavernGamesOrMembersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
  }) {
    return tavernGamesOrMembersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) {
    if (tavernGamesOrMembersUpdated != null) {
      return tavernGamesOrMembersUpdated(this);
    }
    return orElse();
  }
}

abstract class _TavernGamesOrMembersUpdated implements TavernState {
  const factory _TavernGamesOrMembersUpdated(
      {final List<TavernMember> tavernMembers,
      final List<TavernGame> tavernGames}) = _$TavernGamesOrMembersUpdatedImpl;

  List<TavernMember> get tavernMembers;
  List<TavernGame> get tavernGames;
  @JsonKey(ignore: true)
  _$$TavernGamesOrMembersUpdatedImplCopyWith<_$TavernGamesOrMembersUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
