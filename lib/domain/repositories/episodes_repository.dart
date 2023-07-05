
import 'package:rick_and_morty_app/domain/entities/episode.dart';

abstract class EpisodesRepository {

  Future<List<Episode>> getNowPlaying({ int page = 1 });

  Future<List<Episode>> getPopular({ int page = 1 });
  
  Future<Episode> getEpisodeById( String id );

  Future<List<Episode>> searchEpisodes( String query );

}