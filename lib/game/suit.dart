import 'package:flame/sprite.dart';
import 'package:flutter/foundation.dart';
import 'tavern_game.dart';

@immutable
class Suit {
  // static var spades;

  factory Suit.fromInt(int index) {
    assert(
      index >= 0 && index <= 3,
      'index is outside of the bounds of what a suit can be',
    );
    return _singletons[index];
  }

  Suit._(this.value, this.label, double x, double y, double w, double h)
      : sprite = tarabishSprite(x, y, w, h);

  final int value;
  final String label;
  final Sprite sprite;

  static const int HEARTS = 0;
  static const int DIAMONDS = 1;
  static const int CLUBS = 2;
  static const int SPADES = 3;

  /// The four suits of cards.

  static final List<Suit> _singletons = [
    Suit._(HEARTS, '♥', 1176, 17, 172, 183),
    Suit._(DIAMONDS, '♦', 973, 14, 177, 182),
    Suit._(CLUBS, '♣', 974, 226, 184, 172),
    Suit._(SPADES, '♠', 1178, 220, 176, 182),
  ];

  /// Hearts and Diamonds are red, while Clubs and Spades are black.
  bool get isRed => value <= 1;
  bool get isBlack => value >= 2;
}
