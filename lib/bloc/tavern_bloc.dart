// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:vg_tarabish_flame/tavern_repository/tavern_repository.dart';

// part 'tavern_event.dart';
// part 'tavern_state.dart';
// part 'tavern_bloc.freezed.dart';

// class TavernBloc extends Bloc<TavernEvent, TavernState> {
//   TavernBloc(this.tavernRepository) : super(_Initial()) {
// on<TavernEvent>((event, emit) {
//   // TODO: implement event handler
// });
//   }

//   final TavernRepository tavernRepository;
// }
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vg_tarabish_flame/bloc/game_in_progress_bloc.dart';
import 'package:vg_tarabish_flame/game/entity/game/card_game.dart';
import 'package:vg_tarabish_flame/tavern_repository/tavern_repository.dart';

part 'tavern_event.dart';
part 'tavern_state.dart';
part 'tavern_bloc.freezed.dart';

class TavernBloc extends Bloc<TavernEvent, TavernState> {
  TavernBloc(this.tavernRepository) : super(const TavernStateLobby()) {
    _tavernGamesStreamSubscription =
        tavernRepository.tavernGamesStream.listen((tavernGames) {
      add(TavernEvent.tavernGamesUpdated(tavernGames: tavernGames));
    });

    _tavernMembersStreamSubscription =
        tavernRepository.tavernMembersStream.listen((tavernMembers) {
      add(TavernEvent.tavernMembersUpdated(tavernMembers: tavernMembers));
    });
    on<TavernEvent>((event, emit) {
      switch (event) {
        case _TavernGamesUpdated():
          _handleTavernGamesUpdated(event, emit);
        case _TavernMembersUpdated():
          _handleTavernMembersUpdated(event, emit);
        case _NewGame():
          // print('TavernEvent _NewGame called');
          _handleNewGame(event, emit);
        // TODO: Handle this case.
        case _ShowGameTypes():
          _handleShowGameTypes(event, emit);
        // case _ChooseGameType():
        //   _handleChooseGameType(event, emit);
        // TODO: Handle this case.
        case GoToLobby():
          _handleGoToLobby(event, emit);
        // TODO: Handle this case.
        case InviteBot():
          // TODONE: Handle this case.
          _handleInviteBot(event, emit);
      }
    });
  }

  final TavernRepository tavernRepository;
  late final StreamSubscription<List<TavernGame>>
      _tavernGamesStreamSubscription;
  late final StreamSubscription<List<TavernMember>>
      _tavernMembersStreamSubscription;

// Map to store game streams based on their IDs
  final Map<String, Stream<CardGameView>> _gameStreams =
      <String, Stream<CardGameView>>{};

  // ID of the currently viewed game
  String? currentGameId;

  @override
  Future<void> close() {
    _tavernGamesStreamSubscription.cancel();
    _tavernMembersStreamSubscription.cancel();
    return super.close();
  }

  void _handleTavernGamesUpdated(
    _TavernGamesUpdated event,
    Emitter<TavernState> emit,
  ) {
    print('tavern games are ${event.tavernGames}');
    emit(TavernState.tavernGamesOrMembersUpdated(
        tavernGames: event.tavernGames));
    // switch (state) {
    //   case _Initial():
    //     emit(TavernState.tavernGamesOrMembersUpdated(
    //         tavernGames: event.tavernGames));
    //   case final _TavernGamesOrMembersUpdated currentState:
    //     emit(currentState.copyWith(tavernGames: event.tavernGames));
    // }
  }

  void _handleTavernMembersUpdated(
    _TavernMembersUpdated event,
    Emitter<TavernState> emit,
  ) {
    print('tavern members are ${event.tavernMembers}');
    emit(TavernState.tavernGamesOrMembersUpdated(
        tavernMembers: event.tavernMembers));
    // switch (state) {
    //   case _Initial():
    //     emit(TavernState.tavernGamesOrMembersUpdated(
    //         tavernMembers: event.tavernMembers));
    //   case final _TavernGamesOrMembersUpdated currentState:
    //     emit(currentState.copyWith(tavernMembers: event.tavernMembers));
    // }
  }

