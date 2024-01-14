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
    required TResult Function(String gameId, String gameType, bool demo)
        newGame,
    required TResult Function() goToLobby,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
    required TResult Function(String gameId, int targetPosition) inviteBot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId, String gameType, bool demo)? newGame,
    TResult? Function()? goToLobby,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult? Function(String gameId, int targetPosition)? inviteBot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId, String gameType, bool demo)? newGame,
    TResult Function()? goToLobby,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult Function(String gameId, int targetPosition)? inviteBot,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewGame value) newGame,
    required TResult Function(GoToLobby value) goToLobby,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
    required TResult Function(InviteBot value) inviteBot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(GoToLobby value)? goToLobby,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult? Function(InviteBot value)? inviteBot,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(GoToLobby value)? goToLobby,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult Function(InviteBot value)? inviteBot,
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
  $Res call({String gameId, String gameType, bool demo});
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
    Object? gameType = null,
    Object? demo = null,
  }) {
    return _then(_$NewGameImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as String,
      demo: null == demo
          ? _value.demo
          : demo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NewGameImpl implements _NewGame {
  const _$NewGameImpl(
      {this.gameId = '', this.gameType = 'Solitaire', this.demo = false});

  @override
  @JsonKey()
  final String gameId;
  @override
  @JsonKey()
  final String gameType;
  @override
  @JsonKey()
  final bool demo;

  @override
  String toString() {
    return 'TavernEvent.newGame(gameId: $gameId, gameType: $gameType, demo: $demo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewGameImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.demo, demo) || other.demo == demo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId, gameType, demo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewGameImplCopyWith<_$NewGameImpl> get copyWith =>
      __$$NewGameImplCopyWithImpl<_$NewGameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId, String gameType, bool demo)
        newGame,
    required TResult Function() goToLobby,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
    required TResult Function(String gameId, int targetPosition) inviteBot,
  }) {
    return newGame(gameId, gameType, demo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId, String gameType, bool demo)? newGame,
    TResult? Function()? goToLobby,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult? Function(String gameId, int targetPosition)? inviteBot,
  }) {
    return newGame?.call(gameId, gameType, demo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId, String gameType, bool demo)? newGame,
    TResult Function()? goToLobby,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult Function(String gameId, int targetPosition)? inviteBot,
    required TResult orElse(),
  }) {
    if (newGame != null) {
      return newGame(gameId, gameType, demo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewGame value) newGame,
    required TResult Function(GoToLobby value) goToLobby,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
    required TResult Function(InviteBot value) inviteBot,
  }) {
    return newGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(GoToLobby value)? goToLobby,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult? Function(InviteBot value)? inviteBot,
  }) {
    return newGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(GoToLobby value)? goToLobby,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult Function(InviteBot value)? inviteBot,
    required TResult orElse(),
  }) {
    if (newGame != null) {
      return newGame(this);
    }
    return orElse();
  }
}

abstract class _NewGame implements TavernEvent {
  const factory _NewGame(
      {final String gameId,
      final String gameType,
      final bool demo}) = _$NewGameImpl;

  String get gameId;
  String get gameType;
  bool get demo;
  @JsonKey(ignore: true)
  _$$NewGameImplCopyWith<_$NewGameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoToLobbyImplCopyWith<$Res> {
  factory _$$GoToLobbyImplCopyWith(
          _$GoToLobbyImpl value, $Res Function(_$GoToLobbyImpl) then) =
      __$$GoToLobbyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToLobbyImplCopyWithImpl<$Res>
    extends _$TavernEventCopyWithImpl<$Res, _$GoToLobbyImpl>
    implements _$$GoToLobbyImplCopyWith<$Res> {
  __$$GoToLobbyImplCopyWithImpl(
      _$GoToLobbyImpl _value, $Res Function(_$GoToLobbyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoToLobbyImpl implements GoToLobby {
  const _$GoToLobbyImpl();

  @override
  String toString() {
    return 'TavernEvent.goToLobby()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToLobbyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId, String gameType, bool demo)
        newGame,
    required TResult Function() goToLobby,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
    required TResult Function(String gameId, int targetPosition) inviteBot,
  }) {
    return goToLobby();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId, String gameType, bool demo)? newGame,
    TResult? Function()? goToLobby,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult? Function(String gameId, int targetPosition)? inviteBot,
  }) {
    return goToLobby?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId, String gameType, bool demo)? newGame,
    TResult Function()? goToLobby,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult Function(String gameId, int targetPosition)? inviteBot,
    required TResult orElse(),
  }) {
    if (goToLobby != null) {
      return goToLobby();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewGame value) newGame,
    required TResult Function(GoToLobby value) goToLobby,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
    required TResult Function(InviteBot value) inviteBot,
  }) {
    return goToLobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(GoToLobby value)? goToLobby,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult? Function(InviteBot value)? inviteBot,
  }) {
    return goToLobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(GoToLobby value)? goToLobby,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult Function(InviteBot value)? inviteBot,
    required TResult orElse(),
  }) {
    if (goToLobby != null) {
      return goToLobby(this);
    }
    return orElse();
  }
}

