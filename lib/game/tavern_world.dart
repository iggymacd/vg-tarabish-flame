// import 'dart:ui';

import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/text.dart';
import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:flutter/material.dart' as material;
import 'package:vg_tarabish_flame/bloc/game_in_progress_bloc.dart';
import 'package:vg_tarabish_flame/bloc/tavern_bloc.dart';
import 'package:vg_tarabish_flame/game/behaviors/main_menu_behavior.dart';
import 'package:vg_tarabish_flame/game/behaviors/solitaire_setup_behavior.dart';
import 'package:vg_tarabish_flame/game/behaviors/tarabish_game_play_behavior.dart';
import 'package:vg_tarabish_flame/game/behaviors/tarabish_setup_behavior.dart';
import 'package:vg_tarabish_flame/game/components/foundation_pile.dart';
import 'package:vg_tarabish_flame/game/components/player_pile.dart';
import 'package:vg_tarabish_flame/game/components/stock_pile.dart';
import 'package:vg_tarabish_flame/game/components/tableau_pile.dart';
import 'package:vg_tarabish_flame/game/components/trick_pile.dart';
import 'package:vg_tarabish_flame/game/components/waste_pile.dart';
import 'package:vg_tarabish_flame/game/components/winning_trick_pile.dart';
// import 'package:vg_tarabish_flame/game/entity/card/behaviors/behaviors.dart.old';
// import 'package:vg_tarabish_flame/game/entity/card/behaviors/dragging_behavior.dart.old';
// import 'package:vg_tarabish_flame/game/entity/card/behaviors/tapping_behavior.dart';

import 'package:vg_tarabish_flame/game/entity/card/card.dart';
import 'package:vg_tarabish_flame/game/tavern_game.dart';
import 'package:vg_tarabish_flame/start_game/start_game.dart';

class TavernWorld extends World
    with HasGameReference<TavernGames>, EntityMixin {
  late final TavernBloc tavernBloc; // = game.tavernBloc;
  late StreamSubscription<TavernState> tavernBlocSubscription;
  late final GameDialogBloc startGameBloc;
  late GameInProgressBloc gameInProgressBloc;
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
  final List<TrickPile> trickPiles = [];
  final List<WinningTrickPile> winningTrickPiles = [];
  late TarabishGamePlayBehavior tarabishGamePlayBehavior =
      TarabishGamePlayBehavior();
  // final List<TrickPile> trickPiles = [ = TrickPile(position: Vector2(0.0, 0.0),message:);
  // final List<Card> cards =');
  late List<Card> cards;
  late Vector2 tableAreaSize;

  @override
  Future<void> onLoad() async {
    print('calling tavern world onLoad...');
    tavernBloc = game.tavernBloc;
    // startGameBloc = game.gameDialogBloc;
    cards = [];
    tableAreaSize =
        Vector2(4 * cardSpaceHeight + topGap, 4 * cardSpaceHeight + topGap);
    final camera = game.camera;
    final gameMidX = tableAreaSize.x / 2;
    camera.viewfinder.visibleGameSize = tableAreaSize;
    camera.viewfinder.position = Vector2(gameMidX, 0);
    camera.viewfinder.anchor = Anchor.topCenter;
    await add(MainMenuBehavior());
    tavernBlocSubscription = tavernBloc.stream.listen((state) async {
      // print('listening for events...');
      switch (state) {
        case TavernStateLobby():
          await add(MainMenuBehavior());
        case final CurrentGameInProgressUpdated state:
          print('TavernWorld - CurrentGameStateUpdated event received');
          gameInProgressBloc = state.gameInProgressBloc;
          if (tarabishGamePlayBehavior.isMounted) {
            tarabishGamePlayBehavior.removeFromParent();
          }
          // remove(tarabishGamePlayBehavior); // remove existing behavior
          // add new behavior
          tarabishGamePlayBehavior = TarabishGamePlayBehavior(); // start clean
          // add(tarabishGamePlayBehavior);
          await add(tarabishGamePlayBehavior);
        case TavernGamesOrMembersUpdated():
          print('TavernWorld - TavernGamesOrMembersUpdated event received');
        // TODONE: Handle this case.
      }
    });

    super.onLoad();
    // await setupSolitaireGame();
  }

  @override
  void update(double dt) {
    super.update(dt);
  }

  // @override
  // void render(Canvas canvas) {
  //   super.render(canvas);
  // }
  @override
  void onRemove() {
    print('onRemove called...');
    cards = [];
    foundations.clear();
    tableauPiles.clear();
    playerPiles.clear();
    trickPiles.clear();
    winningTrickPiles.clear();
    gameInProgressBloc.close();
    tavernBlocSubscription.cancel();
    // startGameBloc.close();
    // tavernBloc.close();
    super.onRemove();
  }
}
