// import 'package:bloc/bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:vg_tarabish_flame/tavern_repository/tavern_repository.dart';

// part 'tavern_event.dart';
// part 'tavern_state.dart';
// part 'tavern_bloc.freezed.dart';

// class TavernBloc extends Bloc<TavernEvent, TavernState> {
//   TavernBloc(this.tavernRepository) : super(_Initial()) {
// on<TavernEvent>((event, emit) {
//   // TODO: implement event handler
// });
//   }

//   final TavernRepository tavernRepository;
// }
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vg_tarabish_flame/tavern_repository/tavern_repository.dart';

part 'tavern_event.dart';
part 'tavern_state.dart';
part 'tavern_bloc.freezed.dart';

class TavernBloc extends Bloc<TavernEvent, TavernState> {
  TavernBloc(this.tavernRepository) : super(const _Initial()) {
    _tavernGamesStreamSubscription =
        tavernRepository.tavernGamesStream.listen((tavernGames) {
      add(TavernEvent.tavernGamesUpdated(tavernGames: tavernGames));
    });

    _tavernMembersStreamSubscription =
        tavernRepository.tavernMembersStream.listen((tavernMembers) {
      add(TavernEvent.tavernMembersUpdated(tavernMembers: tavernMembers));
    });
    on<TavernEvent>((event, emit) {
      switch (event) {
        case _TavernGamesUpdated():
          _handleTavernGamesUpdated(event, emit);
        case _TavernMembersUpdated():
          _handleTavernMembersUpdated(event, emit);
        case _Started():
          print('TavenEvent _Started called');
        // TODO: Handle this case.
        case _ShowGameTypes():
          _handleShowGameTypes(event, emit);
        // case _ChooseGameType():
        //   _handleChooseGameType(event, emit);
        // TODO: Handle this case.
      }
    });
  }

  final TavernRepository tavernRepository;
  late final StreamSubscription<List<TavernGame>>
      _tavernGamesStreamSubscription;
  late final StreamSubscription<List<TavernMember>>
      _tavernMembersStreamSubscription;

  @override
  Future<void> close() {
    _tavernGamesStreamSubscription.cancel();
    _tavernMembersStreamSubscription.cancel();
    return super.close();
  }

  void _handleTavernGamesUpdated(
    _TavernGamesUpdated event,
    Emitter<TavernState> emit,
  ) {
    print('tavern games are ${event.tavernGames}');
    switch (state) {
      case _Initial():
        emit(TavernState.tavernGamesOrMembersUpdated(
            tavernGames: event.tavernGames));
      case final _TavernGamesOrMembersUpdated currentState:
        emit(currentState.copyWith(tavernGames: event.tavernGames));
    }
  }

  void _handleTavernMembersUpdated(
    _TavernMembersUpdated event,
    Emitter<TavernState> emit,
  ) {
    print('tavern members are ${event.tavernMembers}');
    switch (state) {
      case _Initial():
        emit(TavernState.tavernGamesOrMembersUpdated(
            tavernMembers: event.tavernMembers));
      case final _TavernGamesOrMembersUpdated currentState:
        emit(currentState.copyWith(tavernMembers: event.tavernMembers));
    }
  }

  void _handleShowGameTypes(_ShowGameTypes event, Emitter<TavernState> emit) {
    print('TavenEvent _handleShowGameTypes called');
  }

  // void _handleChooseGameType(_ChooseGameType event, Emitter<TavernState> emit) {
  //   // ignore: lines_longer_than_80_chars
  //   print(
  //     'TavenEvent _handleChooseGameType called with chosen game ${event.gameType}',
  //   );
  // }
}