abstract class GoToLobby implements TavernEvent {
  const factory GoToLobby() = _$GoToLobbyImpl;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowGameTypesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId, String gameType, bool demo)
        newGame,
    required TResult Function() goToLobby,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
    required TResult Function(String gameId, int targetPosition) inviteBot,
  }) {
    return showGameTypes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId, String gameType, bool demo)? newGame,
    TResult? Function()? goToLobby,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult? Function(String gameId, int targetPosition)? inviteBot,
  }) {
    return showGameTypes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId, String gameType, bool demo)? newGame,
    TResult Function()? goToLobby,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult Function(String gameId, int targetPosition)? inviteBot,
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
    required TResult Function(GoToLobby value) goToLobby,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
    required TResult Function(InviteBot value) inviteBot,
  }) {
    return showGameTypes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(GoToLobby value)? goToLobby,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult? Function(InviteBot value)? inviteBot,
  }) {
    return showGameTypes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(GoToLobby value)? goToLobby,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult Function(InviteBot value)? inviteBot,
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
  bool operator ==(Object other) {
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
    required TResult Function(String gameId, String gameType, bool demo)
        newGame,
    required TResult Function() goToLobby,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
    required TResult Function(String gameId, int targetPosition) inviteBot,
  }) {
    return tavernGamesUpdated(tavernGames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId, String gameType, bool demo)? newGame,
    TResult? Function()? goToLobby,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult? Function(String gameId, int targetPosition)? inviteBot,
  }) {
    return tavernGamesUpdated?.call(tavernGames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId, String gameType, bool demo)? newGame,
    TResult Function()? goToLobby,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult Function(String gameId, int targetPosition)? inviteBot,
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
    required TResult Function(GoToLobby value) goToLobby,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
    required TResult Function(InviteBot value) inviteBot,
  }) {
    return tavernGamesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(GoToLobby value)? goToLobby,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult? Function(InviteBot value)? inviteBot,
  }) {
    return tavernGamesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(GoToLobby value)? goToLobby,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult Function(InviteBot value)? inviteBot,
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
  bool operator ==(Object other) {
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
    required TResult Function(String gameId, String gameType, bool demo)
        newGame,
    required TResult Function() goToLobby,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
    required TResult Function(String gameId, int targetPosition) inviteBot,
  }) {
    return tavernMembersUpdated(tavernMembers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId, String gameType, bool demo)? newGame,
    TResult? Function()? goToLobby,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult? Function(String gameId, int targetPosition)? inviteBot,
  }) {
    return tavernMembersUpdated?.call(tavernMembers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId, String gameType, bool demo)? newGame,
    TResult Function()? goToLobby,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult Function(String gameId, int targetPosition)? inviteBot,
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
    required TResult Function(GoToLobby value) goToLobby,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
    required TResult Function(InviteBot value) inviteBot,
  }) {
    return tavernMembersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(GoToLobby value)? goToLobby,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult? Function(InviteBot value)? inviteBot,
  }) {
    return tavernMembersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(GoToLobby value)? goToLobby,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult Function(InviteBot value)? inviteBot,
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
abstract class _$$InviteBotImplCopyWith<$Res> {
  factory _$$InviteBotImplCopyWith(
          _$InviteBotImpl value, $Res Function(_$InviteBotImpl) then) =
      __$$InviteBotImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String gameId, int targetPosition});
}

