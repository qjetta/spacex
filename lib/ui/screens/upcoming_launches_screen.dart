import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UpcomingLaunchesScreen extends StatelessWidget {
  const UpcomingLaunchesScreen({Key? key}) : super(key: key);

  static const path = '/upcoming-launches';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('upcoming.launches.body'.tr(),
                style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }

  get title => 'upcoming.launches.title'.tr();
}
