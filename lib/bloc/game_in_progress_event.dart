part of 'game_in_progress_bloc.dart';

@freezed
sealed class GameInProgressEvent with _$GameInProgressEvent {
  const factory GameInProgressEvent.initial({
    @Default('') String gameId,
    // @Default('Solitaire') String gameType,
    // @Default(false) bool demo,
  }) = _Initial;
  const factory GameInProgressEvent.startGame({
    required String gameId,
    @Default(false) bool play,
  }) = StartGame;
  const factory GameInProgressEvent.pauseGame({
    required String gameId,
    @Default(false) bool play,
  }) = PauseGame;
  const factory GameInProgressEvent.inviteBot({
    required int playerPosition,
  }) = InviteBot;
  // const factory GameInProgressEvent.showGameTypes() = _ShowGameTypes;
  // // const factory TavernEvent.chooseGameType({
  // //   required String gameType,
  // // }) = _ChooseGameType;
  // const factory GameInProgressEvent.tavernGamesUpdated({
  //   // required List<GameInProgressEvent> tavernGames,
  // }) = _TavernGamesUpdated;
  // const factory GameInProgressEvent.tavernMembersUpdated({
  //   // required List<TavernMember> tavernMembers,
  // }) = _TavernMembersUpdated;
  // static TavernEvent tavernGamesUpdated(List<TavernGame> tavernGames) {}

  // static TavernEvent tavernMembersUpdated(List<TavernMember> tavernMembers) {}
}
