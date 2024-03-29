import 'dart:async';
import 'dart:math';
// import 'dart:math';

import 'package:random_name_generator/random_name_generator.dart';
import 'package:rxdart/subjects.dart';
import 'package:uuid/uuid.dart';
import 'package:vg_tarabish_flame/bloc/game_in_progress_bloc.dart';
import 'package:vg_tarabish_flame/game/card_game_controller_bloc.dart';
import 'package:vg_tarabish_flame/game/data/person_proxy_datasource.dart';
import 'package:vg_tarabish_flame/game/data/remote_person_proxy_datasource.dart';
import 'package:vg_tarabish_flame/game/data/repositories/person_proxy_repository.dart';
import 'package:vg_tarabish_flame/game/entity/game/card_game.dart';
import 'package:vg_tarabish_flame/game/entity/game/view/card_game_action.dart';
import 'package:vg_tarabish_flame/game/suit.dart';
// import 'package:vg_tarabish_flame/game/tavern_game.dart';

/// {@template tavern_repository}
/// Repository to manage tavern.
/// {@endtemplate}
class TavernRepository {
  /// {@macro tavern_repository}
  TavernRepository() {
    // Initialize the stream controllers in the constructor
    _tavernGamesController = StreamController<List<TavernGame>>.broadcast();
    _tavernMembersController = StreamController<List<TavernMember>>.broadcast();
    _gameInProgressBlocMap = <String, GameInProgressBloc>{};

    // Fetch initial data and add it to the streams
    fetchTavernGames().then((tavernGames) {
      _tavernGamesController.add(tavernGames);
    });

    fetchTavernMembers().then((tavernMembers) {
      _tavernMembersController.add(tavernMembers);
    });
  }
  PersonProxyRepository personProxyRepository =
      PersonProxyRepository(RemotePersonProxyDataSource());

  /// {@macro tavern_repository}
  // TavernRepository());
  late StreamController<List<TavernGame>> _tavernGamesController;
  late StreamController<List<TavernMember>> _tavernMembersController;
  late Map<String, GameInProgressBloc> _gameInProgressBlocMap;

  /// Stream of [TavernGame]s.
  Stream<List<TavernGame>> get tavernGamesStream =>
      _tavernGamesController.stream;

  /// Stream of [TavernMember]s.
  Stream<List<TavernMember>> get tavernMembersStream =>
      _tavernMembersController.stream;

  // /// Stream of [CardGame] state changes
  // Stream<CardGame> cardGameStream(String id) =>
  //     newOrExistingGameInProgress(id: id);

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

  /// Stream of [CardGameView] state changes - if gameId is not found in
  /// _currentGamesInProgressMap, then throw an error
  Stream<GameInProgressState> listenCardGame({required String gameId}) {
    if (_gameInProgressBlocMap.containsKey(gameId)) {
      final gameController = _gameInProgressBlocMap[gameId]!;
      return gameController.stream;
    } else {
      throw Exception('Game not found');
    }
  }

  /// Stream of [CardGameView])
  //   return _cardGameControllerBlocMap[gameId]!
  //       .map((event) => event.state.toView());
  // } else {
  //   throw Exception('Game not found');
  // }
// }

// Stream<CardGame> newOrExistingGameInProgress({
  String newOrExistingGameInProgress({
    String id = '',
    bool demo = false,
    String gameType = 'solitaire',
  }) {
    // print("demo mode is $demo and game type is $gameType");
    // if (demo) {
    //   _cardGameControllerBlocMap.putIfAbsent(
    //     'demo',
    //     () => CardGameControllerBloc(this),
    //   );
    //   return 'demo';
    //   // return BehaviorSubject<CardGame>.seeded(
    //   //     const CardGame.tarabish(gameId: 'demo', actions: <CardGameAction>[
    //   //   Shuffle(),
    //   //   Deal(cardIds: [1, 2, 3], playerId: 1),
    //   //   Deal(cardIds: [4, 5, 6], playerId: 2),
    //   //   Deal(cardIds: [7, 8, 9], playerId: 3),
    //   //   Deal(cardIds: [28, 11, 22], playerId: 0, flip: defaultFlip),
    //   // ]))
    //   //   ..stream;
    // }
    // late String uniqueId;
    // if (id == '') {
    //   uniqueId = const Uuid().v4();
    //   // print('new game id is $uniqueId');
    // } else {
    //   uniqueId = id;
    // }
    // _cardGameControllerBlocMap.putIfAbsent(
    //   uniqueId,
    //   () => CardGameControllerBloc(this)
    //       // CardGameView.tarabish(
    //       //   gameId: uniqueId,
    //       //   actions: <CardGameAction>[
    //       //     // Shuffle(),
    //       //     // const Deal(cardIds: [1, 2, 3], playerId: 1),
    //       //     // const Deal(cardIds: [4, 5, 6], playerId: 2),
    //       //     // const Deal(cardIds: [7, 8, 9], playerId: 3),
    //       //     // const Deal(cardIds: [28, 11, 22], playerId: 0, flip: defaultFlip),
    //       //   ],
    //       // ),
    //       ,
    // );
    // return uniqueId;
    final uniqueId = const Uuid().v4();
    // final gameInProgressBloc =
    //     GameInProgressBloc(tavernRepository: this, currentGameId: uniqueId);
    _gameInProgressBlocMap[uniqueId] =
        GameInProgressBloc(tavernRepository: this, currentGameId: uniqueId);
    return uniqueId;
  }

