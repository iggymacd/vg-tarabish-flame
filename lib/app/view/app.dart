import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:vg_tarabish_flame/counter/counter.dart';
import 'package:vg_tarabish_flame/l10n/l10n.dart';

import '../../game/tarabish_game.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final game = TarabishGame();
    return MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: GameWidget(game: game)
        // home: const CounterPage(),
        );
  }
}
