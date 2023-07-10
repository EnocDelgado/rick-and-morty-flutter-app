

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/domain/domain.dart';

final searchQueryProvider = StateProvider((ref) => '');

// final searchEpisodesProvider = StateNotifierProvider<SearchEpisodesNotifier, List<Episode>>((ref) {

// });

typedef SearchEpisodesCallback = Future<List<Episode>> Function( String query );

class SearchEpisodesNotifier extends StateNotifier<List<Episode>> {

  final SearchEpisodesCallback searchEpisodes;
  final Ref ref;

  SearchEpisodesNotifier({
    required this.searchEpisodes,
    required this.ref
  }): super([]);

  Future<List<Episode>> searchEpisodeQuery( String query ) async {

    final List<Episode> episodes = await searchEpisodes( query );
    // ref.read( searchEpisodesProvider.notifier ).update( (state) => query);

    state = episodes;
    return episodes;
  }

}