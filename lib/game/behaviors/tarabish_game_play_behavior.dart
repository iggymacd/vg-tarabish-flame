import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:vg_tarabish_flame/bloc/tavern_bloc.dart';
import 'package:vg_tarabish_flame/game/components/flat_button.dart';
import 'package:vg_tarabish_flame/game/components/player_pile.dart';
import 'package:vg_tarabish_flame/game/entity/card/card.dart';
import 'package:vg_tarabish_flame/game/entity/game/view/card_game_action.dart';
import 'package:vg_tarabish_flame/game/tavern_game.dart';
import 'package:vg_tarabish_flame/game/tavern_world.dart';
import 'package:vg_tarabish_flame/start_game/bloc/start_game_bloc.dart';

class TarabishGamePlayBehavior extends Behavior<TavernWorld> {
  // final List<PlayerPile> playerPiles = [];
  int counter = 0;
  @override
  Future<void> onLoad() async {
    super.onLoad();
    parent.currentCardGameAction = -1;
    await Flame.images.load('tarabish-sprites.png');

    parent.stock.position = Vector2(parent.cardGap, parent.topGap);
    // parent.waste.position =
    //     Vector2(parent.cardSpaceWidth + parent.cardGap, parent.topGap);
    parent.playAreaSize = Vector2(4 * parent.cardSpaceHeight + parent.topGap,
        4 * parent.cardSpaceHeight + parent.topGap);
    // for (var i = 0; i < 4; i++) {
    //   parent.foundations.add(
    //     FoundationPile(
    //       i,
    //       checkWin,
    //       position: Vector2((i + 3) * parent.cardSpaceWidth + parent.cardGap,
    //           2 * parent.cardSpaceHeight + parent.topGap),
    //     ),
    //   );
    // }
    for (var i = 0; i < 4; i++) {
      parent.playerPiles.add(
        PlayerPile(
          position: getPlayerPosition(i),
        ),
      );
    }

    // for (var rank = 1; rank <= 13; rank++) {
    for (var suit = 0; suit < 4; suit++) {
      // if (rank > 1 && rank < 6) {
      //   continue;
      // }
      // for (var suit = 0; suit < 4; suit++) {
      for (var rank = 1; rank <= 13; rank++) {
        if (rank > 1 && rank < 6) {
          continue;
        }
        final card = Card(
          rank,
          suit,
        );
        card.position = parent.stock.position;
        // parent.stock.add(card);
        parent.stock.acquireCard(card);
        parent.cards.add(card);
      }
    }
    parent.cards.indexed.forEach((element) => print('element is $element'));
    add(parent.stock);
    // add(parent.waste);
    // await addAll(parent.foundations);
    await addAll(parent.playerPiles);
    await addAll(parent.cards);

    // Vector2(7 * parent.cardSpaceWidth + parent.cardGap,
    //     4 * parent.cardSpaceHeight + parent.topGap);
    final gameMidX = parent.playAreaSize.x / 2;

    addButton('New deal', gameMidX, Action.newDeal);
    addButton('Same deal', gameMidX + parent.cardSpaceWidth, Action.sameDeal);
    addButton('Demo', gameMidX + 2 * parent.cardSpaceWidth, Action.demo);
    addButton('Have fun', gameMidX + 3 * parent.cardSpaceWidth, Action.haveFun);
    addButton('New Game', gameMidX + 4 * parent.cardSpaceWidth, Action.newGame);

    final camera = parent.game.camera;
    camera.viewfinder.visibleGameSize = parent.playAreaSize;
    camera.viewfinder.position = Vector2(gameMidX, 0);
    camera.viewfinder.anchor = Anchor.topCenter;

    // deal();
    if (!(parent.game.action == Action.none ||
        parent.game.action == Action.newGame)) {
      // deal();
    }
    play();
  }

  @override
  void update(double dt) {
    // TODO: implement update
    super.update(dt);
  }

