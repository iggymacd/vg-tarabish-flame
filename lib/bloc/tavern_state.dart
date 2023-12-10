part of 'tavern_bloc.dart';

@freezed
sealed class TavernState with _$TavernState {
  const factory TavernState.initial() = _Initial;
  const factory TavernState.tavernGamesOrMembersUpdated({
    @Default(<TavernMember>[]) List<TavernMember> tavernMembers,
    @Default(<TavernGame>[]) List<TavernGame> tavernGames,
  }) = _TavernGamesOrMembersUpdated;
  // const factory TavernState.initial() = _Initial;
}
