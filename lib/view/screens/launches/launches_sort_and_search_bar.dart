import 'package:flutter/material.dart';
import 'package:spacex/view/screens/launches/launches_sort.dart';
import 'package:spacex/view/screens/launches/launches_search_bar.dart';

class SortAndSearchBar extends StatelessWidget {
  const SortAndSearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LaunchesSearchBar(),
        LaunchesSort(),
      ],
    );
  }
}
