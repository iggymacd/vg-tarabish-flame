import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vg_tarabish_flame/bloc/tavern_bloc.dart';
import 'package:vg_tarabish_flame/game/tavern_game.dart';
import 'package:vg_tarabish_flame/l10n/l10n.dart';
import 'package:vg_tarabish_flame/start_game/bloc/start_game_bloc.dart';
import 'package:vg_tarabish_flame/start_game/widgets/start_game_listener.dart';
import 'package:vg_tarabish_flame/tavern_repository/tavern_repository.dart';

class App extends StatelessWidget {
  const App({super.key});

// @override

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TavernBloc(TavernRepository())),
        BlocProvider(create: (_) => StartGameBloc()),
        // BlocProvider(
        //   create: (_) => PreloadCubit(
        //     Images(prefix: ''),
        //     AudioCache(prefix: ''),
        //   )..loadSequentially(),
        // ),
      ],
      child: const AppView(),
    );
    //   final game = TavernGames();
    //   return MaterialApp(
    //       theme: ThemeData(
    //         appBarTheme: AppBarTheme(
    //           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    //         ),
    //         useMaterial3: true,
    //       ),
    //       localizationsDelegates: AppLocalizations.localizationsDelegates,
    //       supportedLocales: AppLocalizations.supportedLocales,
    //       home: GameWidget(game: game)
    //       // home: const CounterPage(),
    //       );
    // }
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    final game = TavernGames(
        tavernBloc: context.read<TavernBloc>(),
        startGameBloc: context.read<StartGameBloc>());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF2A48DF),
        appBarTheme: const AppBarTheme(color: Color(0xFF2A48DF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF2A48DF),
        ),
        scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xFF2A48DF)),
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // home: const LoadingPage(),
      home: StartGameListener(child: GameWidget(game: game)),
    );
  }
}
