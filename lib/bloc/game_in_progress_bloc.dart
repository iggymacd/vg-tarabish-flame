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

/// A [Bloc] which manages the state of a [CardGame] in progress.
///
/// [GameInProgressEvent]s will be arriving from local events and remote events.
/// [GameInProgressState]s will be emitted to the UI.
/// For remote players, the [GameInProgressEvent]s will be coming from the
/// server via  PersonProxyRepository, where we will be listening for events.
/// For local players, the [GameInProgressEvent]s will be coming from the UI,
/// where we will be listening for events.
/// In addition to emitting [GameInProgressState] records to the UI, the states
/// will be sent to the server via PersonProxyRepository, where they will be
/// also be sent to remote players via PersonProxyRepository. Data will be
/// serialized to json before sending to remote player, and deserialized when
/// received.
///
/// A [CardGameControllerBloc] will be created for each game in progress.
class GameInProgressBloc
    extends Bloc<GameInProgressEvent, GameInProgressState> {
  GameInProgressBloc({
    required this.tavernRepository,
    required this.currentGameId,
    // required VideoData frame,
  }) : super(const GameInProgressState.initial()) {
    on<StartGame>(
      (event, emit) async {
        // if (event.play) {
        print('starting game with id $currentGameId');
        await emit.forEach(
          tavernRepository.listenCardGame(gameId: currentGameId), // <--
          onData: (GameInProgressState gameInProgressState) =>
              gameInProgressState,
          // GameInProgressState.playing(
          //   // cardGame: CardGameView.tarabish(gameId: 'gameId', actions: []),
          //   cardGameView: cardGameView,
          //   // currentFrame: videoStreamData,
          //   // isPlaying: true,
          // ),
          onError: (error, stackTrace) => GameInProgressState.error(
              // cardGameView: state,
              error: error,
              stackTrace: stackTrace),
        );
      },
      // Allow only one of these events to ever be active at once, canceling
      // any active `emit.forEach` above.
      transformer: restartable(),
    );

    ///
    on<InviteBot>(_handleInviteBot);
    // on<PauseGame>(
    //   (event, emit) async {
    //     print('pausing game with id $currentGameId');
    //     emit(
    //       const GameInProgressState.paused(
    //         cardGameView: CardGameView.tarabish(gameId: 'gameId', actions: []),
    //         // isPlaying: false,
    //       ),
    //     );
    //     // }
    //   },
    //   // Allow only one of these events to ever be active at once, canceling
    //   // any active `emit.forEach` above.
    //   transformer: restartable(),
    // );
    // on<InviteBot>((event, emit) => tavernRepository.inviteBot(
    //       playerPosition: event.playerPosition,
    //       gameId: currentGameId,
    //     ));
  }

  // final VideoStreamingRepo videoStreamingRepo;
  final TavernRepository tavernRepository;
  final String currentGameId;

  void _handleInviteBot(InviteBot event, Emitter<GameInProgressState> emit) {
    // print('handling invite for bot');
    tavernRepository.inviteBot(
      playerPosition: event.playerPosition,
      gameId: currentGameId,
    );
    emit(state);
  }
}
