import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vg_tarabish_flame/bloc/game_in_progress_bloc.dart';
import 'package:vg_tarabish_flame/tavern_repository/player_repository.dart';

part 'player_game_bus_event.dart';
part 'player_game_bus_state.dart';
part 'player_game_bus_bloc.freezed.dart';

class PlayerGameBusBloc extends Bloc<PlayerGameBusEvent, PlayerGameBusState> {
  final GameInProgressBloc gameEngine; // Reference to the game engine
  final List<PlayerRepository>
      playerRepositories; // List of player repositories
  PlayerGameBusBloc(this.gameEngine, this.playerRepositories)
      : super(const _Initial()) {
    on<PlayerGameBusEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<PlayerAction>(
      _handlePlayerAction,
    );
    on<GameStateUpdate>(
      _handleGameStateUpdate,
    );
  }

  FutureOr<void> _handlePlayerAction(
    PlayerAction event,
    Emitter<PlayerGameBusState> emit,
  ) {
    emit(PlayerGameBusState.actionReceived());
  }

  FutureOr<void> _handleGameStateUpdate(
    GameStateUpdate event,
    Emitter<PlayerGameBusState> emit,
  ) {
    emit(PlayerGameBusState.stateUpdated());
  }
}
