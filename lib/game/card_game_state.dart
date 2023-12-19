// import 'package:freezed/freezed.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_game_state.freezed.dart';

@freezed
class CardGameState with _$CardGameState {
  const factory CardGameState.initial() = _Initial;
  const factory CardGameState.loading() = _Loading;
  const factory CardGameState.error(String error) = _Error;
  const factory CardGameState.readyToStart() = _ReadyToStart;
  const factory CardGameState.inProgress() = _InProgress;
  const factory CardGameState.gameOver() = _GameOver;
}
