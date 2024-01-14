part of 'player_game_bus_bloc.dart';

@freezed
sealed class PlayerGameBusState with _$PlayerGameBusState {
  const factory PlayerGameBusState.initial() = _Initial;
  const factory PlayerGameBusState.actionReceived() = ActionReceived;
  const factory PlayerGameBusState.stateUpdated() = StateUpdated;
}
