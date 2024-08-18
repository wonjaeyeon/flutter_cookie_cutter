import '../../models/character.dart';

// Repository class for character
// ----------------------------------------------
// Generalized task for Repository Class: - android developers
// 1. Exposing data to the rest of the app
// 2. Centralizing changes to the data
// 3. Resolving conflicts between multiple data sources
// 4. Abstracting sources of data from the rest of the app
// 5. Containing Business Logic -> in function : example getLatestNews()
// ----------------------------------------------
abstract class CharactersRepository {
  Future<List<Character>> getCharacters({int page = 0});

  // show only the first 5 characters -> business logic example
  Future<List<Character>> getFirstFiveCharacters({int page = 0});
}
