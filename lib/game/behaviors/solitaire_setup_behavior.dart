import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:vg_tarabish_flame/game/components/flat_button.dart';
import 'package:vg_tarabish_flame/game/components/foundation_pile.dart';
import 'package:vg_tarabish_flame/game/components/tableau_pile.dart';
// import 'package:vg_tarabish_flame/game/entity/card/behaviors/dragging_behavior.dart.old';
// import 'package:vg_tarabish_flame/game/entity/card/behaviors/tapping_behavior.dart.old';
import 'package:vg_tarabish_flame/game/entity/card/card.dart';
import 'package:vg_tarabish_flame/game/tavern_game.dart';
import 'package:vg_tarabish_flame/game/tavern_world.dart';
import 'package:vg_tarabish_flame/start_game/bloc/start_game_bloc.dart';

class SolitaireSetupBehavior extends Behavior<TavernWorld> {
  @override
  Future<void> onLoad() async {
    await Flame.images.load('tarabish-sprites.png');

    parent.stock.position = Vector2(parent.cardGap, parent.topGap);
    parent.waste.position =
        Vector2(parent.cardSpaceWidth + parent.cardGap, parent.topGap);

    for (var i = 0; i < 4; i++) {
      parent.foundations.add(
        FoundationPile(
          i,
          checkWin,
          position: Vector2(
              (i + 3) * parent.cardSpaceWidth + parent.cardGap, parent.topGap),
        ),
      );
    }
    for (var i = 0; i < 7; i++) {
      parent.tableauPiles.add(
        TableauPile(
          position: Vector2(
            i * parent.cardSpaceWidth + parent.cardGap,
            parent.cardSpaceHeight + parent.topGap,
          ),
        ),
      );
    }
    for (var rank = 1; rank <= 13; rank++) {
      for (var suit = 0; suit < 4; suit++) {
        final card = Card(
          rank,
          suit,
          // tappingBehavior: CardTappingBehavior(),
          // cardDraggingBehavior: CardDraggingBehavior(),
        );
        card.position = parent.stock.position;
        parent.cards.add(card);
      }
    }

    // print("cards ${cards.}");
    add(parent.stock);
    add(parent.waste);
    await addAll(parent.foundations);
    await addAll(parent.tableauPiles);
    await addAll(parent.cards);

    parent.tableAreaSize = Vector2(7 * parent.cardSpaceWidth + parent.cardGap,
        4 * parent.cardSpaceHeight + parent.topGap);
    final gameMidX = parent.tableAreaSize.x / 2;

    addButton('New deal', gameMidX, Action.newDeal);
    addButton('Same deal', gameMidX + parent.cardSpaceWidth, Action.sameDeal);
    addButton(
        'Draw 1 or 3', gameMidX + 2 * parent.cardSpaceWidth, Action.changeDraw);
    addButton('Have fun', gameMidX + 3 * parent.cardSpaceWidth, Action.haveFun);
    addButton('New Game', gameMidX + 4 * parent.cardSpaceWidth, Action.newGame);

    final camera = parent.game.camera;
    camera.viewfinder.visibleGameSize = parent.tableAreaSize;
    camera.viewfinder.position = Vector2(gameMidX, 0);
    camera.viewfinder.anchor = Anchor.topCenter;

    // deal();
    if (!(parent.game.action == Action.none ||
        parent.game.action == Action.newGame)) {
      deal();
    }
  }

  void addButton(String label, double buttonX, Action action) {
    final button = FlatButton(
      label,
      size: Vector2(TavernGames.cardWidth, 0.6 * parent.topGap),
      position: Vector2(buttonX, parent.topGap / 2),
      onReleased: () {
        if (action == Action.haveFun) {
          // Shortcut to the "win" sequence, for Tutorial purposes only.
          letsCelebrate();
        } else {
          if (action == Action.newGame) {
            print('starting new game');
            parent.startGameBloc
                .add(const GameDialogEvent.displayGameTypeDialog());
          }
          // Restart with a new deal or the same deal as before.
          parent.game.action = action;
          parent.game.world = TavernWorld();
        }
      },
    );
    add(button);
  }

  void checkWin() {
    // Callback from a Foundation Pile when it is full (Ace to King).
    var nComplete = 0;
    for (final f in parent.foundations) {
      if (f.isFull) {
        nComplete++;
      }
    }
    if (nComplete == parent.foundations.length) {
      letsCelebrate();
    }
  }

