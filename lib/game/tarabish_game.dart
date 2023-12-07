import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';

import 'tarabish_world.dart';

enum Action { newDeal, sameDeal, changeDraw, haveFun }

class TarabishGame extends FlameGame<TarabishWorld> {
  static const double cardGap = 175.0;
  static const double topGap = 500.0;
  static const double cardWidth = 1000.0;
  static const double cardHeight = 1400.0;
  static const double cardRadius = 100.0;
  static const double cardSpaceWidth = cardWidth + cardGap;
  static const double cardSpaceHeight = cardHeight + cardGap;
  static final Vector2 cardSize = Vector2(cardWidth, cardHeight);
  static final cardRRect = RRect.fromRectAndRadius(
    const Rect.fromLTWH(0, 0, cardWidth, cardHeight),
    const Radius.circular(cardRadius),
  );

  // Constant used when creating Random seed.
  static const int maxInt = 0xFFFFFFFE; // = (2 to the power 32) - 1

  // This TarabishGame constructor also initiates the first TarabishWorld.
  TarabishGame() : super(world: TarabishWorld());

  // These three values persist between games and are starting conditions
  // for the next game to be played in TarabishWorld. The actual seed is
  // computed in TarabishWorld but is held here in case the player chooses
  // to replay a game by selecting Action.sameDeal.
  int tarabishDraw = 1;
  int seed = 1;
  Action action = Action.newDeal;
}

Sprite tarabishSprite(double x, double y, double width, double height) {
  return Sprite(
    Flame.images.fromCache('tarabish-sprites.png'),
    srcPosition: Vector2(x, y),
    srcSize: Vector2(width, height),
  );
}