  ///
  void play() {
    parent.tavernBloc.stream.listen((state) {
      print('I am listening for TavernStates got $state');
      switch (state) {
        case TavernState.initial:
          print('Tavern State is initial...');
        case TavernState.tavernGamesOrMembersUpdated:
          print('Tavern State is tavernGamesOrMembersUpdated');
        case CurrentGameStateUpdated():

          ///
          print("CardGame state is updated - handle state change");
          final cardGameState = state.cardGame;
          // parent.currentCardGameView =
          //     CardGameView(cardGameState, commands: List.empty());
          // Compare the currentCardGameView to see what the current command
          // index is and check if it is 1 less than the last action on the
          // cardGameState from the repository. If it is then we just have to
          // create a new CardGameCommand and execute it. Otherwise, find the
          // appropriate action from cardGame that matches the
          // currentCommandIndex, and create a new command for each and execute
          //  until we get to the end. Then we can consider our CardGameView as
          //  synchronized with the cardGame state.
          if (parent.currentCardGameAction ==
              cardGameState.lastActionIndex - 1) {
            execute(cardGameState.lastAction);
            // Create a new command and execute it.
            // final command = CardGameCommand();
            // command.execute(parent);
          } else if (parent.currentCardGameAction <
              cardGameState.lastActionIndex - 1) {
            cardGameState.actions
                .getRange(parent.currentCardGameAction + 1,
                    cardGameState.actions.length)
                .forEach(execute);
            // Find the appropriate action from cardGame that matches the currentCommandIndex.
            // final action = cardGame.actions[cardGameView.currentCommand];

            // // Create a new command for each action and execute until we get to the end.
            // for (final action in action) {
            //   final command = CardGameCommand();
            //   command.execute(cardGameView);
            // }
          }

          // Consider our CardGameView as synchronized with the cardGame state.
          parent.currentCardGameAction = cardGameState.lastActionIndex;
        // final currentStep = cardGameState.cardGame.currentStep;
        // final lastStep = parent.currentCardGame.lastStep;
        // if (currentStep > lastStep) {
        //   // We need to replay the steps from lastStep to currentStep.
        //   for (var i = lastStep + 1; i <= currentStep; i++) {
        //     // TODO: implement UI update for step i.
        //   }
        // }
        default:
          print('no match');
      }
    });
    final isDemo = parent.game.action == Action.demo;

    parent.tavernBloc
        .add(TavernEvent.newGame(gameType: 'Tarabish', demo: isDemo));
  }

  @override
  void onRemove() {
    // TODO: implement onRemove
    super.onRemove();
  }

  void execute(CardGameAction? lastAction) {
    switch (lastAction) {
      case Shuffle shuffleAction:
        _handleShuffle(shuffleAction);
      case final Deal dealAction:
        _handleDeal(dealAction);
      // case  Draw drawAction:
      //   _handleDraw(drawAction);
      // case Discard discardAction:
      //   _handleDiscard(discardAction);
      // case Play playAction:
      //   _handlePlay(playAction);
      default:
        print("default");
    }
  }

  // void _handleDeal(Deal dealAction) {
  //   print('deal');
  // }

  void _handleDeal(Deal dealAction) {
    // print('draw for ${}');
    final playerPosition = dealAction.playerId;
    final cardsToDeal = dealAction.cardIds;
    final flipCards = dealAction.flip;
    // final counter = dealAction.counter;
    // var targetB = parent.playerPiles[playerPosition!];
    // var cardToDeal;
    int counter = 0;
    print('deal for $playerPosition of $cardsToDeal');
    for (final cardId in cardsToDeal) {
      Card cardToDeal = parent.cards[cardId];
      if (flipCards) {
        cardToDeal.flip();
      }
      cardToDeal.doMove(
        parent.playerPiles[playerPosition].position,
        speed: 10.0,
        start: counter * 0.15, //nMovingCards * 0.15,
        startPriority: 100 + counter++, // + nMovingCards,
        onComplete: () {
          parent.playerPiles[playerPosition].acquireCard(cardToDeal);
          // nMovingCards--;
          // if (playerPosition == 0) {
          //   var delayFactor = 0;
          //   for (final playerPile in parent.playerPiles) {
          //     delayFactor++;
          //     playerPile.flipTopCard(start: delayFactor * 0.15);
          //   }
          // }
        },
      );
    }
    // var nMovingCards = 0;
    // final cardToDraw = parent.cards.last;

    //   for (var x = 0; x < 3; x++) {
    //     final target = targetB;
    //     // parent.playerPiles[playerPosition!];
    //     Card cardToDeal = parent.cards[x + (counter * x)];
    // cardToDeal.doMove(
    //   target.position,
    //   speed: 15.0,
    //   start: 0, //nMovingCards * 0.15,
    //   startPriority: 100, // + nMovingCards,
    //   onComplete: () {
    //     target.acquireCard(cardToDeal);
    //     // nMovingCards--;
    //     // if (nMovingCards == 0) {
    //     //   var delayFactor = 0;
    //     //   for (final playerPile in parent.playerPiles) {
    //     //     delayFactor++;
    //     //     playerPile.flipTopCard(start: delayFactor * 0.15);
    //     //   }
    //     // }
    //   },
    // );
    //     // nMovingCards++;
    //   }
  }

