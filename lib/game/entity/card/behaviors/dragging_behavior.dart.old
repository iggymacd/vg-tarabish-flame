import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_behaviors/flame_behaviors.dart';
import 'package:vg_tarabish_flame/game/components/foundation_pile.dart';
import 'package:vg_tarabish_flame/game/components/tableau_pile.dart';
import 'package:vg_tarabish_flame/game/entity/card/card.dart';
import 'package:vg_tarabish_flame/game/pile.dart';

class CardDraggingBehavior extends Behavior<Card> with DragCallbacks {
  @override
  void onDragStart(DragStartEvent event) {
    super.onDragStart(event);
    if (parent.pile?.canMoveCard(parent, MoveMethod.drag) ?? false) {
      print("setting dragging to true");
      parent.dragging = true;
      parent.priority = 100;
      print("dragging is ${parent.dragging}");
      // Copy each co-ord, else _whereCardStarted changes as the position does.
      parent.whereCardStarted = Vector2(parent.position.x, parent.position.y);
      if (parent.pile is TableauPile) {
        parent.attachedCards.clear();
        final extraCards = (parent.pile! as TableauPile).cardsOnTop(parent);
        for (final card in extraCards) {
          card.priority = parent.attachedCards.length + 101;
          parent.attachedCards.add(card);
        }
      }
    }
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    print("onDragUpdate dragging is ${parent.dragging}");
    if (!parent.dragging) {
      return;
    }
    final delta = event.localDelta;
    parent.position.add(delta);
    parent.attachedCards.forEach((card) => card.position.add(delta));
  }

  @override
  void onDragEnd(DragEndEvent event) {
    print("onDragEnd dragging is ${parent.dragging}");
    super.onDragEnd(event);
    print("2nd onDragEnd dragging is ${parent.dragging}");
    if (!parent.dragging) {
      return;
    }
    parent.dragging = false;
    // Find out what is under the center-point of this card when it is dropped.
    // print(
    //     "parent position is ${parent.componentsAtPoint(parent.position + parent.size / 2)}");
    final dropPiles = parent.parent!
        .componentsAtPoint(parent.position + parent.size / 2)
        .whereType<Pile>()
        .toList();
    if (dropPiles.isNotEmpty) {
      print("dropPiles.isNotEmpty is ${dropPiles.isNotEmpty}");
      if (dropPiles.first.canAcceptCard(parent)) {
        print("canAcceptCard is ${dropPiles.first.canAcceptCard(parent)}");
        // Found a Pile.
        // Move card(s) gracefully into position on the receiving pile.
        parent.pile!.removeCard(parent, MoveMethod.drag);
        if (dropPiles.first is TableauPile) {
          // Get TableauPile to handle positions, priorities and moves of cards.
          (dropPiles.first as TableauPile)
              .dropCards(parent, parent.attachedCards);
          parent.attachedCards.clear();
        } else {
          // Drop a single card onto a FoundationPile.
          final dropPosition = (dropPiles.first as FoundationPile).position;
          parent.doMove(
            dropPosition,
            onComplete: () {
              dropPiles.first.acquireCard(parent);
            },
          );
        }
        return;
      }
    }
    print("invalid drop");
    // Invalid drop (middle of nowhere, invalid pile or invalid card for pile).
    parent.doMove(
      parent.whereCardStarted,
      onComplete: () {
        parent.pile!.returnCard(parent);
      },
    );
    if (parent.attachedCards.isNotEmpty) {
      parent.attachedCards.forEach((card) {
        final offset = card.position - parent.position;
        card.doMove(
          parent.whereCardStarted + offset,
          onComplete: () {
            parent.pile!.returnCard(card);
          },
        );
      });
      parent.attachedCards.clear();
    }
  }
}
