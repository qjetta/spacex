import 'package:flutter/material.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/ui/components/url_widget.dart';
import 'package:spacex/ui/screens/launch/group_form_widget.dart';

class PatchWidget extends StatelessWidget {
  final Patch patch;

  const PatchWidget({
    super.key,
    required this.patch,
  });

  @override
  Widget build(BuildContext context) {
    if (patch.small == null) return Container();

    // return Container();

    return GroupFormWidget(
      title: "Patch:",
      children: [
        const Text('Small:'),
        URLWidget(patch.small ?? ''),
        const Text('Large:'),
        URLWidget(patch.large ?? ''),
        Container(),
        SizedBox(
          height: 50,
          child: Image.network(
            patch.small!,
          ),
        ),
      ],
    );
  }
}
