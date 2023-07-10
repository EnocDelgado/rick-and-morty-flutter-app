
import 'package:rick_and_morty_app/domain/entities/episode.dart';

abstract class EpisodesDatasource {

  Future<List<Episode>> getEpisodes({ int page = 1 });
  
  Future<Episode> getEpisodeById( String id );

  Future<List<Episode>> searchEpisodes( String query );

}