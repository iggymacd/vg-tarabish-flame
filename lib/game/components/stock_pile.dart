import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';

import '../pile.dart';
import '../tavern_game.dart';
import '../entity/card/card.dart';
import 'waste_pile.dart';

class StockPile extends PositionComponent
    with TapCallbacks, HasGameReference<TavernGames>
    implements Pile {
  StockPile({super.position}) : super(size: TavernGames.cardSize);

  /// Which cards are currently placed onto this pile. The first card in the
  /// list is at the bottom, the last card is on top.
  final List<Card> _cards = [];
  Card get topCard => _cards.last;
  //#region Pile API

  @override
  bool canMoveCard(Card card, MoveMethod method) => false;
  // Can be moved by onTapUp callback (see below).

  @override
  bool canAcceptCard(Card card) => false;

  @override
  void removeCard(Card card, MoveMethod method) =>
      throw StateError('cannot remove cards');

  @override
  void returnCard(Card card) => throw StateError('cannot remove cards');

  @override
  void acquireCard(Card card) {
    assert(card.isFaceDown);
    card.pile = this;
    card.position = position;
    card.priority = _cards.length;
    _cards.add(card);
  }

  //#endregion

  @override
  void onTapUp(TapUpEvent event) {
    final wastePile = parent!.firstChild<WastePile>()!;
    if (_cards.isEmpty) {
      wastePile.removeAllCards().reversed.forEach((card) {
        card.flip();
        acquireCard(card);
      });
    } else {
      for (var i = 0; i < game.tarabishDraw; i++) {
        if (_cards.isNotEmpty) {
          final card = _cards.removeLast();
          card.doMoveAndFlip(
            wastePile.position,
            whenDone: () {
              wastePile.acquireCard(card);
            },
          );
        }
      }
    }
  }

  //#region Rendering

  final _borderPaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 10
    ..color = const Color(0xFF3F5B5D);
  final _circlePaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 100
    ..color = const Color(0x883F5B5D);

  @override
  void render(Canvas canvas) {
    canvas.drawRRect(TavernGames.cardRRect, _borderPaint);
    canvas.drawCircle(
      Offset(width / 2, height / 2),
      TavernGames.cardWidth * 0.3,
      _circlePaint,
    );
  }

  //#endregion
}
