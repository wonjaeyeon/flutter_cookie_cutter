import 'package:equatable/equatable.dart';
import '../../../data/models/character.dart';

enum CharactersUiStatus { initial, loading, success, failure }

class CharactersUiState extends Equatable {
  const CharactersUiState({
    this.status = CharactersUiStatus.initial,
    this.characters = const [],
    this.hasReachedEnd = false,
    this.currentPage = 1,
  });

  final CharactersUiStatus status;
  final List<Character> characters;
  final bool hasReachedEnd;
  final int currentPage;

  CharactersUiState copyWith({
    CharactersUiStatus? status,
    List<Character>? characters,
    bool? hasReachedEnd,
    int? currentPage,
  }) {
    return CharactersUiState(
      status: status ?? this.status,
      characters: characters ?? this.characters,
      hasReachedEnd: hasReachedEnd ?? this.hasReachedEnd,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object> get props => [
    status,
    characters,
    hasReachedEnd,
    currentPage,
  ];
}
