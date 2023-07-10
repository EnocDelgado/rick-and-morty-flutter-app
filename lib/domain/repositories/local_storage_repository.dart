import 'package:rick_and_morty_app/domain/entities/character.dart';

abstract class LocalStorageRepository {

  Future<void> toggleFavorite( Character movie );
  
  Future<bool> isFavoriteCharacter( int movieId );

  Future<List<Character>> loadCharacters({ int limit = 10, offset = 0 });
  
}