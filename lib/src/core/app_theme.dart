import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
    );
  }

  static Color getSoftText(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.7);

  static Color getTextColorOnBackground(Brightness brightness) =>
      brightness == Brightness.light ? Colors.white : Colors.white;
}
