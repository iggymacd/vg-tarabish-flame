// import 'package:flame/game.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vg_tarabish_flame/app/app.dart';
// import 'package:vg_tarabish_flame/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders AppPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(App), findsOneWidget);
    });
  });
}
