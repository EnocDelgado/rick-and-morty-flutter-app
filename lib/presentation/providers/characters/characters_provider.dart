import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/domain/domain.dart';
import 'package:rick_and_morty_app/presentation/providers/characters/characters_repository_provider.dart';


final charactersProvider = StateNotifierProvider<CharacterNotifier, Map<String, Character>>((ref) {
  
  final charactersRepository = ref.watch( charactersRepositoryProvider );

  return CharacterNotifier( getCharacter:  charactersRepository.getCharacterById );
});


typedef GetCharacterCallback = Future<Character>Function( String id );

class CharacterNotifier extends StateNotifier<Map<String, Character>> {

  final GetCharacterCallback getCharacter;

  CharacterNotifier({
    required this.getCharacter
  }): super ({});

  Future<void> loadCharacters( String id ) async {

    // validation
    if ( state[ id ] != null ) return;

    final Character character = await getCharacter( id );
    state = { ...state, id: character }; 
  }

}