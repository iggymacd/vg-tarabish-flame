// import 'package:freezed/freezed.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_game_action.freezed.dart';

@freezed
sealed class CardGameAction with _$CardGameAction {
  const factory CardGameAction.startGame() = StartGame;
  const factory CardGameAction.drawCard() = DrawCard;
  const factory CardGameAction.playCard(String cardId) = PlayCard;
  const factory CardGameAction.endTurn() = EndTurn;
  const factory CardGameAction.showHand() = ShowHand;
  const factory CardGameAction.bidHand({
    required int bid,
    required int playerId,
  }) = BidHand;
  const factory CardGameAction.showTable() = ShowTable;
  const factory CardGameAction.showScoreboard() = ShowScoreboard;
  const factory CardGameAction.shuffle() = Shuffle;
  const factory CardGameAction.deal({
    required List<int> cardIds,
    required int playerId,
    @Default(false) bool flip,
  }) = Deal;
}
