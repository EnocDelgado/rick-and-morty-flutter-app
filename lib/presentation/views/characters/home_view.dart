import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_app/presentation/providers/providers.dart';

import 'package:rick_and_morty_app/presentation/widgets/widgets.dart';


class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView> {

  @override
  void initState() {
    super.initState();

    ref.read( charactersProvider.notifier ).loadCharacters;
  }

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [

        SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppbar(),
          ),
        ),
      ],
    );
  }
}