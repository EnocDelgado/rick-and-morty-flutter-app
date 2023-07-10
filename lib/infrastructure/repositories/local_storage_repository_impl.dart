

import 'package:rick_and_morty_app/domain/domain.dart';

class LocalStorageRepositoryImpl implements LocalStorageRepository {

  final LocalStorageDatasource datasource;

  LocalStorageRepositoryImpl( this.datasource );

  @override
  Future<bool> isFavoriteCharacter(int movieId) {
    return datasource.isFavoriteCharacter(movieId);
  }

  @override
  Future<List<Character>> loadCharacters({int limit = 10, offset = 0}) {
    return datasource.loadCharacters( limit: limit, offset: offset );
  }

  @override
  Future<void> toggleFavorite(Character movie) {
    return datasource.toggleFavorite( movie );
  }



}