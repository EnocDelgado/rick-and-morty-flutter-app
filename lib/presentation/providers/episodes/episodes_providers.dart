import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/domain/domain.dart';
import 'package:rick_and_morty_app/presentation/providers/episodes/episodes_repository_providers.dart';

final EpisodesProvider = StateNotifierProvider<EpisodesNotifier, List<Episode>>((ref){

  final fetchMoreEpisodes = ref.watch( episodesRepositoryProvider ).getEpisodes;

  return EpisodesNotifier(fetchMoreEpisodes: fetchMoreEpisodes );
});


typedef EpisodeCallback = Future<List<Episode>> Function({ int page });

class EpisodesNotifier extends StateNotifier<List<Episode>> {

  int currentPage = 0;
  bool isLoading = false;
  EpisodeCallback fetchMoreEpisodes;

  EpisodesNotifier({
    required this.fetchMoreEpisodes
  }): super([]);


  Future<void> loadNextPage() async {
    // validation
    if ( isLoading ) return;
    isLoading = true;

    // get data
    currentPage++;
    final List<Episode> episodes = await fetchMoreEpisodes( page: currentPage );
    state = [ ...state, ...episodes ];

    // change state
    await Future.delayed( const Duration( milliseconds: 300 ) );
    isLoading = false;

  }
}