import 'package:flutter/material.dart';

class UIHelper {
  static const double paddingSmall = 5.0;
  static const double paddingBig = 10.0;

  static const double borderRadius = 10.0;

  static getBorderRadiusDecorationOpacity({Color? color}) => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          UIHelper.borderRadius,
        ),
        boxShadow: [
          BoxShadow(
            color: color ?? Colors.grey.withOpacity(0.4),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      );
}
