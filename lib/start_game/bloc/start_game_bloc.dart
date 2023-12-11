import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_game_event.dart';
part 'start_game_state.dart';
part 'start_game_bloc.freezed.dart';

/// {@template start_game_bloc}
/// Bloc that manages the app flow before the game starts.
/// {@endtemplate}
class StartGameBloc extends Bloc<StartGameEvent, StartGameState> {
  /// {@macro start_game_bloc}
  StartGameBloc() : super(const StartGameState.initial()) {
    // on<PlayTapped>(_onPlayTapped);
    // on<ReplayTapped>(_onReplayTapped);
    on((event, emit) {
      switch (event) {
        case _DisplayGameTypeDialog currentEvent:
          _onDisplayGameTypeDialog(currentEvent, emit);
        case _ChooseGameType currentEvent:
          _onChooseGameType(currentEvent, emit);
        case _CancelDisplayGameTypeDialog currentEvent:
          print('cancelled game type dialog');
          emit(const StartGameState.gameTypeDialogCancelled());
        // default:
      }
    });
    // on<StartGameEvent>(
    //   switch (event) {
    //     pattern => value,
    //   }
    //   (event, emit) {
    //     _onGameTypeSelected(event, emit);
    //   },
    // );
    // on<HowToPlayFinished>(_onHowToPlayFinished);
  }

  // void _onPlayTapped(
  //   PlayTapped event,
  //   Emitter<StartGameState> emit,
  // ) {
  //   emit(
  //     state.copyWith(
  //       status: StartGameStatus.selectGameType,
  //     ),
  //   );
  // }

  // void _onReplayTapped(
  //   ReplayTapped event,
  //   Emitter<StartGameState> emit,
  // ) {
  //   emit(
  //     state.copyWith(
  //       status: StartGameStatus.selectGameType,
  //     ),
  //   );
  // }

  void _onDisplayGameTypeDialog(
    _DisplayGameTypeDialog event,
    Emitter<StartGameState> emit,
  ) {
    print('calling _onDisplayGameTypeDialog...');
    emit(const StartGameState.gameTypeDialogDisplayed());
    // switch (state) {
    //   case GameTypeDialogDisplayed():
    //     emit(const StartGameState.gameTypeDialogDisplayed());
    //   case Initial():
    //     emit(const StartGameState.gameTypeDialogDisplayed());
    //   case GameTypeChosen():
    //   // TODONE: Handle this case.
    // }
  }

  void _onChooseGameType(
    _ChooseGameType currentEvent,
    Emitter<StartGameState> emit,
  ) {
    print(
        'calling _onChooseGameType...with game type ${currentEvent.gameType}');
    // final currentState = state;
    emit(StartGameState.gameTypeChosen(gameType: currentEvent.gameType));
    // switch (state) {
    //   case StartGameState.gameTypeChosen:

    //     break;
    //   default:
  }
}

  // void _onHowToPlayFinished(
  //   HowToPlayFinished event,
  //   Emitter<StartGameState> emit,
  // ) {
  //   emit(
  //     state.copyWith(
  //       status: StartGameStatus.play,
  //     ),
  //   );
  // }
// }
