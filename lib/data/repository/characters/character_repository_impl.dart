import '../../source/local/cache/characters/local_cache_abstract.dart';
import '../../models/character.dart';
import '../../source/remote/network/characters/network_abstract.dart';
import 'character_repository_abstract.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersNetworkDataSourceAbstract _charactersNetworkDataSource;
  final CharactersCacheDataSourceAbstract _charactersCacheDataSource;

  CharactersRepositoryImpl({
    required CharactersNetworkDataSourceAbstract charactersNetworkDataSource,
    required CharactersCacheDataSourceAbstract charactersCacheDataSource,
  })  : _charactersNetworkDataSource = charactersNetworkDataSource,
        _charactersCacheDataSource = charactersCacheDataSource;

  @override
  Future<List<Character>> getCharacters({int page = 0}) async {
    final cachedList = _charactersCacheDataSource.loadCharactersPage(page: page);
    if (cachedList.isNotEmpty) {
      return cachedList;
    }

    final fetchedList = await _charactersNetworkDataSource.loadCharacters(page: page);
    await _charactersCacheDataSource.saveCharactersPage(page: page, list: fetchedList);
    return fetchedList;
  }

  @override
  Future<List<Character>> getFirstFiveCharacters({int page = 0}) async {
    final cachedList = _charactersCacheDataSource.loadCharactersPage(page: page);
    if (cachedList.isNotEmpty) {
      return cachedList;
    }

    final fetchedList = await _charactersNetworkDataSource.loadCharacters(page: page);
    await _charactersCacheDataSource.saveCharactersPage(page: page, list: fetchedList);
    return fetchedList;
  }
}
