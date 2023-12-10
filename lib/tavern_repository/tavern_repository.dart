import 'dart:async';

/// {@template tavern_repository}
/// Repository to manage tavern.
/// {@endtemplate}
class TavernRepository {
  /// {@macro tavern_repository}
  TavernRepository() {
    // Initialize the stream controllers in the constructor
    _tavernGamesController = StreamController<List<TavernGame>>.broadcast();
    _tavernMembersController = StreamController<List<TavernMember>>.broadcast();

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

  /// Stream of [TavernGame]s.
  Stream<List<TavernGame>> get tavernGamesStream =>
      _tavernGamesController.stream;

  /// Stream of [TavernMember]s.
  Stream<List<TavernMember>> get tavernMembersStream =>
      _tavernMembersController.stream;

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
}

class TavernMember {}

class TavernGame {}
