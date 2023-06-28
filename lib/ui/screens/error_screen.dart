import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/controller/go_router.dart';

class ErrorScreen extends StatelessWidget {
  final String message;

  const ErrorScreen({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error,
              size: 64,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              message,
            ),
            IconButton(
              iconSize: 35,
              onPressed: () => context.go(Navigation.home),
              icon: const Icon(Icons.home),
            ),
          ],
        ),
      ),
    );
  }
}
