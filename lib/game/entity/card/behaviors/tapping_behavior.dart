// import 'package:audioplayers/audioplayers.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:vg_tarabish_flame/game/components/stock_pile.dart';
import 'package:vg_tarabish_flame/game/entity/card/card.dart';
import 'package:vg_tarabish_flame/game/pile.dart';
import 'package:vg_tarabish_flame/game/tarabish_game.dart';
// import 'package:vg_sample_flame/game/game.dart';
// import 'package:vg_sample_flame/gen/assets.gen.dart';

class CardTappingBehavior extends Behavior<Card>
    with TapCallbacks, HasGameRef<TarabishGame> {
  @override
  bool containsLocalPoint(Vector2 point) {
    return parent.containsLocalPoint(point);
  }

  // @override
  // void onTapDown(TapDownEvent event) {
  //   // if (parent.isAnimationPlaying()) {
  //   //   return;
  //   // }
  //   // gameRef.counter++;
  //   // parent.playAnimation();

  //   // gameRef.effectPlayer.play(AssetSource(Assets.audio.effect));
  // }
  // Tap a face-up card to make it auto-move and go out (if acceptable), but
  // if it is face-down and on the Stock Pile, pass the event to that pile.

  @override
  void onTapUp(TapUpEvent event) {
    if (parent.pile?.canMoveCard(parent, MoveMethod.tap) ?? false) {
      final suitIndex = parent.suit.value;
      if (parent.world.foundations[suitIndex].canAcceptCard(parent)) {
        parent.pile!.removeCard(parent, MoveMethod.tap);
        parent.doMove(
          parent.world.foundations[suitIndex].position,
          onComplete: () {
            parent.world.foundations[suitIndex].acquireCard(parent);
          },
        );
      }
    } else if (parent.pile is StockPile) {
      parent.world.stock.onTapUp(event);
    }
  }
}
