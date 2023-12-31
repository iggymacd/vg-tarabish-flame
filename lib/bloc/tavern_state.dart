part of 'tavern_bloc.dart';

@freezed
sealed class TavernState with _$TavernState {
  const factory TavernState.initial() = TavernStateInitial;
  const factory TavernState.currentGameStateUpdated({
    required CardGameView cardGame,
  }) = CurrentGameStateUpdated;
  const factory TavernState.tavernGamesOrMembersUpdated({
    @Default(<TavernMember>[]) List<TavernMember> tavernMembers,
    @Default(<TavernGame>[]) List<TavernGame> tavernGames,
  }) = TavernGamesOrMembersUpdated;
  // const factory TavernState.initial() = _Initial;
}
