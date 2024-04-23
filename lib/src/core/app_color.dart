import 'package:flutter/material.dart';

class AppColor {
  const AppColor._();

  static const pinkColor = Color.fromRGBO(254, 9, 114, 1);
  static const backgroundColor = Color.fromRGBO(10, 11, 16, 1);

  static const linearGradientPrimary = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFE8408),
        Color(0xFFFB0B6E),
      ]);
}
