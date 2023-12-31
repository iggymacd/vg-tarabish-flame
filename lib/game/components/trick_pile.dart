import 'dart:ui';

import 'package:flame/components.dart';

import '../pile.dart';
import '../tavern_game.dart';
import '../entity/card/card.dart';

class TrickPile extends PositionComponent implements Pile {
  TrickPile({required this.message, super.position})
      : super(size: TavernGames.cardSize) {
    // message.position.setFrom(Vector2(position.x + 10, position.y + 10));
    add(message);
  }

  /// Which cards are currently placed onto this pile.
  final List<Card> _cards = [];
  final Vector2 _fanOffset1 = Vector2(0, TavernGames.cardHeight * 0.05);
  final Vector2 _fanOffset2 = Vector2(0, TavernGames.cardHeight * 0.20);
  final Vector2 _fanOffset1h =
      Vector2(TavernGames.cardWidth * TavernGames.cardSpacingFaceDown, 0);
  final Vector2 _fanOffset2h =
      Vector2(TavernGames.cardWidth * TavernGames.cardSpacingFaceUp, 0);
  final TextComponent message;

  //#region Pile API

  @override
  bool canMoveCard(Card card, MoveMethod method) =>
      card.isFaceUp && (method == MoveMethod.drag || card == _cards.last);
  // Drag can move multiple cards: tap can move last card only (to Foundation).

  @override
  bool canAcceptCard(Card card) {
    // if (_cards.isEmpty) {
    //   return card.rank.value == 13;
    // } else {
    //   final topCard = _cards.last;
    //   return card.suit.isRed == !topCard.suit.isRed &&
    //       card.rank.value == topCard.rank.value - 1;
    // }
    return true;
  }

  @override
  void removeCard(Card card, MoveMethod method) {
    assert(_cards.contains(card) && card.isFaceUp);
    final index = _cards.indexOf(card);
    _cards.removeRange(index, _cards.length);
    if (_cards.isNotEmpty && _cards.last.isFaceDown) {
      flipTopCard();
      return;
    }
    layOutCards();
  }

  @override
  void returnCard(Card card) {
    card.priority = _cards.indexOf(card);
    layOutCards();
  }

  @override
  void acquireCard(Card card) {
    card.pile = this;
    card.priority = _cards.length;
    _cards.add(card);
    layOutCards();
  }

  //#endregion

  void dropCards(Card firstCard, [List<Card> attachedCards = const []]) {
    final cardList = [firstCard];
    cardList.addAll(attachedCards);
    Vector2 nextPosition = _cards.isEmpty ? position : _cards.last.position;
    var nCardsToMove = cardList.length;
    for (final card in cardList) {
      card.pile = this;
      card.priority = _cards.length;
      if (_cards.isNotEmpty) {
        nextPosition =
            nextPosition + (card.isFaceDown ? _fanOffset1 : _fanOffset2);
      }
      _cards.add(card);
      card.doMove(
        nextPosition,
        startPriority: card.priority,
        onComplete: () {
          nCardsToMove--;
          if (nCardsToMove == 0) {
            calculateHitArea(); // Expand the hit-area.
          }
        },
      );
    }
  }

  void flipTopCard({double start = 0.1}) {
    assert(_cards.last.isFaceDown);
    _cards.last.turnFaceUp(
      start: start,
      onComplete: layOutCards,
    );
  }

  void layOutCards() {
    // sortCards();
    final cardSpacingAdjustment =
        (TavernGames.cardSpacingFaceUp - TavernGames.cardSpacingFaceDown) /
            2 *
            _cards.length;
    if (_cards.isEmpty) {
      calculateHitArea(); // Shrink hit-area when all cards have been removed.
      return;
    }
    position = Vector2(position.x - cardSpacingAdjustment, y);
    _cards[0].position.setFrom(position);
    _cards[0].priority = 0;
    for (var i = 1; i < _cards.length; i++) {
      _cards[i].priority = i;
      _cards[i].position
        ..setFrom(_cards[i - 1].position)
        ..add(_cards[i - 1].isFaceDown ? _fanOffset1h : _fanOffset2h);
    }
    calculateHitArea(); // Adjust hit-area to more cards or fewer cards.
  }

  void calculateHitArea() {
    height = TavernGames.cardHeight * 1.5 +
        (_cards.length < 2 ? 0.0 : _cards.last.y - _cards.first.y);
  }

  List<Card> cardsOnTop(Card card) {
    assert(card.isFaceUp && _cards.contains(card));
    final index = _cards.indexOf(card);
    return _cards.getRange(index + 1, _cards.length).toList();
  }

  //#region Rendering

  final _borderPaint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 10
    ..color = const Color(0x50ffffff);

  @override
  void render(Canvas canvas) {
    canvas.drawRRect(TavernGames.cardRRect, _borderPaint);
  }

  void sortCards() {
    _cards.sort((a, b) {
      if (a.suit.value == b.suit.value) {
        return a.rank.value.compareTo(b.rank.value);
      } else {
        return a.suit.value.compareTo(b.suit.value);
      }
    });
  }

  //#endregion
}
