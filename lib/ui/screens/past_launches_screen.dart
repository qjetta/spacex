import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/ui/screens/launch_screen.dart';

class PastLaunchesScreen extends StatelessWidget {
  const PastLaunchesScreen({Key? key}) : super(key: key);

  static const path = '/past-launches';

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
            Text('past.launches.body'.tr(),
                style: Theme.of(context).textTheme.titleLarge),
            ElevatedButton(
              onPressed: () =>
                  context.go('${PastLaunchesScreen.path}/${LaunchScreen.path}'),
              child: const Text('Detail'),
            ),
          ],
        ),
      ),
    );
  }

  get title => 'past.launches.title'.tr();
}
