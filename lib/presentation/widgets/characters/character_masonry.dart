import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/domain/domain.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CharacterMasonry extends StatefulWidget {

  final List<Character> characters;
  final VoidCallback? loadNextPage;

  const CharacterMasonry({
    super.key, 
    required this.characters, 
    this.loadNextPage
  });

  @override
  State<CharacterMasonry> createState() => _CharacterMasonryState();
}

class _CharacterMasonryState extends State<CharacterMasonry> {

  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      
      if ( widget.loadNextPage == null ) return;

      if ( (scrollController.position.pixels + 100 ) >= scrollController.position.maxScrollExtent ) {
        // widget.loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
    // return Padding(
      // padding: const EdgeInsets.symmetric( horizontal: 10 ),
      // child: MasonryGridView.count(
      //   controller: scrollController,
      //   crossAxisCount: 3,
      //   mainAxisSpacing: 10,
      //   crossAxisSpacing: 10,
      //   itemBuilder: widget.characters.length,
      //   itemCount: ( context, index ) {

      //     if ( index == 1 ) {
      //       return Column(
      //         children: [
      //           const SizedBox( height: 20 ),
      //         ],
      //       )
      //     }
      //   },
      // ),
    // );
  }
}