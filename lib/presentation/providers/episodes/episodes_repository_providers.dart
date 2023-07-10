


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/infrastructure/datasource/episodes_db_datasource.dart';
import 'package:rick_and_morty_app/infrastructure/repositories/episode_repository_impl.dart';

final episodesRepositoryProvider = Provider((ref) {
  return EpisodeRepositoryImpl( EpisodesDbDatasource() );
});