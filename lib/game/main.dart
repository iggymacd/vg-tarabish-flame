import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';

import 'tarabish_game.dart';

void main() {
  final game = TarabishGame();
  runApp(GameWidget(game: game));
}
