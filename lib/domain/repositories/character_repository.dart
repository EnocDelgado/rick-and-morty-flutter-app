import 'package:rick_and_morty_app/domain/entities/character.dart';

abstract class CharacterRepository {

  Future<Character> getCharacterById( String id );

  Future<List<Character>> getCharacters({ int page = 1 });

  Future<List<Character>> searcCharacters( String query );

}