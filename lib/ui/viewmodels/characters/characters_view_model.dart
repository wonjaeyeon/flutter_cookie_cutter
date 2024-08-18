import 'providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/usecases/get_all_characters_usecase.dart';
import 'characters_ui_state.dart';

final characterPageStateProvider =
StateNotifierProvider<CharacterStateNotifier, CharactersUiState>(
      (ref) => CharacterStateNotifier(
    getAllCharacters: ref.read(getAllCharactersProvider),
  ),
);

class CharacterStateNotifier extends StateNotifier<CharactersUiState> {
  CharacterStateNotifier({
    required GetAllCharactersUseCase getAllCharacters,
  })  : _getAllCharacters = getAllCharacters,
        super(const CharactersUiState());

  final GetAllCharactersUseCase _getAllCharacters;

  Future<void> fetchNextPage() async {
    if (state.hasReachedEnd) return;

    state = state.copyWith(status: CharactersUiStatus.loading);

    final list = await _getAllCharacters(page: state.currentPage);
    state = state.copyWith(
      status: CharactersUiStatus.loading,
      currentPage: state.currentPage + 1,
      characters: List.of(state.characters)..addAll(list),
      hasReachedEnd: list.isEmpty,
    );
  }
}
