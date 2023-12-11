// part of 'start_game_bloc.dart';

// /// Defines status of start game flow.
// enum StartGameStatus {
//   /// Initial status.
//   initial,

//   /// Selection game type.
//   selectGameType,

//   /// How to play status.
//   howToPlay,

//   /// Play status.
//   play,
// }

// /// {@template start_game_state}
// /// Represents the state of flow before the game starts.
// /// {@endtemplate}
// class StartGameState extends Equatable {
//   /// {@macro start_game_state}
//   const StartGameState({
//     required this.status,
//   });

//   /// Initial [StartGameState].
//   const StartGameState.initial() : this(status: StartGameStatus.initial);

//   /// Status of [StartGameState].
//   final StartGameStatus status;

//   /// Creates a copy of [StartGameState].
//   StartGameState copyWith({
//     StartGameStatus? status,
//   }) {
//     return StartGameState(
//       status: status ?? this.status,
//     );
//   }

//   @override
//   List<Object> get props => [status];
// }

part of 'start_game_bloc.dart';

@freezed
sealed class StartGameState with _$StartGameState {
  const factory StartGameState.gameTypeDialogDisplayed() =
      GameTypeDialogDisplayed;
  const factory StartGameState.gameTypeDialogCancelled() =
      GameTypeDialogCancelled;
  const factory StartGameState.gameTypeChosen({
    required String gameType,
  }) = GameTypeChosen;
  const factory StartGameState.initial() = Initial;
}
