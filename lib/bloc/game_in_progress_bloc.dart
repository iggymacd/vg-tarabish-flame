// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vg_tarabish_flame/game/entity/game/card_game.dart';
import 'package:vg_tarabish_flame/tavern_repository/tavern_repository.dart';
// import 'package:vg_tarabish_flame/bloc/game_in_progress_state.dart';

part 'game_in_progress_event.dart';
part 'game_in_progress_state.dart';
part 'game_in_progress_bloc.freezed.dart';

class GameInProgressBloc
    extends Bloc<GameInProgressEvent, GameInProgressState> {
  GameInProgressBloc({
    required this.tavernRepository,
    // required VideoData frame,
  }) : super(const GameInProgressState.initial()) {
    on<PauseStartGame>(
      (event, emit) async {
        if (event.play) {
          await emit.forEach(
            tavernRepository.listenCardGame(gameId: 'gameId'),
            onData: (CardGameView cardGameView) => GameInProgressState.playing(
              // cardGame: CardGameView.tarabish(gameId: 'gameId', actions: []),
              cardGameView: cardGameView,
              // currentFrame: videoStreamData,
              // isPlaying: true,
            ),
            onError: (error, stackTrace) => GameInProgressState.error(
                // cardGameView: state,
                error: error,
                stackTrace: stackTrace),
          );
        } else {
          emit(
            const GameInProgressState.paused(
              cardGameView:
                  CardGameView.tarabish(gameId: 'gameId', actions: []),
              // isPlaying: false,
            ),
          );
        }
      },
      // Allow only one of these events to ever be active at once, canceling
      // any active `emit.forEach` above.
      transformer: restartable(),
    );
  }

  // final VideoStreamingRepo videoStreamingRepo;
  final TavernRepository tavernRepository;
}
