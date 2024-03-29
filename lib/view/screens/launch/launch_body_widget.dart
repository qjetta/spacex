import 'package:flutter/material.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/view/components/ui_helper.dart';
import 'package:spacex/view/screens/launch/cores_list_widget.dart';
import 'package:spacex/view/screens/launch/fairings_widget.dart';
import 'package:spacex/view/screens/launch/group_form_widget.dart';
import 'package:spacex/view/screens/launch/links_widget.dart';
import 'package:spacex/view/components/youtube_widget.dart';

class LaunchBodyWidget extends StatelessWidget {
  const LaunchBodyWidget({
    super.key,
    required this.launch,
  });

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: UIHelper.getBorderRadiusDecorationOpacity(),
      child: SingleChildScrollView(
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
            if (launch.links?.youtubeId != null)
              YoutubeWidget(id: launch.links!.youtubeId!),
            if (launch.cores != null)
              CoresListWidget(
                cores: launch.cores!,
              ),
          ],
        ),
      ),
    );
  }
}