  BehaviorSubject<CardGameView> generateDemo({String gameType = 'solitaire'}) {
    /// use a switch to determine the type of game
    switch (gameType) {
      case 'solitaire':
        return generateDemoSolitaire();
      case 'tarabish':
        return generateDemoTarabish();
      default:
        return generateDemoSolitaire();
    }
  }

  BehaviorSubject<CardGameView> generateDemoTarabish() {
    // tarabish game has 36 cards, so 9 cards per player
    // create list of 36 integers and shuffle with a constant seed to ensure
    // the same sequence is generated each time
    final integers = createConsecutiveIntegers(36);
    print('    original integers: $integers');
    integers.shuffle(Random(1));
    print('    shuffled integers: $integers');
    final reversed = integers.reversed.toList();
    const defaultFlip = true;
    return BehaviorSubject<CardGameView>.seeded(
      CardGameView.tarabish(
        gameId: 'demo',
        actions: <CardGameAction>[
          const SetDealer(playerId: 0),
          const Shuffle(),
          Deal(
              cardIds: getNextSet(reversed, 3, 0),
              playerId: 1,
              flip: defaultFlip),
          Deal(
              cardIds: getNextSet(reversed, 3, 1),
              playerId: 2,
              flip: defaultFlip),
          Deal(
              cardIds: getNextSet(reversed, 3, 2),
              playerId: 3,
              flip: defaultFlip),
          Deal(cardIds: getNextSet(reversed, 3, 3), playerId: 0, flip: true),
          Deal(
              cardIds: getNextSet(reversed, 3, 4),
              playerId: 1,
              flip: defaultFlip),
          Deal(
              cardIds: getNextSet(reversed, 3, 5),
              playerId: 2,
              flip: defaultFlip),
          Deal(
              cardIds: getNextSet(reversed, 3, 6),
              playerId: 3,
              flip: defaultFlip),
          Deal(cardIds: getNextSet(reversed, 3, 7), playerId: 0, flip: true),
          const BidHand(playerId: 1, bid: Suit.DIAMONDS),
          Deal(
              cardIds: getNextSet(reversed, 3, 8),
              playerId: 1,
              flip: defaultFlip),
          Deal(
              cardIds: getNextSet(reversed, 3, 9),
              playerId: 2,
              flip: defaultFlip),
          Deal(
              cardIds: getNextSet(reversed, 3, 10),
              playerId: 3,
              flip: defaultFlip),
          Deal(cardIds: getNextSet(reversed, 3, 11), playerId: 0, flip: true),
          const PlayCard(cardId: Suit.JACK_OF_DIAMONDS, playerId: 1),
          const PlayCard(cardId: Suit.SIX_OF_DIAMONDS, playerId: 2),
          const PlayCard(cardId: Suit.QUEEN_OF_DIAMONDS, playerId: 3),
          const PlayCard(cardId: Suit.EIGHT_OF_DIAMONDS, playerId: 0),
          const WinTrick(cardIds: [
            Suit.JACK_OF_DIAMONDS,
            Suit.SIX_OF_DIAMONDS,
            Suit.QUEEN_OF_DIAMONDS,
            Suit.EIGHT_OF_DIAMONDS
          ], playerId: 1),
          const PlayCard(cardId: Suit.KING_OF_DIAMONDS, playerId: 1),
          const PlayCard(cardId: Suit.NINE_OF_DIAMONDS, playerId: 2),
          const PlayCard(cardId: Suit.SEVEN_OF_DIAMONDS, playerId: 3),
          const PlayCard(cardId: Suit.ACE_OF_DIAMONDS, playerId: 0),
          const WinTrick(cardIds: [
            Suit.KING_OF_DIAMONDS,
            Suit.NINE_OF_DIAMONDS,
            Suit.SEVEN_OF_DIAMONDS,
            Suit.ACE_OF_DIAMONDS
          ], playerId: 2),
          const PlayCard(cardId: Suit.SEVEN_OF_HEARTS, playerId: 2),
          // Deal(cardIds: [1, 2, ], playerId: playerId)
        ],
      ),
    );
  }

