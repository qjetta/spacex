import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:spacex/ui/components/ui_helper.dart';

class CachedNetworkImageWithDefaults extends StatelessWidget {
  const CachedNetworkImageWithDefaults({
    required this.url,
    super.key,
  });
  final String url;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => const Padding(
        padding: EdgeInsets.all(UIHelper.paddingBig),
        child: FittedBox(
          fit: BoxFit.contain,
          child: CircularProgressIndicator(),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
