import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// import 'package:pinball_theme/pinball_theme.dart';

part 'game_type_state.dart';

class GameTypeCubit extends Cubit<GameTypeState> {
  GameTypeCubit() : super(const GameTypeState.initial());

  void gameTypeSelected(String gameType) {
    emit(GameTypeState(gameType));
  }
}
