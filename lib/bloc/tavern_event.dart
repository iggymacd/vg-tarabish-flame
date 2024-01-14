part of 'tavern_bloc.dart';

@freezed
sealed class TavernEvent with _$TavernEvent {
  const factory TavernEvent.newGame({
    @Default('') String gameId,
    @Default('Solitaire') String gameType,
    @Default(false) bool demo,
  }) = _NewGame;
  const factory TavernEvent.goToLobby() = GoToLobby;
  const factory TavernEvent.showGameTypes() = _ShowGameTypes;
  // const factory TavernEvent.chooseGameType({
  //   required String gameType,
  // }) = _ChooseGameType;
  const factory TavernEvent.tavernGamesUpdated({
    required List<TavernGame> tavernGames,
  }) = _TavernGamesUpdated;
  const factory TavernEvent.tavernMembersUpdated({
    required List<TavernMember> tavernMembers,
  }) = _TavernMembersUpdated;
  const factory TavernEvent.inviteBot({
    required String gameId,

    /// player position is relative to current player
    /// this may need to be translated when it arrives in the game in progress
    required int targetPosition,
  }) = InviteBot;
  // static TavernEvent tavernGamesUpdated(List<TavernGame> tavernGames) {}

  // static TavernEvent tavernMembersUpdated(List<TavernMember> tavernMembers) {}
}
