import 'package:flutter_test/flutter_test.dart';
import 'package:vg_tarabish_flame/tavern_repository/tavern_repository.dart';

void main() {
  group('TavernRepository', () {
    test('should fetch tavern games', () async {
      final tavernRepository = TavernRepository();
      final tavernGames = await tavernRepository.fetchTavernGames();
      expect(tavernGames, isNotNull);
      // expect(tavernGames, isNotEmpty);
    });

    test('should fetch tavern members', () async {
      final tavernRepository = TavernRepository();
      final tavernMembers = await tavernRepository.fetchTavernMembers();
      expect(tavernMembers, isNotNull);
      // expect(tavernMembers, isNotEmpty);
    });

    test('should listen to tavern games stream', () {
      final tavernRepository = TavernRepository();
      final tavernGamesStream = tavernRepository.tavernGamesStream;
      expect(tavernGamesStream, isNotNull);
    });

    test('should listen to tavern members stream', () {
      final tavernRepository = TavernRepository();
      final tavernMembersStream = tavernRepository.tavernMembersStream;
      expect(tavernMembersStream, isNotNull);
    });

    // test('should dispose stream controllers', () {
    //   final tavernRepository = TavernRepository();
    //   tavernRepository.dispose();
    //   expect(tavernRepository._tavernGamesController.isClosed, isTrue);
    //   expect(tavernRepository._tavernMembersController.isClosed, isTrue);
    // });

    test('should create new or existing game in progress', () {
      final tavernRepository = TavernRepository();
      final gameId = tavernRepository.newOrExistingGameInProgress();
      expect(gameId, isNotEmpty);
    });

    test('should generate demo game', () {
      final tavernRepository = TavernRepository();
      final demoGame = tavernRepository.generateDemo();
      expect(demoGame, isNotNull);
    });

    test('should generate demo solitaire game', () {
      final tavernRepository = TavernRepository();
      final demoGame = tavernRepository.generateDemoSolitaire();
      expect(demoGame, isNotNull);
    });

    test('should generate demo tarabish game', () {
      final tavernRepository = TavernRepository();
      final demoGame = tavernRepository.generateDemoTarabish();
      expect(demoGame, isNotNull);
    });

    test('should create consecutive integers', () {
      final tavernRepository = TavernRepository();
      final integers = tavernRepository.createConsecutiveIntegers(52);
      expect(integers, isNotEmpty);
    });

    test('should get next set of integers', () {
      final tavernRepository = TavernRepository();
      final integers = tavernRepository.getNextSet([1, 2, 3, 4, 5], 2, 0);
      expect(integers, isNotEmpty);
    });

    test('should invite bot', () {
      final tavernRepository = TavernRepository();
      tavernRepository.inviteBot(gameId: 'demo', playerPosition: 1);
    });

    test('should generate ai bot name', () {
      final tavernRepository = TavernRepository();
      final aiBotName = tavernRepository.generateAiBotName();
      expect(aiBotName, isNotEmpty);
    });
  });
}
