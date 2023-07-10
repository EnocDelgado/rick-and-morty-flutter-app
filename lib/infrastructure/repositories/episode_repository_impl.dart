

import 'package:rick_and_morty_app/domain/datasource/episodes_datasource.dart';
import 'package:rick_and_morty_app/domain/entities/episode.dart';
import 'package:rick_and_morty_app/domain/repositories/episodes_repository.dart';

class EpisodeRepositoryImpl extends EpisodesRepository {

  final EpisodesDatasource datasource;
  EpisodeRepositoryImpl( this.datasource );

  @override
  Future<Episode> getEpisodeById(String id) {
    return datasource.getEpisodeById( id );
  }
  @override
  Future<List<Episode>> getEpisodes({int page = 1}) {
    return datasource.getEpisodes( page: page );
  }

  @override
  Future<List<Episode>> searchEpisodes(String query) {
    return datasource.searchEpisodes( query );
  }

  
}