  void _handleShowGameTypes(_ShowGameTypes event, Emitter<TavernState> emit) {
    print('TavenEvent _handleShowGameTypes called');
  }

  void _handleNewGame(_NewGame event, Emitter<TavernState> emit) {
    // print('TavernEvent _handleNewGame called with demo == ${event.demo}');
    // in the tavern bloc, when a new game is requested, we want to create a new game
    // and switch to it.
    // There will be a new GameInProgressBloc created for the new game.
    // The gameinprogress bloc will listen for changes to the state and respond
    // to those changes
    // var gameType = event.gameType;
    currentGameId = tavernRepository.newOrExistingGameInProgress(
        gameType: event.gameType, demo: event.demo);
    // print('game gameId is $_currentGameId');
    // _currentGameId = _currentGameId;
    // final gameInProgressBloc = GameInProgressBloc(
    //   tavernRepository: tavernRepository,
    //   currentGameId: _currentGameId!,
    // );
    emit(TavernState.currentGameInProgressUpdated(
        gameInProgressBloc: GameInProgressBloc(
      tavernRepository: tavernRepository,
      currentGameId: currentGameId!,
    )..add(const GameInProgressEvent.pauseStartGame(play: true))));
    // gameInProgressBloc.
    //')
    // final String gameId = event.gameId; // Extract gameId from the event

    // Create a new game stream if it doesn't exist
    // if (!_gameStreams.containsKey(gameId)) {
    // final isDemo = event.demo;
    // final gameId = tavernRepository.newOrExistingGameInProgress(demo: isDemo);
    // // final Stream<CardGame> newGameStream =
    // //     tavernRepository.listenCardGame(gameId: gameId);

    // _gameStreams[gameId] = tavernRepository.listenCardGame(gameId: gameId);
    // // }

    // // Switch to the newly created game
    // _currentGameId = gameId;
    // _gameStreams[gameId]!.listen((CardGameView game) {
    //   // Do something with the updated game state
    //   // You may emit a new state to the UI if needed
    //   // print('Received updated game state for game $gameId: $game');
    //   emit(CurrentGameStateUpdated(cardGame: game));
    // });
  }

  void _handleGoToLobby(GoToLobby event, Emitter<TavernState> emit) {
    print('TavenEvent _handleGoToLobby called');
    emit(TavernState.lobby());
    // final String gameId = event.gameId; // Extract gameId from the event

    // Check if the game stream exists
    // if (_gameStreams.containsKey(gameId)) {
    //   // Switch to the selected game
    //   _currentGameId = gameId;
    //   _gameStreams[gameId]!.listen((CardGameView game) {
    //     // Do something with the updated game state
    //     // You may emit a new state to the UI if needed
    //     print('Received updated game state for game $gameId: $game');
    //   });
    // } else {
    //   print('Game stream for $gameId does not exist.');
    //   // Optionally, you can create a new game stream for the selected game
    //   // Uncomment the next line if you want to create a new stream:
    //   // _gameStreams[gameId] = tavernRepository.newOrExistingGameInProgress(id: gameId);

    //   // Switch to the selected game (whether it's a new stream or not)
    //   _currentGameId = gameId;
    //   _gameStreams[gameId]!.listen((CardGameView game) {
    //     // Do something with the updated game state
    //     // You may emit a new state to the UI if needed
    //     print('Received updated game state for game $gameId: $game');
    //   });
    // }
  }

  void _handleInviteBot(InviteBot event, Emitter<TavernState> emit) {
    print('TavenEvent _handleInviteBot called');
    tavernRepository.inviteBot(
      playerPosition: event.playerPosition,
      gameId: event.gameId,
    );
  }
  // void _handleChooseGameType(_ChooseGameType event, Emitter<TavernState> emit) {
  //   // ignore: lines_longer_than_80_chars
  //   print(
  //     'TavenEvent _handleChooseGameType called with chosen game ${event.gameType}',
  //   );
  // }
}
