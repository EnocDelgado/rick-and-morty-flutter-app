
import 'package:isar/isar.dart';
import 'package:rick_and_morty_app/domain/domain.dart';

class LocalStorageDatasourceImpl extends LocalStorageDatasource {

  late Future<Isar> db;

  // LocalStorageDatasourceImpl() {
  //   db = openDB();
  // }

  // Future<Isar> openDB() async {

  //   if ( Isar.instanceNames.isEmpty ) {
  //     return await Isar.open([ CharacterSchema ], inspector: true);
  //   }

  //   return Future.value( Isar.getInstance() );
  // }

  @override
  Future<void> toggleFavorite(Character movie) {
    // TODO: implement toggleFavorite
    throw UnimplementedError();
  }
  
  @override
  Future<bool> isFavoriteCharacter(int movieId) {
    // TODO: implement isCharacterFavorite
    throw UnimplementedError();
  }
  
  @override
  Future<List<Character>> loadCharacters({int limit = 10, offset = 0}) {
    // TODO: implement loadCharacters
    throw UnimplementedError();
  }

 

}