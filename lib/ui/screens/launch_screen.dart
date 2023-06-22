import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  static const path = 'launch';

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
            Text(
              'past.launches.body'.tr(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(GoRouter.of(context).location),
          ],
        ),
      ),
    );
  }

  get title => 'launch.title'.tr();
}
