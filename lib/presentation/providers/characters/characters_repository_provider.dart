

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/infrastructure/datasource/character_db_datasource.dart';
import 'package:rick_and_morty_app/infrastructure/repositories/character_repository_impl.dart';

final charactersRepositoryProvider = Provider( ( ref ) {
  return CharacterRepositoryImpl( CharacterDbDatasource() );
});