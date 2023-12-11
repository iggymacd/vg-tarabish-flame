part of 'game_type_cubit.dart';

class GameTypeState extends Equatable {
  const GameTypeState(this.gameType);

  const GameTypeState.initial() : gameType = 'Solitaire';

  final String gameType;

  bool get isSolitaire => gameType == 'Solitaire';

  bool get isTarabish => gameType == 'Tarabish';

  // bool get isAndroidSelected => gameType == const AndroidTheme();

  // bool get isDinoSelected => gameType == const DinoTheme();

  @override
  List<Object> get props => [gameType];
}
