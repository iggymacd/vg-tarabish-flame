part of 'player_game_bus_bloc.dart';

@freezed
sealed class PlayerGameBusEvent with _$PlayerGameBusEvent {
  const factory PlayerGameBusEvent.started() = _Started;
  const factory PlayerGameBusEvent.playerAction() = PlayerAction;
  const factory PlayerGameBusEvent.gameStateUpdate() = GameStateUpdate;
}
