import 'package:flame/components.dart';
import 'package:flame/input.dart';
import 'package:flame/text.dart';
import 'package:flutter/material.dart';

class GameButton extends ButtonComponent {
  GameButton(
    String text, {
    String? subText,
    super.size,
    super.onReleased,
    super.position,
  }) : super(
          button: ButtonBackground(const Color(0xffece8a3)),
          buttonDown: ButtonBackground(Colors.red),
          children: [
            TextComponent(
              text: text,
              textRenderer: TextPaint(
                style: TextStyle(
                  fontSize: 0.5 * size!.y / 2,
                  fontFamily: 'PressStart2P',
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffdbaf58),
                ),
              ),
              position: subText != null
                  ? Vector2(size.x / 2.0, size.y / 3.0)
                  : Vector2(size.x / 2.0, size.y / 2.0),
              anchor: Anchor.center,
            ),
            if (subText != null)
              TextComponent(
                text: '$subText players',
                textRenderer: TextPaint(
                  style: TextStyle(
                    fontSize: 0.5 * size!.y / 3,
                    fontFamily: 'PressStart2P',
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffdbaf58),
                  ),
                ),
                position: Vector2(size.x / 2.0, size.y / 3.0 * 2.0),
                anchor: Anchor.center,
              )
            else
              Component(),
          ],
          anchor: Anchor.center,
        );
}

class ButtonBackground extends PositionComponent with HasAncestor<GameButton> {
  final _paint = Paint()..style = PaintingStyle.stroke;

  late double cornerRadius;

  ButtonBackground(Color color) {
    _paint.color = color;
  }

  @override
  void onMount() {
    super.onMount();
    size = ancestor.size;
    cornerRadius = 0.3 * size.y;
    _paint.strokeWidth = 0.05 * size.y;
  }

  late final _background = RRect.fromRectAndRadius(
    size.toRect(),
    Radius.circular(cornerRadius),
  );

  @override
  void render(Canvas canvas) {
    canvas.drawRRect(_background, _paint);
  }
}
