import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/controller/go_router.dart';
import 'package:spacex/ui/components/ui_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SpaceX Home')),
      body: Center(
        child: SizedBox(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            HomeButton(
              onPressed: () => GoRouter.of(context).go(Navigation.crew),
              icon: const Icon(Icons.person),
              text: 'Crew',
            ),
            const SizedBox(height: UIHelper.paddingBig),
            HomeButton(
              onPressed: () => GoRouter.of(context).go(Navigation.pastLaunches),
              icon: const Icon(Icons.rocket),
              text: 'Launches',
            ),
          ]),
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
  });

  final void Function() onPressed;
  final Icon icon;
  final String text;
  static const buttonWidth = 150.0;
  static const buttonHeight = 80.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: UIHelper.paddingBig),
            Text(text),
          ],
        ),
      ),
    );
  }
}
