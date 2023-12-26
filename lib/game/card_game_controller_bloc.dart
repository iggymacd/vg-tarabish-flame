import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:vg_tarabish_flame/game/card_game_state.dart';
import 'package:vg_tarabish_flame/game/entity/game/view/card_game_action.dart';
import 'package:vg_tarabish_flame/tavern_repository/tavern_repository.dart';

// import '../models/card_game_state.dart';
// import '../repositories/card_game_repository.dart';

class CardGameControllerBloc extends Bloc<CardGameAction, CardGameState> {
  CardGameControllerBloc(this._tavernRepository)
      : super(const CardGameState.initial()) {
    on<DrawCard>(_drawCard);
    on<PlayCard>(_playCard);
    on<EndTurn>(_endTurn);
    on<StartGame>(_startGame);
    on<ShowHand>(_showHand);
    on<ShowTable>(_showTable);
    on<ShowScoreboard>(_showScoreboard);
    on<Shuffle>(_shuffle);
    on<Deal>(_deal);
  }
  final TavernRepository _tavernRepository;

  Stream<CardGameState> _startGame(event, emit) async* {
    try {
      // yield CardGameState.loading();
      // // final state = await _cardGameRepository.startGame();
      // yield state;
      // emit(CardGameState.loading()); // CardGameState.loading();
      // final state = await _cardGameRepository.drawCard();
      emit(state); // yield state;)
    } catch (e) {
      // yield CardGameState.error(e.toString());
      emit(CardGameState.error(e.toString()));
    }
  }

  Stream<CardGameState> _drawCard(
    DrawCard event,
    Emitter<CardGameState> emit,
  ) async* {
    try {
      emit(CardGameState.loading()); // CardGameState.loading();
      // final state = await _cardGameRepository.drawCard();
      emit(state); // yield state;)
    } catch (e) {
      // yield CardGameState.error(e.toString());
      emit(CardGameState.error(e.toString()));
    }
  }

  Stream<CardGameState> _playCard(
      PlayCard event, Emitter<CardGameState> emit) async* {
    try {
      // yield CardGameState.loading();
      // // final state = await _cardGameRepository.playCard(cardId);
      // yield state;
      // emit(CardGameState.loading()); // CardGameState.loading();
      // final state = await _cardGameRepository.drawCard();
      emit(state); // yield state;)
    } catch (e) {
      // yield CardGameState.error(e.toString());
      emit(CardGameState.error(e.toString()));
    }
  }

  Stream<CardGameState> _endTurn(event, emit) async* {
    try {
      // yield CardGameState.loading();
      // // final state = await _cardGameRepository.endTurn();
      // yield state;
      // emit(CardGameState.loading()); // CardGameState.loading();
      // final state = await _cardGameRepository.drawCard();
      emit(state); // yield state;)
    } catch (e) {
      // yield CardGameState.error(e.toString());
      emit(CardGameState.error(e.toString()));
    }
  }

  Stream<CardGameState> _showHand(
    ShowHand event,
    Emitter<CardGameState> emit,
  ) async* {
    try {
      // yield CardGameState.loading();
      // // final state = await _cardGameRepository.endTurn();
      // yield state;
      // emit(CardGameState.loading()); // CardGameState.loading();
      // final state = await _cardGameRepository.drawCard();
      emit(state); // yield state;)
    } catch (e) {
      // yield CardGameState.error(e.toString());
      emit(CardGameState.error(e.toString()));
    }
  }

  Stream<CardGameState> _showTable(
    ShowTable event,
    Emitter<CardGameState> emit,
  ) async* {
    try {
      // yield CardGameState.loading();
      // // final state = await _cardGameRepository.endTurn();
      // yield state;
      // emit(CardGameState.loading()); // CardGameState.loading();
      // final state = await _cardGameRepository.drawCard();
      emit(state); // yield state;)
    } catch (e) {
      // yield CardGameState.error(e.toString());
      emit(CardGameState.error(e.toString()));
    }
  }

  Stream<CardGameState> _showScoreboard(
    ShowScoreboard event,
    Emitter<CardGameState> emit,
  ) async* {
    try {
      // yield CardGameState.loading();
      // // final state = await _cardGameRepository.endTurn();
      // yield state;
      // emit(CardGameState.loading()); // CardGameState.loading();
      // final state = await _cardGameRepository.drawCard();
      emit(state); // yield state;)
    } catch (e) {
      // yield CardGameState.error(e.toString());
      emit(CardGameState.error(e.toString()));
    }
  }

  Stream<CardGameState> _shuffle(
    Shuffle event,
    Emitter<CardGameState> emit,
  ) async* {
    try {
      // yield CardGameState.loading();
      // // final state = await _cardGameRepository.endTurn();
      // yield state;
      // emit(CardGameState.loading()); // CardGameState.loading();
      // final state = await _cardGameRepository.drawCard();
      emit(state); // yield state;)
    } catch (e) {
      // yield CardGameState.error(e.toString());
      emit(CardGameState.error(e.toString()));
    }
  }

  Stream<CardGameState> _deal(
    Deal event,
    Emitter<CardGameState> emit,
  ) async* {
    try {
      // yield CardGameState.loading();
      // // final state = await _cardGameRepository.endTurn();
      // yield state;
      // emit(CardGameState.loading()); // CardGameState.loading();
      // final state = await _cardGameRepository.drawCard();
      emit(state); // yield state;)
    } catch (e) {
      // yield CardGameState.error(e.toString());
      emit(CardGameState.error(e.toString()));
    }
  }
}
