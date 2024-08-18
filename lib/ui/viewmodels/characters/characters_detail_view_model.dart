import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'characters_detail_ui_state.dart';

final detailsPageProvider =
NotifierProvider<DetailsPageNotifier, CharactersDetailsUiState>(
      () => DetailsPageNotifier(),
);

class DetailsPageNotifier extends Notifier<CharactersDetailsUiState> {
  DetailsPageNotifier();

  @override
  CharactersDetailsUiState build() => CharactersDetailsUiState();
}