/// @nodoc
class __$$InviteBotImplCopyWithImpl<$Res>
    extends _$TavernEventCopyWithImpl<$Res, _$InviteBotImpl>
    implements _$$InviteBotImplCopyWith<$Res> {
  __$$InviteBotImplCopyWithImpl(
      _$InviteBotImpl _value, $Res Function(_$InviteBotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
    Object? targetPosition = null,
  }) {
    return _then(_$InviteBotImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      targetPosition: null == targetPosition
          ? _value.targetPosition
          : targetPosition // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InviteBotImpl implements InviteBot {
  const _$InviteBotImpl({required this.gameId, required this.targetPosition});

  @override
  final String gameId;

  /// player position is relative to current player
  /// this may need to be translated when it arrives in the game in progress
  @override
  final int targetPosition;

  @override
  String toString() {
    return 'TavernEvent.inviteBot(gameId: $gameId, targetPosition: $targetPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteBotImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId) &&
            (identical(other.targetPosition, targetPosition) ||
                other.targetPosition == targetPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId, targetPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteBotImplCopyWith<_$InviteBotImpl> get copyWith =>
      __$$InviteBotImplCopyWithImpl<_$InviteBotImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String gameId, String gameType, bool demo)
        newGame,
    required TResult Function() goToLobby,
    required TResult Function() showGameTypes,
    required TResult Function(List<TavernGame> tavernGames) tavernGamesUpdated,
    required TResult Function(List<TavernMember> tavernMembers)
        tavernMembersUpdated,
    required TResult Function(String gameId, int targetPosition) inviteBot,
  }) {
    return inviteBot(gameId, targetPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String gameId, String gameType, bool demo)? newGame,
    TResult? Function()? goToLobby,
    TResult? Function()? showGameTypes,
    TResult? Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult? Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult? Function(String gameId, int targetPosition)? inviteBot,
  }) {
    return inviteBot?.call(gameId, targetPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String gameId, String gameType, bool demo)? newGame,
    TResult Function()? goToLobby,
    TResult Function()? showGameTypes,
    TResult Function(List<TavernGame> tavernGames)? tavernGamesUpdated,
    TResult Function(List<TavernMember> tavernMembers)? tavernMembersUpdated,
    TResult Function(String gameId, int targetPosition)? inviteBot,
    required TResult orElse(),
  }) {
    if (inviteBot != null) {
      return inviteBot(gameId, targetPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewGame value) newGame,
    required TResult Function(GoToLobby value) goToLobby,
    required TResult Function(_ShowGameTypes value) showGameTypes,
    required TResult Function(_TavernGamesUpdated value) tavernGamesUpdated,
    required TResult Function(_TavernMembersUpdated value) tavernMembersUpdated,
    required TResult Function(InviteBot value) inviteBot,
  }) {
    return inviteBot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewGame value)? newGame,
    TResult? Function(GoToLobby value)? goToLobby,
    TResult? Function(_ShowGameTypes value)? showGameTypes,
    TResult? Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult? Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult? Function(InviteBot value)? inviteBot,
  }) {
    return inviteBot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewGame value)? newGame,
    TResult Function(GoToLobby value)? goToLobby,
    TResult Function(_ShowGameTypes value)? showGameTypes,
    TResult Function(_TavernGamesUpdated value)? tavernGamesUpdated,
    TResult Function(_TavernMembersUpdated value)? tavernMembersUpdated,
    TResult Function(InviteBot value)? inviteBot,
    required TResult orElse(),
  }) {
    if (inviteBot != null) {
      return inviteBot(this);
    }
    return orElse();
  }
}

abstract class InviteBot implements TavernEvent {
  const factory InviteBot(
      {required final String gameId,
      required final int targetPosition}) = _$InviteBotImpl;

  String get gameId;

