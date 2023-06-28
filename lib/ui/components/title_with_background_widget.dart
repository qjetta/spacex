import 'package:flutter/material.dart';
import 'package:spacex/ui/components/ui_helper.dart';

class TitleWithBackgroundWidget extends StatelessWidget {
  const TitleWithBackgroundWidget({
    super.key,
    required this.level,
    required this.title,
  });

  final int level;
  final String title;

  @override
  Widget build(BuildContext context) {
    var titleFont = Theme.of(context).textTheme.titleLarge;
    titleFont = titleFont!.copyWith(
      fontSize: titleFont.fontSize! - (level * 2),
    );
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(UIHelper.paddingSmall),
      color:
          Theme.of(context).primaryColor.withOpacity(0.7 - 0.15 * (level + 1)),
      child: Text(
        title,
        style: titleFont,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
