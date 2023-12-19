import 'dart:async';
import 'dart:math';
// import 'dart:math';

import 'package:rxdart/subjects.dart';
import 'package:uuid/uuid.dart';
import 'package:vg_tarabish_flame/game/entity/game/card_game.dart';
import 'package:vg_tarabish_flame/game/entity/game/view/card_game_action.dart';

/// {@template tavern_repository}
/// Repository to manage tavern.
/// {@endtemplate}
class TavernRepository {
  /// {@macro tavern_repository}
  TavernRepository() {
    // Initialize the stream controllers in the constructor
    _tavernGamesController = StreamController<List<TavernGame>>.broadcast();
    _tavernMembersController = StreamController<List<TavernMember>>.broadcast();
    _currentGamesInProgressMap = <String, BehaviorSubject<CardGame>>{};

    // Fetch initial data and add it to the streams
    fetchTavernGames().then((tavernGames) {
      _tavernGamesController.add(tavernGames);
    });

    fetchTavernMembers().then((tavernMembers) {
      _tavernMembersController.add(tavernMembers);
    });
  }

  late StreamController<List<TavernGame>> _tavernGamesController;
  late StreamController<List<TavernMember>> _tavernMembersController;
  late Map<String, BehaviorSubject<CardGame>> _currentGamesInProgressMap;

  /// Stream of [TavernGame]s.
  Stream<List<TavernGame>> get tavernGamesStream =>
      _tavernGamesController.stream;

  /// Stream of [TavernMember]s.
  Stream<List<TavernMember>> get tavernMembersStream =>
      _tavernMembersController.stream;

  /// Stream of [CardGame] state changes
  Stream<CardGame> cardGameStream(String id) =>
      newOrExistingGameInProgress(id: id);

  /// Acquires list of [TavernGame]s.
  Future<List<TavernGame>> fetchTavernGames() async {
    // Replace this with your actual data fetching logic
    List<TavernGame> tavernGames = [];

    // Add the fetched data to the stream
    _tavernGamesController.add(tavernGames);

    return tavernGames;
  }

  /// Acquires list of [TavernMember]s.
  Future<List<TavernMember>> fetchTavernMembers() async {
    // Replace this with your actual data fetching logic
    List<TavernMember> tavernMembers = [];

    // Add the fetched data to the stream
    _tavernMembersController.add(tavernMembers);

    return tavernMembers;
  }

  /// Dispose the stream controllers when they are no longer needed
  void dispose() {
    _tavernGamesController.close();
    _tavernMembersController.close();
  }

  Stream<CardGame> newOrExistingGameInProgress({
    String id = '',
    bool demo = false,
  }) {
    print("demo mode is $demo");
    if (demo) {
      return BehaviorSubject<CardGame>.seeded(CardGame.tarabish(
          gameId: '88888888-4444-4444-4444-121212121212',
          actions: <CardGameAction>[
            Shuffle(),
            const Deal(cardIds: [1, 2, 3], playerId: 1),
            const Deal(cardIds: [4, 5, 6], playerId: 2),
            const Deal(cardIds: [7, 8, 9], playerId: 3),
            const Deal(cardIds: [28, 11, 22], playerId: 0, flip: true),
          ]))
        ..stream;
    }
    late String uniqueId;
    if (id == '') {
      uniqueId = const Uuid().v4();
      print('new game id is $uniqueId');
    } else {
      uniqueId = id;
    }
    return _currentGamesInProgressMap.putIfAbsent(
      uniqueId,
      () => BehaviorSubject<CardGame>.seeded(
        CardGame.tarabish(gameId: uniqueId, actions: <CardGameAction>[
          // Shuffle(),
          // const Deal(cardIds: [1, 2, 3], playerId: 1),
          // const Deal(cardIds: [4, 5, 6], playerId: 2),
          // const Deal(cardIds: [7, 8, 9], playerId: 3),
          // const Deal(cardIds: [28, 11, 22], playerId: 0, flip: true),
        ]),
      )..stream,
    );
  }

  List<int> createConsecutiveIntegers(int count, [int? seed]) {
    List<int> integers = [];
    for (int i = 0; i < count; i++) {
      integers.add(i);
    }
    if (seed != null) {
      Random random = Random(seed);
      // random.shuffle(integers);
      integers.shuffle(random);
    } else {
      Random random = Random();
      integers.shuffle(random);
    }
    return integers;
  }
}

class TavernMember {}

class TavernGame {}
