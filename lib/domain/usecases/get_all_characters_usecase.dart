import '../../data/models/character.dart';
import '../../data/repository/characters/character_repository_abstract.dart';

class GetAllCharactersUseCase {
  GetAllCharactersUseCase({
    required CharactersRepository charactersRepository,
  }) : _charactersRepository = charactersRepository;

  final CharactersRepository _charactersRepository;

  Future<List<Character>> call({int page = 0}) async {
    final list = await _charactersRepository.getCharacters(page: page);
    return list;
  }
}
