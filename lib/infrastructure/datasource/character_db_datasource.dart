import 'package:dio/dio.dart';

import 'package:rick_and_morty_app/domain/domain.dart';
import 'package:rick_and_morty_app/infrastructure/mappers/character_mapper.dart';
import 'package:rick_and_morty_app/infrastructure/models/models.dart';

class CharacterDbDatasource extends CharacterDatasource {

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://rickandmortyapi.com/api'
    )
  );

  @override
  Future<Character> getCharacterById( String id ) async {
    
    final response = await dio.get('/character/$id');

    // I have to use _json conversion function to get data
    final characterResponse = CharacterResponse.fromJson( response.data );

    final Character character = CharacterMapper.charactertToEntiity( characterResponse );

    return character;
  }


  @override
  Future<List<Character>> searcCharacters(String query) async {
    
    if ( query.isEmpty ) return [];

    final response = await dio.get('/character/?name=$query');

    // I have to use _json conversion function to get data
    return response.data;
  }
  
  @override
  Future<List<Character>> getCharacters({int page = 1}) {
    // TODO: implement getCharacters
    throw UnimplementedError();
  }

}