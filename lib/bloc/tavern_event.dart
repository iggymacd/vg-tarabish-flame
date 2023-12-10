part of 'tavern_bloc.dart';

@freezed
sealed class TavernEvent with _$TavernEvent {
  const factory TavernEvent.started() = _Started;
  const factory TavernEvent.tavernGamesUpdated({
    required List<TavernGame> tavernGames,
  }) = _TavernGamesUpdated;
  const factory TavernEvent.tavernMembersUpdated({
    required List<TavernMember> tavernMembers,
  }) = _TavernMembersUpdated;
  // static TavernEvent tavernGamesUpdated(List<TavernGame> tavernGames) {}

  // static TavernEvent tavernMembersUpdated(List<TavernMember> tavernMembers) {}
}
