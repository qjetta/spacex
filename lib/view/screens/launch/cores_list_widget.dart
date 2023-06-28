import 'package:flutter/material.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/view/components/title_with_background_widget.dart';
import 'package:spacex/view/components/ui_helper.dart';
import 'package:spacex/view/screens/launch/core_widget.dart';

class CoresListWidget extends StatelessWidget {
  final List<Cores> cores;

  const CoresListWidget({super.key, required this.cores});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(UIHelper.paddingBig),
      child: Column(
        children: [
          const TitleWithBackgroundWidget(
            title: "Cores",
            level: 1,
          ),
          for (var core in cores) CoreWidget(core: core),
        ],
      ),
    );
  }
}