  /// player position is relative to current player
  /// this may need to be translated when it arrives in the game in progress
  int get targetPosition;
  @JsonKey(ignore: true)
  _$$InviteBotImplCopyWith<_$InviteBotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TavernState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() lobby,
    required TResult Function(GameInProgressBloc gameInProgressBloc)
        currentGameInProgressUpdated,
    required TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)
        tavernGamesOrMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? lobby,
    TResult? Function(GameInProgressBloc gameInProgressBloc)?
        currentGameInProgressUpdated,
    TResult? Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? lobby,
    TResult Function(GameInProgressBloc gameInProgressBloc)?
        currentGameInProgressUpdated,
    TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TavernStateLobby value) lobby,
    required TResult Function(CurrentGameInProgressUpdated value)
        currentGameInProgressUpdated,
    required TResult Function(TavernGamesOrMembersUpdated value)
        tavernGamesOrMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TavernStateLobby value)? lobby,
    TResult? Function(CurrentGameInProgressUpdated value)?
        currentGameInProgressUpdated,
    TResult? Function(TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TavernStateLobby value)? lobby,
    TResult Function(CurrentGameInProgressUpdated value)?
        currentGameInProgressUpdated,
    TResult Function(TavernGamesOrMembersUpdated value)?
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
abstract class _$$TavernStateLobbyImplCopyWith<$Res> {
  factory _$$TavernStateLobbyImplCopyWith(_$TavernStateLobbyImpl value,
          $Res Function(_$TavernStateLobbyImpl) then) =
      __$$TavernStateLobbyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TavernStateLobbyImplCopyWithImpl<$Res>
    extends _$TavernStateCopyWithImpl<$Res, _$TavernStateLobbyImpl>
    implements _$$TavernStateLobbyImplCopyWith<$Res> {
  __$$TavernStateLobbyImplCopyWithImpl(_$TavernStateLobbyImpl _value,
      $Res Function(_$TavernStateLobbyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TavernStateLobbyImpl implements TavernStateLobby {
  const _$TavernStateLobbyImpl();

  @override
  String toString() {
    return 'TavernState.lobby()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TavernStateLobbyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() lobby,
    required TResult Function(GameInProgressBloc gameInProgressBloc)
        currentGameInProgressUpdated,
    required TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)
        tavernGamesOrMembersUpdated,
  }) {
    return lobby();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? lobby,
    TResult? Function(GameInProgressBloc gameInProgressBloc)?
        currentGameInProgressUpdated,
    TResult? Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
  }) {
    return lobby?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? lobby,
    TResult Function(GameInProgressBloc gameInProgressBloc)?
        currentGameInProgressUpdated,
    TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) {
    if (lobby != null) {
      return lobby();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TavernStateLobby value) lobby,
    required TResult Function(CurrentGameInProgressUpdated value)
        currentGameInProgressUpdated,
    required TResult Function(TavernGamesOrMembersUpdated value)
        tavernGamesOrMembersUpdated,
  }) {
    return lobby(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TavernStateLobby value)? lobby,
    TResult? Function(CurrentGameInProgressUpdated value)?
        currentGameInProgressUpdated,
    TResult? Function(TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
  }) {
    return lobby?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TavernStateLobby value)? lobby,
    TResult Function(CurrentGameInProgressUpdated value)?
        currentGameInProgressUpdated,
    TResult Function(TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) {
    if (lobby != null) {
      return lobby(this);
    }
    return orElse();
  }
}

abstract class TavernStateLobby implements TavernState {
  const factory TavernStateLobby() = _$TavernStateLobbyImpl;
}

/// @nodoc
abstract class _$$CurrentGameInProgressUpdatedImplCopyWith<$Res> {
  factory _$$CurrentGameInProgressUpdatedImplCopyWith(
          _$CurrentGameInProgressUpdatedImpl value,
          $Res Function(_$CurrentGameInProgressUpdatedImpl) then) =
      __$$CurrentGameInProgressUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameInProgressBloc gameInProgressBloc});
}

/// @nodoc
class __$$CurrentGameInProgressUpdatedImplCopyWithImpl<$Res>
    extends _$TavernStateCopyWithImpl<$Res, _$CurrentGameInProgressUpdatedImpl>
    implements _$$CurrentGameInProgressUpdatedImplCopyWith<$Res> {
  __$$CurrentGameInProgressUpdatedImplCopyWithImpl(
      _$CurrentGameInProgressUpdatedImpl _value,
      $Res Function(_$CurrentGameInProgressUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameInProgressBloc = null,
  }) {
    return _then(_$CurrentGameInProgressUpdatedImpl(
      gameInProgressBloc: null == gameInProgressBloc
          ? _value.gameInProgressBloc
          : gameInProgressBloc // ignore: cast_nullable_to_non_nullable
              as GameInProgressBloc,
    ));
  }
}

/// @nodoc

