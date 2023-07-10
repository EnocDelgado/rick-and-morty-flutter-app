

import 'package:rick_and_morty_app/domain/datasource/episodes_datasource.dart';
import 'package:rick_and_morty_app/domain/entities/episode.dart';

class EpisodesDbDatasource extends EpisodesDatasource {
  @override
  Future<Episode> getEpisodeById(String id) {
    // TODO: implement getEpisodeById
    throw UnimplementedError();
  }

  @override
  Future<List<Episode>> getEpisodes({int page = 1}) {
    // TODO: implement getEpisodes
    throw UnimplementedError();
  }

  @override
  Future<List<Episode>> searchEpisodes(String query) {
    // TODO: implement searchEpisodes
    throw UnimplementedError();
  }

} 