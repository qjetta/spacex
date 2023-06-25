import 'package:flutter/material.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/ui/screens/launch/core_widget.dart';

class CoresListWidget extends StatelessWidget {
  final List<Cores> cores;

  const CoresListWidget({super.key, required this.cores});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Cores",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        for (var core in cores) CoreWidget(core: core),
      ],
    );
  }
}
