// import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/text.dart';
import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:flutter/material.dart' as material;
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
  late final GameDialogBloc startGameBloc;
  late final String gameType;
  late int currentCardGameAction;
  final cardGap = TavernGames.cardGap;
  final topGap = TavernGames.topGap;
  final cardSpaceWidth = TavernGames.cardSpaceWidth;
  final cardSpaceHeight = TavernGames.cardSpaceHeight;
  final pauseOverlayIdentifier = 'PauseMenu';
  final chooseGameTypeOverlayIdentifier = 'ChooseGameType';

  final stock = StockPile(position: Vector2(0.0, 0.0));
  final waste = WastePile(position: Vector2(0.0, 0.0));
  final List<FoundationPile> foundations = [];
  final List<TableauPile> tableauPiles = [];
  final List<PlayerPile> playerPiles = [];
  final List<Card> cards = [];
  late Vector2 tableAreaSize;

  @override
  Future<void> onLoad() async {
    tavernBloc = game.tavernBloc;
    startGameBloc = game.gameDialogBloc;
    // game.overlays.add(pauseOverlayIdentifier);
    // game.overlays.add(chooseGameTypeOverlayIdentifier);
    // if ((game.action == Action.none || game.action == Action.newGame)) {
    ///  send an event to show dialog for user to choose game
    /// wait for a state indicating that the game type was chosen
    // add(TextComponent(
    //   text: 'Hello, Flame',
    //   size: Vector2.all(TavernGames.cardWidth), //.bind(context),
    //   textRenderer: TextPaint(
    //     style: TextStyle(
    //       color: material.Colors.white,
    //       fontSize: 200,
    //     ),
    //   ),
    //   // anchor: Anchor.center,
    //   priority: 1,
    //   position: Vector2.all(16),
    // ));
    if (game.action == Action.none || game.action == Action.newGame) {
      startGameBloc.add(const GameDialogEvent.displayGameTypeDialog());
      final chosenState = await startGameBloc.stream.firstWhere((state) {
        // print('runtime type is ${state.runtimeType}');
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
          startGameBloc
              .add(const GameDialogEvent.cancelDisplayGameTypeDialog());
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
      // }
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
    } else {
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
    }
    super.onLoad();
    // await setupSolitaireGame();
  }
}
