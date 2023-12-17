import 'package:flame/components.dart';
import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:vg_tarabish_flame/bloc/tavern_bloc.dart';
import 'package:vg_tarabish_flame/game/behaviors/solitaire_setup_behavior.dart';
import 'package:vg_tarabish_flame/game/behaviors/tarabish_game_play_behavior.dart';
import 'package:vg_tarabish_flame/game/behaviors/tarabish_setup_behavior.dart';
import 'package:vg_tarabish_flame/game/components/foundation_pile.dart';
import 'package:vg_tarabish_flame/game/components/player_pile.dart';
import 'package:vg_tarabish_flame/game/components/stock_pile.dart';
import 'package:vg_tarabish_flame/game/components/tableau_pile.dart';
import 'package:vg_tarabish_flame/game/components/waste_pile.dart';
// import 'package:vg_tarabish_flame/game/entity/card/behaviors/behaviors.dart.old';
// import 'package:vg_tarabish_flame/game/entity/card/behaviors/dragging_behavior.dart.old';
// import 'package:vg_tarabish_flame/game/entity/card/behaviors/tapping_behavior.dart';

import 'package:vg_tarabish_flame/game/entity/card/card.dart';
import 'package:vg_tarabish_flame/game/tavern_game.dart';
import 'package:vg_tarabish_flame/start_game/start_game.dart';

