part of 'game_in_progress_bloc.dart';

@freezed
sealed class GameInProgressState with _$GameInProgressState {
  const factory GameInProgressState.initial({
    @Default(false) bool isInProgress,
  }) = GameInProgressStateInitial;
  const factory GameInProgressState.playing({
    required CardGameView cardGameView,
    // @Default(false) bool isPlaying,
  }) = Playing;
  const factory GameInProgressState.paused({
    required CardGameView cardGameView,
    // @Default(false) bool isPlaying,
  }) = Paused;
  const factory GameInProgressState.error({
    // required CardGameView cardGameView,
    required Object error,
    required StackTrace stackTrace,
    // @Default(false) bool isPlaying,
  }) = Error;
  // const factory GameInProgressState.tavernGamesOrMembersUpdated({
  //   // @Default(<TavernMember>[]) List<TavernMember> tavernMembers,
  //   // @Default(<TavernGame>[]) List<TavernGame> tavernGames,
  // }) = TavernGamesOrMembersUpdated;
  // const factory GameInProgressState.initial() = _Initial;
}
