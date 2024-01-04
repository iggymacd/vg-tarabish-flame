part of 'tavern_bloc.dart';

@freezed
sealed class TavernState with _$TavernState {
  const factory TavernState.lobby() = TavernStateLobby;
  const factory TavernState.currentGameInProgressUpdated({
    // required CardGameView cardGame,
    required GameInProgressBloc gameInProgressBloc,
  }) = CurrentGameInProgressUpdated;
  const factory TavernState.tavernGamesOrMembersUpdated({
    @Default(<TavernMember>[]) List<TavernMember> tavernMembers,
    @Default(<TavernGame>[]) List<TavernGame> tavernGames,
  }) = TavernGamesOrMembersUpdated;
  // const factory TavernState.initial() = _Initial;
}
