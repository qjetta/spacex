import 'package:flutter/material.dart';
import 'package:spacex/controller/space_x_exception.dart';

class ErrorWidgetWithReload extends StatelessWidget {
  const ErrorWidgetWithReload({
    super.key,
    required this.onPressed,
    required this.exception,
  });
  final Function() onPressed;
  final SpaceXException exception;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(exception.message),
        ElevatedButton(
          onPressed: onPressed,
          child: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}
