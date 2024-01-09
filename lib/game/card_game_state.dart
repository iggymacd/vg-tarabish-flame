// import 'package:freezed/freezed.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vg_tarabish_flame/game/entity/game/card_game.dart';

part 'card_game_state.freezed.dart';
part 'card_game_state.g.dart';

@freezed
sealed class CardGameState with _$CardGameState {
  const CardGameState._();
  const factory CardGameState.initial() = _Initial;
  const factory CardGameState.bidding() = _Bidding;
  const factory CardGameState.loading() = _Loading;
  const factory CardGameState.error(String error) = _Error;
  const factory CardGameState.readyToStart() = _ReadyToStart;
  const factory CardGameState.inProgress() = _InProgress;
  const factory CardGameState.gameOver() = _GameOver;

  factory CardGameState.fromJson(Map<String, dynamic> json) =>
      _$CardGameStateFromJson(json);

  CardGameView toView() {
    switch (this) {
      // default:
      case _Initial():
      // TODO: Handle this case.
      case _Loading():
      // TODO: Handle this case.
      case _Error():
      // TODO: Handle this case.
      case _ReadyToStart():
      // TODO: Handle this case.
      case _InProgress():
      // TODO: Handle this case.
      case _GameOver():
      // TODO: Handle this case.
      default:
        return CardGameView.tarabish(gameId: 'gameId', actions: []);
    }
    // return CardGameView.tarabish(gameId: 'gameId', actions: []);
  }
}
