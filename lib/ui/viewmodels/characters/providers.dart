import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repository/characters/character_repository_abstract.dart';
import '../../../data/repository/characters/character_repository_impl.dart';
import '../../../data/source/local/cache/characters/local_cache_abstract.dart';
import '../../../data/source/local/cache/characters/local_cache_impl.dart';
import '../../../data/source/remote/network/characters/network_abstract.dart';
import '../../../data/source/remote/network/characters/network_impl.dart';
import '../../../domain/usecases/get_all_characters_usecase.dart';
import '../../../main.dart';


// -----------------------------------------------------------------------------
// Presentation
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// Domain
// -----------------------------------------------------------------------------
final characterRepositoryProvider = Provider<CharactersRepository>(
  (ref) => CharactersRepositoryImpl(
    charactersNetworkDataSource: ref.read(apiProvider),
    charactersCacheDataSource: ref.read(localStorageProvider),
  ),
);

final getAllCharactersProvider = Provider(
  (ref) => GetAllCharactersUseCase(
    charactersRepository: ref.read(characterRepositoryProvider),
  ),
);

// -----------------------------------------------------------------------------
// Data
// -----------------------------------------------------------------------------
final apiProvider = Provider<CharactersNetworkDataSourceAbstract>((ref) => CharactersNetworkDataSourceImpl());

final localStorageProvider = Provider<CharactersCacheDataSourceAbstract>(
  (ref) => CharactersCacheDataSourceImpl(sharedPreferences: sharedPref),
);
