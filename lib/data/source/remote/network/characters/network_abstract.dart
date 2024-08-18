import '../../../../dto/character_dto.dart';

abstract class CharactersNetworkDataSourceAbstract {
  Future<List<CharacterDto>> loadCharacters({int page = 0});
}