  // void _handleDiscard(Discard discardAction) {
  //   print('discardAction');
  // }

  // void _handlePlay(Play playAction) {
  //   print('play');
  // }

  void _handleShuffle(Shuffle shuffleAction) {
    print('shuffle');
    // TODO: implement shuffle
    final cards = parent.cards;
    // var nMovingCards = 0;
    // var cardToDeal =
  }

  // void dealCard(
  //     List<Card> cards, int cardToDeal, int nMovingCards, TavernWorld parent) {
  //   final card = cards[cardToDeal--];
  //   card.doMove(
  //     parent.tableauPiles[nMovingCards].position,
  //     speed: 15.0,
  //     start: nMovingCards * 0.15,
  //     startPriority: 100 + nMovingCards,
  //     onComplete: () {
  //       parent.tableauPiles[nMovingCards].acquireCard(card);
  //       nMovingCards--;
  //       if (nMovingCards == 0) {
  //         var delayFactor = 0;
  //         for (final tableauPile in parent.tableauPiles) {
  //           delayFactor++;
  //           tableauPile.flipTopCard(start: delayFactor * 0.15);
  //         }
  //       }
  //     },
  //   );
  //   nMovingCards++;
  // }
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
                .add(const StartGameEvent.displayGameTypeDialog());
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
    final screenCenter = (parent.playAreaSize - TavernGames.cardSize) / 2;
    final topLeft = Vector2(
      (parent.playAreaSize.x - zoomedScreen.x) / 2 - TavernGames.cardWidth,
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

  // void deal() {
  //   assert(parent.cards.length == 36,
  //       'There are ${parent.cards.length} cards: should be 52');

  //   if (parent.game.action != Action.sameDeal) {
  //     // New deal: change the Random Number Generator's seed.
  //     parent.game.seed = Random().nextInt(TavernGames.maxInt);
  //     if (parent.game.action == Action.changeDraw) {
  //       parent.game.tarabishDraw = (parent.game.tarabishDraw == 3) ? 1 : 3;
  //     }
  //   }
  //   // For the "Same deal" option, re-use the previous seed, else use a new one.
  //   parent.cards.shuffle(Random(parent.game.seed));

  //   // Each card dealt must be seen to come from the top of the deck!
  //   var dealPriority = 1;
  //   for (final card in parent.cards) {
  //     card.priority = dealPriority++;
  //   }

  //   // Change priority as cards take off: so later cards fly above earlier ones.
  //   var cardToDeal = parent.cards.length - 1;
  //   var nMovingCards = 0;
  //   for (var i = 0; i < 4; i++) {
  //     for (var j = i; j < 4; j++) {
  //       final card = parent.cards[cardToDeal--];
  //       card.doMove(
  //         playerPiles[j].position,
  //         speed: 15.0,
  //         start: nMovingCards * 0.15,
  //         startPriority: 100 + nMovingCards,
  //         onComplete: () {
  //           playerPiles[j].acquireCard(card);
  //           nMovingCards--;
  //           if (nMovingCards == 0) {
  //             var delayFactor = 0;
  //             for (final tableauPile in playerPiles) {
  //               delayFactor++;
  //               tableauPile.flipTopCard(start: delayFactor * 0.15);
  //             }
  //           }
  //         },
  //       );
  //       nMovingCards++;
  //     }
  //   }
  //   for (var n = 0; n <= cardToDeal; n++) {
  //     parent.stock.acquireCard(parent.cards[n]);
  //   }
  // }

  Vector2 getPlayerPosition(int i) {
    switch (i) {
      case 0:
        return Vector2(parent.playAreaSize.x / 2 - parent.cardSpaceWidth / 2,
            parent.playAreaSize.y - parent.cardSpaceHeight);
      case 1:
        return Vector2(parent.cardGap,
            parent.playAreaSize.y / 2 - parent.cardSpaceHeight / 2);
      case 2:
        return Vector2(parent.playAreaSize.x / 2 - parent.cardSpaceWidth / 2,
            parent.topGap);
      case 3:
        return Vector2(parent.playAreaSize.x - parent.cardSpaceWidth,
            parent.playAreaSize.y / 2 - parent.cardSpaceHeight / 2);
      default:
        return Vector2(parent.playAreaSize.x / 2 - parent.cardSpaceWidth / 2,
            parent.playAreaSize.y - parent.cardSpaceHeight);
    }
  }
}
