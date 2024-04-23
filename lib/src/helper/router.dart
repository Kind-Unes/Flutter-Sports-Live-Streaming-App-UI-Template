import 'package:flutter/material.dart';

class CustomRouter extends PageRouteBuilder {
  final Widget widget;

  CustomRouter({required this.widget})
      : super(
          transitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            animation = CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            );
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
        );
}