class TavernWorld extends World
    with HasGameReference<TavernGames>, EntityMixin {
  late final TavernBloc tavernBloc; // = game.tavernBloc;
  late final StartGameBloc startGameBloc;
  late final String gameType;
  late int currentCardGameAction;
  final cardGap = TavernGames.cardGap;
  final topGap = TavernGames.topGap;
  final cardSpaceWidth = TavernGames.cardSpaceWidth;
  final cardSpaceHeight = TavernGames.cardSpaceHeight;

  final stock = StockPile(position: Vector2(0.0, 0.0));
  final waste = WastePile(position: Vector2(0.0, 0.0));
  final List<FoundationPile> foundations = [];
  final List<TableauPile> tableauPiles = [];
  final List<PlayerPile> playerPiles = [];
  final List<Card> cards = [];
  late Vector2 playAreaSize;

  @override
  Future<void> onLoad() async {
    tavernBloc = game.tavernBloc;
    startGameBloc = game.startGameBloc;
    // if ((game.action == Action.none || game.action == Action.newGame)) {
    ///  send an event to show dialog for user to choose game
    /// wait for a state indicating that the game type was chosen

    startGameBloc.add(const StartGameEvent.displayGameTypeDialog());
    final chosenState = await startGameBloc.stream.firstWhere((state) {
      print('runtime type is ${state.runtimeType}');
      return switch (state) {
        GameTypeChosen() => true,
        GameTypeDialogDisplayed() => false,
        Initial() => false,
        GameTypeDialogCancelled() => false,
      };
    }).timeout(
      const Duration(seconds: 10), // Set a reasonable timeout duration
      onTimeout: () {
        // Handle the case where the user cancels or times out
        // You can throw an exception or return a default value
        startGameBloc.add(const StartGameEvent.cancelDisplayGameTypeDialog());
        return Future.value(const GameTypeChosen(gameType: 'Solitaire'));
      },
    );

    gameType = switch (chosenState) {
      final GameTypeChosen currentState => currentState.gameType,
      GameTypeDialogDisplayed() ||
      Initial() ||
      GameTypeDialogCancelled() =>
        'Solitaire',
      // Initial() => 'Solitaire',
      // TODO: Handle this case.
      // GameTypeDialogCancelled() => null,
    };
    // } else {
    //   gameType = 'Solitaire';
    //   cardGame = CardGame(dealingBehavior: DealingBehavior());
    // }
    print('playing game of $gameType');
    // StartGameState.gameTypeChosen(gameType: gameType) =>
    switch (gameType) {
      case 'Solitaire':
        // await setupSolitaireGame();
        add(SolitaireSetupBehavior());
      case 'Tarabish':
        // await setupTarabishGame();
        // await add(TarabishSetupBehavior());
        add(TarabishGamePlayBehavior());
      default:
        // await setupSolitaireGame();
        add(SolitaireSetupBehavior());
    }
    // await setupSolitaireGame();
  }

  // Future<void> setupSolitaireGame() async {
  //   await Flame.images.load('tarabish-sprites.png');

  //   stock.position = Vector2(cardGap, topGap);
  //   waste.position = Vector2(cardSpaceWidth + cardGap, topGap);

  //   for (var i = 0; i < 4; i++) {
  //     foundations.add(
  //       FoundationPile(
  //         i,
  //         checkWin,
  //         position: Vector2((i + 3) * cardSpaceWidth + cardGap, topGap),
  //       ),
  //     );
  //   }
  //   for (var i = 0; i < 7; i++) {
  //     tableauPiles.add(
  //       TableauPile(
  //         position: Vector2(
  //           i * cardSpaceWidth + cardGap,
  //           cardSpaceHeight + topGap,
  //         ),
  //       ),
  //     );
  //   }
  //   for (var rank = 1; rank <= 13; rank++) {
  //     for (var suit = 0; suit < 4; suit++) {
  //       final card = Card(
  //         rank,
  //         suit,
  //         tappingBehavior: CardTappingBehavior(),
  //         cardDraggingBehavior: CardDraggingBehavior(),
  //       );
  //       card.position = stock.position;
  //       cards.add(card);
  //     }
  //   }

  //   add(stock);
  //   add(waste);
  //   await addAll(foundations);
  //   await addAll(tableauPiles);
  //   await addAll(cards);

  //   playAreaSize =
  //       Vector2(7 * cardSpaceWidth + cardGap, 4 * cardSpaceHeight + topGap);
  //   final gameMidX = playAreaSize.x / 2;

  //   addButton('New deal', gameMidX, Action.newDeal);
  //   addButton('Same deal', gameMidX + cardSpaceWidth, Action.sameDeal);
  //   addButton('Draw 1 or 3', gameMidX + 2 * cardSpaceWidth, Action.changeDraw);
  //   addButton('Have fun', gameMidX + 3 * cardSpaceWidth, Action.haveFun);
  //   addButton('New Game', gameMidX + 4 * cardSpaceWidth, Action.newGame);

  //   final camera = game.camera;
  //   camera.viewfinder.visibleGameSize = playAreaSize;
  //   camera.viewfinder.position = Vector2(gameMidX, 0);
  //   camera.viewfinder.anchor = Anchor.topCenter;

  //   // deal();
  //   if (!(game.action == Action.none || game.action == Action.newGame)) {
  //     // deal();
  //   }
  // }

  // Future<void> setupTarabishGame() async {
  //   await Flame.images.load('tarabish-sprites.png');

  //   stock.position = Vector2(cardGap, topGap);
  //   waste.position = Vector2(cardSpaceWidth + cardGap, topGap);

  //   for (var i = 0; i < 4; i++) {
  //     foundations.add(
  //       FoundationPile(
  //         i,
  //         checkWin,
  //         position: Vector2((i + 3) * cardSpaceWidth + cardGap,
  //             topGap + 2 * (cardSpaceHeight + cardGap)),
  //       ),
  //     );
  //   }
  //   for (var i = 0; i < 7; i++) {
  //     tableauPiles.add(
  //       TableauPile(
  //         position: Vector2(
  //           i * cardSpaceWidth + cardGap,
  //           cardSpaceHeight + topGap,
  //         ),
  //       ),
  //     );
  //   }
  //   for (var rank = 1; rank <= 13; rank++) {
  //     for (var suit = 0; suit < 4; suit++) {
  //       final card = Card(
  //         rank,
  //         suit,
  //         tappingBehavior: CardTappingBehavior(),
  //         cardDraggingBehavior: CardDraggingBehavior(),
  //       );
  //       card.position = stock.position;
  //       cards.add(card);
  //     }
  //   }

  //   add(stock);
  //   add(waste);
  //   await addAll(foundations);
  //   await addAll(tableauPiles);
  //   await addAll(cards);

  //   playAreaSize =
  //       Vector2(7 * cardSpaceWidth + cardGap, 4 * cardSpaceHeight + topGap);
  //   final gameMidX = playAreaSize.x / 2;

  //   addButton('New deal', gameMidX, Action.newDeal);
  //   addButton('Same deal', gameMidX + cardSpaceWidth, Action.sameDeal);
  //   addButton('Draw 1 or 3', gameMidX + 2 * cardSpaceWidth, Action.changeDraw);
  //   addButton('Have fun', gameMidX + 3 * cardSpaceWidth, Action.haveFun);
  //   addButton('New Game', gameMidX + 4 * cardSpaceWidth, Action.newGame);

  //   final camera = game.camera;
  //   camera.viewfinder.visibleGameSize = playAreaSize;
  //   camera.viewfinder.position = Vector2(gameMidX, 0);
  //   camera.viewfinder.anchor = Anchor.topCenter;

  //   // deal();
  //   if (!(game.action == Action.none || game.action == Action.newGame)) {
  //     // cardGame.onDeal();
  //     // deal();
  //   }
  // }

  // void addButton(String label, double buttonX, Action action) {
  //   final button = FlatButton(
  //     label,
  //     size: Vector2(TavernGames.cardWidth, 0.6 * topGap),
  //     position: Vector2(buttonX, topGap / 2),
  //     onReleased: () {
  //       if (action == Action.haveFun) {
  //         // Shortcut to the "win" sequence, for Tutorial purposes only.
  //         letsCelebrate();
  //       } else {
  //         if (action == Action.newGame) {
  //           print('starting new game');
  //           startGameBloc.add(const StartGameEvent.displayGameTypeDialog());
  //         }
  //         // Restart with a new deal or the same deal as before.
  //         game.action = action;
  //         game.world = TavernWorld();
  //       }
  //     },
  //   );
  //   add(button);
  // }

  // void deal() {
  //   assert(cards.length == 52, 'There are ${cards.length} cards: should be 52');

  //   if (game.action != Action.sameDeal) {
  //     // New deal: change the Random Number Generator's seed.
  //     game.seed = Random().nextInt(TavernGames.maxInt);
  //     if (game.action == Action.changeDraw) {
  //       game.tarabishDraw = (game.tarabishDraw == 3) ? 1 : 3;
  //     }
  //   }
  //   // For the "Same deal" option, re-use the previous seed, else use a new one.
  //   cards.shuffle(Random(game.seed));

  //   // Each card dealt must be seen to come from the top of the deck!
  //   var dealPriority = 1;
  //   for (final card in cards) {
  //     card.priority = dealPriority++;
  //   }

  //   // Change priority as cards take off: so later cards fly above earlier ones.
  //   var cardToDeal = cards.length - 1;
  //   var nMovingCards = 0;
  //   for (var i = 0; i < 7; i++) {
  //     for (var j = i; j < 7; j++) {
  //       final card = cards[cardToDeal--];
  //       card.doMove(
  //         tableauPiles[j].position,
  //         speed: 15.0,
  //         start: nMovingCards * 0.15,
  //         startPriority: 100 + nMovingCards,
  //         onComplete: () {
  //           tableauPiles[j].acquireCard(card);
  //           nMovingCards--;
  //           if (nMovingCards == 0) {
  //             var delayFactor = 0;
  //             for (final tableauPile in tableauPiles) {
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
  //     stock.acquireCard(cards[n]);
  //   }
  // }

  // void checkWin() {
  //   // Callback from a Foundation Pile when it is full (Ace to King).
  //   var nComplete = 0;
  //   for (final f in foundations) {
  //     if (f.isFull) {
  //       nComplete++;
  //     }
  //   }
  //   if (nComplete == foundations.length) {
  //     letsCelebrate();
  //   }
  // }

  // void letsCelebrate({int phase = 1}) {
  //   // Deal won: bring all cards to the middle of the screen (phase 1)
  //   // then scatter them to points just outside the screen (phase 2).
  //   //
  //   // First get the device's screen-size in game co-ordinates, then get the
  //   // top-left of the off-screen area that will accept the scattered cards.
  //   // Note: The play area is anchored at TopCenter, so topLeft.y is fixed.

  //   final cameraZoom = game.camera.viewfinder.zoom;
  //   final zoomedScreen = game.size / cameraZoom;
  //   final screenCenter = (playAreaSize - TavernGames.cardSize) / 2;
  //   final topLeft = Vector2(
  //     (playAreaSize.x - zoomedScreen.x) / 2 - TavernGames.cardWidth,
  //     -TavernGames.cardHeight,
  //   );
  //   final nCards = cards.length;
  //   final offscreenHeight = zoomedScreen.y + TavernGames.cardSize.y;
  //   final offscreenWidth = zoomedScreen.x + TavernGames.cardSize.x;
  //   final spacing = 2.0 * (offscreenHeight + offscreenWidth) / nCards;

  //   // Starting points, directions and lengths of offscreen rect's sides.
  //   final corner = [
  //     Vector2(0.0, 0.0),
  //     Vector2(0.0, offscreenHeight),
  //     Vector2(offscreenWidth, offscreenHeight),
  //     Vector2(offscreenWidth, 0.0),
  //   ];
  //   final direction = [
  //     Vector2(0.0, 1.0),
  //     Vector2(1.0, 0.0),
  //     Vector2(0.0, -1.0),
  //     Vector2(-1.0, 0.0),
  //   ];
  //   final length = [
  //     offscreenHeight,
  //     offscreenWidth,
  //     offscreenHeight,
  //     offscreenWidth,
  //   ];

  //   var side = 0;
  //   var cardsToMove = nCards;
  //   var offScreenPosition = corner[side] + topLeft;
  //   var space = length[side];
  //   var cardNum = 0;

  //   while (cardNum < nCards) {
  //     final cardIndex = phase == 1 ? cardNum : nCards - cardNum - 1;
  //     final card = cards[cardIndex];
  //     card.priority = cardIndex + 1;
  //     if (card.isFaceDown) {
  //       card.flip();
  //     }
  //     // Start cards a short time apart to give a riffle effect.
  //     final delay = phase == 1 ? cardNum * 0.02 : 0.5 + cardNum * 0.04;
  //     final destination = (phase == 1) ? screenCenter : offScreenPosition;
  //     card.doMove(
  //       destination,
  //       speed: (phase == 1) ? 15.0 : 5.0,
  //       start: delay,
  //       onComplete: () {
  //         cardsToMove--;
  //         if (cardsToMove == 0) {
  //           if (phase == 1) {
  //             letsCelebrate(phase: 2);
  //           } else {
  //             // Restart with a new deal after winning or pressing "Have fun".
  //             game.action = Action.none;
  //             game.world = TavernWorld();
  //           }
  //         }
  //       },
  //     );
  //     cardNum++;
  //     if (phase == 1) {
  //       continue;
  //     }

  //     // Phase 2: next card goes to same side with full spacing, if possible.
  //     offScreenPosition = offScreenPosition + direction[side] * spacing;
  //     space = space - spacing;
  //     if ((space < 0.0) && (side < 3)) {
  //       // Out of space: change to the next side and use excess spacing there.
  //       side++;
  //       offScreenPosition = corner[side] + topLeft - direction[side] * space;
  //       space = length[side] + space;
  //     }
  //   }
  // }
}
