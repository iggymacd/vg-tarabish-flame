// Player repository
import 'package:vg_tarabish_flame/bloc/player_game_bus_bloc.dart';

class PlayerRepository {
  PlayerRepository(this.eventBus) {
    eventBus.stream.listen((state) {
      // switch (state) {
      //   // case value:

      //   //   break;
      //   // default:
      //   case PlayerGameBusState.stateUpdated:

      //     // TODO: Handle this case.
      //   case PlayerGameBusState.actionReceived:
      //     // TODO: Handle this case.
      // }
      // if (state == const StateUpdated()) {
      //   // Update player data based on state update
      // }
    });
  }
  final PlayerGameBusBloc eventBus;

  void sendPlayerAction(PlayerAction action) {
    eventBus.add(const PlayerGameBusEvent.playerAction());
  }
}
