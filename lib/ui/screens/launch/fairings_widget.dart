import 'package:flutter/material.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/ui/screens/launch/group_form_widget.dart';

class FairingsWidget extends StatelessWidget {
  final Fairings fairings;

  const FairingsWidget({
    super.key,
    required this.fairings,
  });

  @override
  Widget build(BuildContext context) {
    return GroupFormWidget(
      title: 'Fairings',
      children: [
        const Text('Reused:'),
        Checkbox(
          value: fairings.reused,
          onChanged: null,
          tristate: true,
        ),
        const Text('Recovery Attempt:'),
        Checkbox(
          value: fairings.recoveryAttempt,
          onChanged: null,
          tristate: true,
        ),
        const Text('Recovered:'),
        Container(
          alignment: Alignment.centerLeft,
          child: Checkbox(
            value: fairings.recovered,
            onChanged: null,
            tristate: true,
          ),
        ),
        const Text('Ships'),
        Text(fairings.ships?.join(', ') ?? ''),
      ],
    );
  }
}
