import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_stream_clone/src/core/app_color.dart';

class WaitingScreen extends StatelessWidget {
  const WaitingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.scale(
        scale: 1.5,
        child: const CircularProgressIndicator(
          color: AppColor.pinkColor,
          strokeWidth: 2,
          backgroundColor: AppColor.backgroundColor,
        ),
      ),
    );
  }
}
