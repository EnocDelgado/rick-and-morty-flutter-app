

import 'package:rick_and_morty_app/domain/domain.dart';

class CharacterRepositoryImpl extends CharacterRepository {

  final CharacterDatasource datasource;
  CharacterRepositoryImpl( this.datasource );

  @override
  Future<Character> getCharacterById(String id) {
    return datasource.getCharacterById( id );
  }

  @override
  Future<List<Character>> getCharacters({int page = 1}) {
    return datasource.getCharacters( page: page );
  }

  @override
  Future<List<Character>> searcCharacters(String query) {
    return datasource.searcCharacters( query );
  }

}