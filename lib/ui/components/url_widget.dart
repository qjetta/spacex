import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class URLWidget extends StatelessWidget {
  final String url;

  const URLWidget(this.url, {super.key});

  void _openURL(BuildContext context) async {
    var uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.externalNonBrowserApplication,
      );
    } else {
      SnackBar(content: Text('Could not launch $url'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openURL(context),
      child: Text(
        url,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