  BehaviorSubject<CardGameView> generateDemoSolitaire() {
    final defaultFlip = true;
    return BehaviorSubject<CardGameView>.seeded(
      CardGameView.tarabish(
        gameId: 'demo',
        actions: <CardGameAction>[
          const Shuffle(),
          const Deal(cardIds: [1, 2, 3], playerId: 1),
          const Deal(cardIds: [4, 5, 6], playerId: 2),
          const Deal(cardIds: [7, 8, 9], playerId: 3),
          const BidHand(playerId: 0, bid: Suit.SPADES),
          // const Discard(playerId: 0, cardIds: [1, 2, 3]),
          Deal(cardIds: [10, 11, 12], playerId: 0, flip: defaultFlip),
          const Deal(cardIds: [13, 14, 15], playerId: 1),
          const Deal(cardIds: [16, 17, 18], playerId: 2),
          const Deal(cardIds: [19, 20, 21], playerId: 3),
          Deal(cardIds: [22, 23, 24], playerId: 0, flip: defaultFlip),
          const Deal(cardIds: [25, 26, 27], playerId: 1),
          const Deal(cardIds: [28, 29, 30], playerId: 2),
          const Deal(cardIds: [31, 32, 33], playerId: 3),
          Deal(cardIds: [34, 35, 36], playerId: 0, flip: defaultFlip),
        ],
      ),
    );
  }

  List<int> createConsecutiveIntegers(
    int count, {
    int? seed,
    bool? shuffle = false,
  }) {
    List<int> integers = [];
    for (int i = 0; i < 52; i++) {
      if ([1, 2, 3, 4, 14, 15, 16, 17, 27, 28, 29, 30, 40, 41, 42, 43]
          .contains(i)) {
        continue;
      }
      integers.add(i);
    }
    if (shuffle!) {
      if (seed != null) {
        final random = Random(seed);
        // random.shuffle(integers);
        integers.shuffle(random);
      } else {
        final random = Random();
        integers.shuffle(random);
      }
    }
    return integers;
  }

// getNext(Iterable<int> reversed, int i, int j) {
  List<int> getNextSet(List<int> inputList, int count, int multiple) {
    if (multiple < 0) {
      throw ArgumentError("Multiple should be a non-negative integer.");
    }

    final startIndex = multiple * count;
    final endIndex = startIndex + count;

    if (startIndex >= endIndex) {
      throw ArgumentError("Invalid multiple value or list length.");
    }

    // List<int> reversedSublist =
    //     inputList.sublist(startIndex, endIndex).reversed.toList();

    return inputList.sublist(startIndex, endIndex);
// }
  }

  /// Bot could be running locally or remotely
  /// Using PersonProxyRepository to manage the bot
  FutureOr<void> inviteBot({
    required String gameId,
    required int playerPosition,
  }) async {
    // TODONE : implement inviteBot
    print(
        'inviting bot to play game for game id $gameId at position $playerPosition');
    final personProxy =
        personProxyRepository.getPersonProxy(gameId, playerPosition);
    // wire up outbound game states and inbound player action events
    final gameInProgressBloc = _gameInProgressBlocMap.containsKey(gameId)
        ? _gameInProgressBlocMap[gameId]
        : null;
    if (gameInProgressBloc != null) {
      // personProxy.wireUp(gameInProgressBloc);
      // personProxy.wireUp(gameInProgressBloc.value);
      final currentGameView = gameInProgressBloc.state;
      // gameInProgressBloc.add(currentGameView.copyWith(
      //   playerPosition: playerPosition,
      // ));
    } else {
      throw Exception('Game not found. ');
    }
    // personProxy.inviteBot(playerPosition: playerPosition);

    // if (_cardGameControllerBlocMap.containsKey(gameId)) {
    //   // return
    //   var currentGameView = _cardGameControllerBlocMap[gameId]!.value;
    //   _cardGameControllerBlocMap[gameId]!.sink.add(currentGameView.copyWith(
    //         // gameId: gameId,
    //         playerPosition: playerPosition,
    //         // actions: currentGameView.actions,
    //       ));
    // } else {
    //   throw Exception('Game not found');
    // }
    // throw UnimplementedError();
  }

  String generateAiBotName() {
    final randomNames = RandomNames(Zone.us);
    return randomNames.fullName();
    // throw UnimplementedError();
  }

  /// method to create an ai bot and have it participate in card game
  /// generate the playerName using generateAiBotName()
  /// playerPosition should be 1 or 2 or 3
  /// gameId should be the game id to join
  /// return the playerId of the ai bot created
  /// throw an exception if the gameId is not found
  /// throw an exception if the playerPosition is invalid.
  /// throw an exception if the playerName is invalid.
  ///
  void createAiBot(
      {required String gameId,
      required int playerPosition,
      required String playerName}) {
    if (!(_gameInProgressBlocMap.containsKey(gameId))) {
      throw Exception('Game not found');
    }
    if (playerPosition < 1 || playerPosition > 4) {
      throw Exception('Invalid player position');
    }
    if (playerName.isEmpty) {
      throw Exception('Invalid player name');
    }
    // var currentGameView = _currentGameView;
    // _currentGameView = currentGameView.copyWith(
    //     playerPosition: playerPosition);
    // _cardGameControllerBlocMap[gameId]!.sink.add(currentGameView);

    // _cardGameControllerBlocMap[gameId]!.sink.add(currentGameView.copyWith(
    //       // gameId: gameId,
    //       playerPosition: playerPosition,
    //       // actions: currentGameView.actions,
    //     ));
  }
}

class TavernMember {}

class TavernGame {}
