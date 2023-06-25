import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/ui/components/url_widget.dart';
import 'package:spacex/ui/screens/launch/group_form_widget.dart';
import 'package:spacex/ui/screens/launch/patch_widget.dart';

class LinksWidget extends StatelessWidget {
  final Links links;

  const LinksWidget({
    super.key,
    required this.links,
  });

  @override
  Widget build(BuildContext context) {
    return GroupFormWidget(
      title: 'Links',
      children: [
        //dummyContainer
        Container(),
        if (links.patch != null)
          GridPlacement(
            columnStart: 0,
            columnSpan: 2,
            rowStart: 1,
            rowSpan: 1,
            child: PatchWidget(patch: links.patch!),
          ),
        const Text('Presskit:'),
        URLWidget(links.presskit ?? ''),
        const Text('Webcast:'),
        URLWidget(links.webcast ?? ''),
        const Text('YouTube ID:'),
        Text(links.youtubeId ?? ''),

        const Text('Article:'),
        URLWidget(links.article ?? ''),
        const Text('Wikipedia:'),
        URLWidget(links.wikipedia ?? ''),
      ],
    );
  }
}
