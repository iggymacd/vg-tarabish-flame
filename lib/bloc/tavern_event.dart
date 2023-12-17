part of 'tavern_bloc.dart';

@freezed
sealed class TavernEvent with _$TavernEvent {
  const factory TavernEvent.newGame({
    @Default('') String gameId,
    @Default('Solitaire') String gameType,
  }) = _NewGame;
  const factory TavernEvent.switchGame({
    required String gameId,
  }) = _SwitchGame;
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
  // static TavernEvent tavernGamesUpdated(List<TavernGame> tavernGames) {}

  // static TavernEvent tavernMembersUpdated(List<TavernMember> tavernMembers) {}
}
