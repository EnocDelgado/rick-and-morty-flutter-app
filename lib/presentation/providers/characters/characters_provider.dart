

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/domain/domain.dart';
import 'package:rick_and_morty_app/presentation/providers/characters/characters_repository_provider.dart';

final characterProvider = StateNotifierProvider<CharacterNotifier, Map<String, List<Character>>>((ref) {
  
  final charactersRepository = ref.watch( charactersRepositoryProvider );

  return CharacterNotifier( fetchMoreCharacters:  charactersRepository.getCharacters );
});

typedef GetCharacterCallback = Future<List<Character>>Function({ int page });

class CharacterNotifier extends StateNotifier<Map<String, List<Character>>> {

  int currentPage = 0;
  bool isLoading = false;
  final GetCharacterCallback fetchMoreCharacters;

  CharacterNotifier({
    required this.fetchMoreCharacters
  }): super ({});

  Future<void> loadCharacters( String id ) async {
    if ( isLoading ) return;
    isLoading = true;

    currentPage++;
    final List<Character> characters = await fetchMoreCharacters( page: currentPage );
    state = { ...state, id: characters };

    await Future.delayed( const Duration( milliseconds: 300 ) );
    isLoading = false;
  }
}