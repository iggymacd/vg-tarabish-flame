// import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vg_tarabish_flame/game/entity/game/view/card_game_action.dart';
// import 'package:vg_tarabish_flame/tavern_repository/tavern_repository.dart';

// part 'tavern_event.dart';
// part 'tavern_state.dart';
part 'card_game.freezed.dart';

@freezed
sealed class CardGameView with _$CardGameView {
  // var currentStep;
  const CardGameView._();
  const factory CardGameView.tarabish({
    required String gameId,
    required List<CardGameAction> actions,
    int? playerPosition,
    // @Default(false) bool isDemo,

    // required List<CardGamemand> actions,
    // @Default(0) int currentAction,
    // @Default(0) int lastAction,
    // required int seed,
    // required int tarabishDraw,
    // required int action,
  }) = _TarabishGame;
  const factory CardGameView.initial() = _Initial;
  const factory CardGameView.loading() = _Loading;
  const factory CardGameView.error(String error) = _Error;
  const factory CardGameView.readyToStart() = _ReadyToStart;
  const factory CardGameView.inProgress() = _InProgress;
  const factory CardGameView.gameOver() = _GameOver;

  int get lastActionIndex {
    switch (this) {
      // case CardGameView.initial:
      //   return -1;
      // case CardGameView.loading:
      //   return -1;
      // case CardGameView.error:
      //   return -1;
      // case CardGameView.readyToStart:
      //   return -1;
      // case CardGameView.inProgress:
      //   return -1;
      // case CardGameView.gameOver:
      //   return -1;
      // break;
      // default:
      case final _TarabishGame t:
        return t.actions.length - 1;
      default:
        return -1;
      // return actions.length - 1;
      // TODO: Handle this case.
    }
    // return actions.length - 1;
  }

  CardGameAction? get lastAction {
    switch (this) {
      // case CardGameView.initial:
      //   return null;
      // case CardGameView.loading:
      //   return null;
      // case CardGameView.error:
      //   return null;
      // case CardGameView.readyToStart:
      //   return null;
      // case CardGameView.inProgress:
      //   return null;
      // case CardGameView.gameOver:
      //   return null;
      // break;
      // default:
      case final _TarabishGame t:
        return t.actions.lastOrNull;
      default:
        return null;
      // return actions.lastOrNull;}
    }
  }
}
  // CardGameAction? get currentAction => actions.elementAtOrNull(currentAction);

  // CardGame()
  //     : super();
  // deal() {
  //   parent?.onDeal();
  // }
  // void onDeal() {
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
// }
