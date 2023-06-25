// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/ui/screens/launch/cores_list_widget.dart';
import 'package:spacex/ui/screens/launch/fairings_widget.dart';
import 'package:spacex/ui/screens/launch/group_form_widget.dart';
import 'package:spacex/ui/screens/launch/links_widget.dart';
import 'package:spacex/ui/components/youtube_widget.dart';

class LaunchBodyWidget extends StatelessWidget {
  const LaunchBodyWidget({
    super.key,
    required this.launch,
  });

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GroupFormWidget(
            title: 'Main information',
            children: [
              const Text('Name'),
              Text(launch.name ?? ''),
              const Text('Rocket:'),
              Text((launch.rocket ?? '')),
              const Text('Launchpad:'),
              Text(launch.launchpad ?? ''),
              const Text('Flight Number:'),
              Text(launch.flightNumber.toString()),
              const Text('Date (UTC)'),
              Text(launch.dateUtc ?? ''),
              const Text('Date (Local)'),
              Text(launch.dateLocal ?? ''),
            ],
          ),
          if (launch.fairings != null)
            FairingsWidget(fairings: launch.fairings!),
          if (launch.links != null) LinksWidget(links: launch.links!),
          Text(launch.links?.youtubeId ?? 'nic'),
          if (launch.links?.youtubeId != null)
            Text('youtubeId: ${launch.links?.youtubeId}'),
          if (launch.links?.youtubeId != null)
            YoutubeWidget(id: launch.links!.youtubeId!),
          if (launch.cores != null)
            CoresListWidget(
              cores: launch.cores!,
            ),
        ],
      ),
    );
  }
}
