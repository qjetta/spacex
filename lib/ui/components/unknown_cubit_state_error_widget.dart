import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class UnknownCubitStateErrorWidget extends StatelessWidget {
  const UnknownCubitStateErrorWidget({
    super.key,
    required this.stateRuntimeType,
  });

  final Type stateRuntimeType;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text('error.unknown_state').tr(
        namedArgs: {'state': stateRuntimeType.toString()},
      ),
    );
  }
}
