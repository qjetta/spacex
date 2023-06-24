import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({
    Key? key,
    required this.icon,
    required this.text,
    this.color,
    this.iconSize = 15,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Color? color;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: color, size: iconSize),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            text,
            maxLines: 4,
            overflow: TextOverflow.fade,
            style: color == null
                ? null
                : DefaultTextStyle.of(context).style.copyWith(
                      color: color,
                    ),
          ),
        ),
      ],
    );
  }
}
