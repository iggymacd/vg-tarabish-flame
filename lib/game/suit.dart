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
  static const int CLUBS = 1; //2;
  static const int DIAMONDS = 2; //1;
  static const int SPADES = 3;

  /// The four suits of cards.

  static final List<Suit> _singletons = [
    Suit._(HEARTS, '♥', 1176, 17, 172, 183),
    Suit._(CLUBS, '♣', 974, 226, 184, 172),
    Suit._(DIAMONDS, '♦', 973, 14, 177, 182),
    Suit._(SPADES, '♠', 1178, 220, 176, 182),
  ];

  /// Hearts and Diamonds are red, while Clubs and Spades are black.
  bool get isRed => value % 2 == 0;
  bool get isBlack => value % 2 == 1;

  static const int ACE_OF_HEARTS = 0;
  static const int TWO_OF_HEARTS = 1;
  static const int THREE_OF_HEARTS = 2;
  static const int FOUR_OF_HEARTS = 3;
  static const int FIVE_OF_HEARTS = 4;
  static const int SIX_OF_HEARTS = 5;
  static const int SEVEN_OF_HEARTS = 6;
  static const int EIGHT_OF_HEARTS = 7;
  static const int NINE_OF_HEARTS = 8;
  static const int TEN_OF_HEARTS = 9;
  static const int JACK_OF_HEARTS = 10;
  static const int QUEEN_OF_HEARTS = 11;
  static const int KING_OF_HEARTS = 12;
  static const int ACE_OF_CLUBS = 13;
  static const int TWO_OF_CLUBS = 14;
  static const int THREE_OF_CLUBS = 15;
  static const int FOUR_OF_CLUBS = 16;
  static const int FIVE_OF_CLUBS = 17;
  static const int SIX_OF_CLUBS = 18;
  static const int SEVEN_OF_CLUBS = 19;
  static const int EIGHT_OF_CLUBS = 20;
  static const int NINE_OF_CLUBS = 21;
  static const int TEN_OF_CLUBS = 22;
  static const int JACK_OF_CLUBS = 23;
  static const int QUEEN_OF_CLUBS = 24;
  static const int KING_OF_CLUBS = 25;
  static const int ACE_OF_DIAMONDS = 26;
  static const int TWO_OF_DIAMONDS = 27;
  static const int THREE_OF_DIAMONDS = 28;
  static const int FOUR_OF_DIAMONDS = 29;
  static const int FIVE_OF_DIAMONDS = 30;
  static const int SIX_OF_DIAMONDS = 31;
  static const int SEVEN_OF_DIAMONDS = 32;
  static const int EIGHT_OF_DIAMONDS = 33;
  static const int NINE_OF_DIAMONDS = 34;
  static const int TEN_OF_DIAMONDS = 35;
  static const int JACK_OF_DIAMONDS = 36;
  static const int QUEEN_OF_DIAMONDS = 37;
  static const int KING_OF_DIAMONDS = 38;
  static const int ACE_OF_SPADES = 39;
  static const int TWO_OF_SPADES = 40;
  static const int THREE_OF_SPADES = 41;
  static const int FOUR_OF_SPADES = 42;
  static const int FIVE_OF_SPADES = 43;
  static const int SIX_OF_SPADES = 44;
  static const int SEVEN_OF_SPADES = 45;
  static const int EIGHT_OF_SPADES = 46;
  static const int NINE_OF_SPADES = 47;
  static const int TEN_OF_SPADES = 48;
  static const int JACK_OF_SPADES = 49;
  static const int QUEEN_OF_SPADES = 50;
  static const int KING_OF_SPADES = 51;
}