  void letsCelebrate({int phase = 1}) {
    // Deal won: bring all cards to the middle of the screen (phase 1)
    // then scatter them to points just outside the screen (phase 2).
    //
    // First get the device's screen-size in game co-ordinates, then get the
    // top-left of the off-screen area that will accept the scattered cards.
    // Note: The play area is anchored at TopCenter, so topLeft.y is fixed.

    final cameraZoom = parent.game.camera.viewfinder.zoom;
    final zoomedScreen = parent.game.size / cameraZoom;
    final screenCenter = (parent.tableAreaSize - TavernGames.cardSize) / 2;
    final topLeft = Vector2(
      (parent.tableAreaSize.x - zoomedScreen.x) / 2 - TavernGames.cardWidth,
      -TavernGames.cardHeight,
    );
    final nCards = parent.cards.length;
    final offscreenHeight = zoomedScreen.y + TavernGames.cardSize.y;
    final offscreenWidth = zoomedScreen.x + TavernGames.cardSize.x;
    final spacing = 2.0 * (offscreenHeight + offscreenWidth) / nCards;

    // Starting points, directions and lengths of offscreen rect's sides.
    final corner = [
      Vector2(0.0, 0.0),
      Vector2(0.0, offscreenHeight),
      Vector2(offscreenWidth, offscreenHeight),
      Vector2(offscreenWidth, 0.0),
    ];
    final direction = [
      Vector2(0.0, 1.0),
      Vector2(1.0, 0.0),
      Vector2(0.0, -1.0),
      Vector2(-1.0, 0.0),
    ];
    final length = [
      offscreenHeight,
      offscreenWidth,
      offscreenHeight,
      offscreenWidth,
    ];

    var side = 0;
    var cardsToMove = nCards;
    var offScreenPosition = corner[side] + topLeft;
    var space = length[side];
    var cardNum = 0;

    while (cardNum < nCards) {
      final cardIndex = phase == 1 ? cardNum : nCards - cardNum - 1;
      final card = parent.cards[cardIndex];
      card.priority = cardIndex + 1;
      if (card.isFaceDown) {
        card.flip();
      }
      // Start cards a short time apart to give a riffle effect.
      final delay = phase == 1 ? cardNum * 0.02 : 0.5 + cardNum * 0.04;
      final destination = (phase == 1) ? screenCenter : offScreenPosition;
      card.doMove(
        destination,
        speed: (phase == 1) ? 15.0 : 5.0,
        start: delay,
        onComplete: () {
          cardsToMove--;
          if (cardsToMove == 0) {
            if (phase == 1) {
              letsCelebrate(phase: 2);
            } else {
              // Restart with a new deal after winning or pressing "Have fun".
              parent.game.action = Action.none;
              parent.game.world = TavernWorld();
            }
          }
        },
      );
      cardNum++;
      if (phase == 1) {
        continue;
      }

      // Phase 2: next card goes to same side with full spacing, if possible.
      offScreenPosition = offScreenPosition + direction[side] * spacing;
      space = space - spacing;
      if ((space < 0.0) && (side < 3)) {
        // Out of space: change to the next side and use excess spacing there.
        side++;
        offScreenPosition = corner[side] + topLeft - direction[side] * space;
        space = length[side] + space;
      }
    }
  }

  void deal() {
    assert(parent.cards.length == 52,
        'There are ${parent.cards.length} cards: should be 52');

    if (parent.game.action != Action.sameDeal) {
      // New deal: change the Random Number Generator's seed.
      parent.game.seed = Random().nextInt(TavernGames.maxInt);
      if (parent.game.action == Action.changeDraw) {
        parent.game.tarabishDraw = (parent.game.tarabishDraw == 3) ? 1 : 3;
      }
    }
    // For the "Same deal" option, re-use the previous seed, else use a new one.
    parent.cards.shuffle(Random(parent.game.seed));

    // Each card dealt must be seen to come from the top of the deck!
    var dealPriority = 1;
    for (final card in parent.cards) {
      card.priority = dealPriority++;
    }

    // Change priority as cards take off: so later cards fly above earlier ones.
    var cardToDeal = parent.cards.length - 1;
    var nMovingCards = 0;
    for (var i = 0; i < 7; i++) {
      for (var j = i; j < 7; j++) {
        final card = parent.cards[cardToDeal--];
        card.doMove(
          parent.tableauPiles[j].position,
          speed: 15.0,
          start: nMovingCards * 0.15,
          startPriority: 100 + nMovingCards,
          onComplete: () {
            parent.tableauPiles[j].acquireCard(card);
            nMovingCards--;
            if (nMovingCards == 0) {
              var delayFactor = 0;
              for (final tableauPile in parent.tableauPiles) {
                delayFactor++;
                tableauPile.flipTopCard(start: delayFactor * 0.15);
              }
            }
          },
        );
        nMovingCards++;
      }
    }
    for (var n = 0; n <= cardToDeal; n++) {
      parent.stock.acquireCard(parent.cards[n]);
    }
  }
}
