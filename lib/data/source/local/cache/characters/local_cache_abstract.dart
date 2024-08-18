import '../../../../dto/character_dto.dart';

abstract class CharactersCacheDataSourceAbstract {
  Future<bool> saveCharactersPage({
    required int page,
    required List<CharacterDto> list,
  });

  List<CharacterDto> loadCharactersPage({required int page});
}