class _$CurrentGameInProgressUpdatedImpl
    implements CurrentGameInProgressUpdated {
  const _$CurrentGameInProgressUpdatedImpl({required this.gameInProgressBloc});

// required CardGameView cardGame,
  @override
  final GameInProgressBloc gameInProgressBloc;

  @override
  String toString() {
    return 'TavernState.currentGameInProgressUpdated(gameInProgressBloc: $gameInProgressBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentGameInProgressUpdatedImpl &&
            (identical(other.gameInProgressBloc, gameInProgressBloc) ||
                other.gameInProgressBloc == gameInProgressBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameInProgressBloc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentGameInProgressUpdatedImplCopyWith<
          _$CurrentGameInProgressUpdatedImpl>
      get copyWith => __$$CurrentGameInProgressUpdatedImplCopyWithImpl<
          _$CurrentGameInProgressUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() lobby,
    required TResult Function(GameInProgressBloc gameInProgressBloc)
        currentGameInProgressUpdated,
    required TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)
        tavernGamesOrMembersUpdated,
  }) {
    return currentGameInProgressUpdated(gameInProgressBloc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? lobby,
    TResult? Function(GameInProgressBloc gameInProgressBloc)?
        currentGameInProgressUpdated,
    TResult? Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
  }) {
    return currentGameInProgressUpdated?.call(gameInProgressBloc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? lobby,
    TResult Function(GameInProgressBloc gameInProgressBloc)?
        currentGameInProgressUpdated,
    TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) {
    if (currentGameInProgressUpdated != null) {
      return currentGameInProgressUpdated(gameInProgressBloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TavernStateLobby value) lobby,
    required TResult Function(CurrentGameInProgressUpdated value)
        currentGameInProgressUpdated,
    required TResult Function(TavernGamesOrMembersUpdated value)
        tavernGamesOrMembersUpdated,
  }) {
    return currentGameInProgressUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TavernStateLobby value)? lobby,
    TResult? Function(CurrentGameInProgressUpdated value)?
        currentGameInProgressUpdated,
    TResult? Function(TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
  }) {
    return currentGameInProgressUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TavernStateLobby value)? lobby,
    TResult Function(CurrentGameInProgressUpdated value)?
        currentGameInProgressUpdated,
    TResult Function(TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) {
    if (currentGameInProgressUpdated != null) {
      return currentGameInProgressUpdated(this);
    }
    return orElse();
  }
}

abstract class CurrentGameInProgressUpdated implements TavernState {
  const factory CurrentGameInProgressUpdated(
          {required final GameInProgressBloc gameInProgressBloc}) =
      _$CurrentGameInProgressUpdatedImpl;

// required CardGameView cardGame,
  GameInProgressBloc get gameInProgressBloc;
  @JsonKey(ignore: true)
  _$$CurrentGameInProgressUpdatedImplCopyWith<
          _$CurrentGameInProgressUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
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

class _$TavernGamesOrMembersUpdatedImpl implements TavernGamesOrMembersUpdated {
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
  bool operator ==(Object other) {
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
    required TResult Function() lobby,
    required TResult Function(GameInProgressBloc gameInProgressBloc)
        currentGameInProgressUpdated,
    required TResult Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)
        tavernGamesOrMembersUpdated,
  }) {
    return tavernGamesOrMembersUpdated(tavernMembers, tavernGames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? lobby,
    TResult? Function(GameInProgressBloc gameInProgressBloc)?
        currentGameInProgressUpdated,
    TResult? Function(
            List<TavernMember> tavernMembers, List<TavernGame> tavernGames)?
        tavernGamesOrMembersUpdated,
  }) {
    return tavernGamesOrMembersUpdated?.call(tavernMembers, tavernGames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? lobby,
    TResult Function(GameInProgressBloc gameInProgressBloc)?
        currentGameInProgressUpdated,
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
    required TResult Function(TavernStateLobby value) lobby,
    required TResult Function(CurrentGameInProgressUpdated value)
        currentGameInProgressUpdated,
    required TResult Function(TavernGamesOrMembersUpdated value)
        tavernGamesOrMembersUpdated,
  }) {
    return tavernGamesOrMembersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TavernStateLobby value)? lobby,
    TResult? Function(CurrentGameInProgressUpdated value)?
        currentGameInProgressUpdated,
    TResult? Function(TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
  }) {
    return tavernGamesOrMembersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TavernStateLobby value)? lobby,
    TResult Function(CurrentGameInProgressUpdated value)?
        currentGameInProgressUpdated,
    TResult Function(TavernGamesOrMembersUpdated value)?
        tavernGamesOrMembersUpdated,
    required TResult orElse(),
  }) {
    if (tavernGamesOrMembersUpdated != null) {
      return tavernGamesOrMembersUpdated(this);
    }
    return orElse();
  }
}

abstract class TavernGamesOrMembersUpdated implements TavernState {
  const factory TavernGamesOrMembersUpdated(
      {final List<TavernMember> tavernMembers,
      final List<TavernGame> tavernGames}) = _$TavernGamesOrMembersUpdatedImpl;

  List<TavernMember> get tavernMembers;
  List<TavernGame> get tavernGames;
  @JsonKey(ignore: true)
  _$$TavernGamesOrMembersUpdatedImplCopyWith<_$TavernGamesOrMembersUpdatedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
