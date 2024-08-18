import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../dto/character_dto.dart';
import 'local_cache_abstract.dart';

const cachedCharacterListKey = 'CACHED_CHARACTER_LIST_PAGE';


class CharactersCacheDataSourceImpl implements CharactersCacheDataSourceAbstract {
  final SharedPreferences _sharedPref;

  CharactersCacheDataSourceImpl({
    required SharedPreferences sharedPreferences,
  }) : _sharedPref = sharedPreferences;

  @override
  List<CharacterDto> loadCharactersPage({required int page}) {
    final key = getKeyToPage(page);
    final jsonList = _sharedPref.getStringList(key);

    return jsonList != null
        ? jsonList.map((e) => CharacterDto.fromRawJson(e)).toList()
        : [];
  }

  @override
  Future<bool> saveCharactersPage({
    required int page,
    required List<CharacterDto> list,
  }) {
    final jsonList = list.map((e) => e.toRawJson()).toList();
    final key = getKeyToPage(page);
    return _sharedPref.setStringList(key, jsonList);
  }

  @visibleForTesting
  static String getKeyToPage(int page) {
    return '${cachedCharacterListKey}_$page';
  }
}
