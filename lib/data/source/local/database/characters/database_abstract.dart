import '../../../../dto/character_dto.dart';

abstract class CharactersDBDataSourceAbstract {
  // method1 - open DB
  Future open(String path) async {
  }

  // method2 - insert Character to DB
  Future<CharacterDto> insert(CharacterDto character) async {
    return character;
  }

  // method3 - get Character from DB
  Future<CharacterDto> getCharacter(int id) async {
    return CharacterDto();
  }

  // method4 - get all Characters from DB
  Future<List<CharacterDto>> getAllCharacters() async {
    return [];
  }

  // method5 - update Character in DB
  Future<int> update(CharacterDto character) async {
    return 0;
  }

  // method6 - delete Character from DB
  Future<int> delete(int id) async {
    return 0;
  }

  // method7 - close DB
  Future close() async {
  }
}
