import 'package:flutter/material.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/ui/screens/launch/group_form_widget.dart';

class CoreWidget extends StatelessWidget {
  final Cores core;

  const CoreWidget({
    super.key,
    required this.core,
  });

  @override
  Widget build(BuildContext context) {
    return GroupFormWidget(
      title: 'Core: ${core.core ?? ''}',
      children: [
        const Text('Flight:'),
        Text(core.flight?.toString() ?? ''),
        const Text('Landing Attempt:'),
        Checkbox(
          value: core.landingAttempt,
          onChanged: null,
          tristate: true,
        ),
        const Text('Landing Success:'),
        Checkbox(
          value: core.landingSuccess,
          onChanged: null,
          tristate: true,
        ),
        const Text('Gridfins:'),
        Checkbox(
          value: core.gridfins,
          onChanged: null,
          tristate: true,
        ),
        const Text('Legs:'),
        Checkbox(
          value: core.legs,
          onChanged: null,
          tristate: true,
        ),
        const Text('Reused:'),
        SizedBox(
          height: 10,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Checkbox(
              value: core.reused,
              onChanged: null,
              tristate: true,
            ),
          ),
        ),
      ],
    );
  }
}
