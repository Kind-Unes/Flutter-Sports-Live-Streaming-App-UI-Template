import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_const.dart';

class CustomSmallButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final double height, width;

  const CustomSmallButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(1000),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(1000),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(254, 134, 10, 1),
                Color.fromRGBO(249, 9, 116, 1),
              ], // Adjust colors as needed
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontFamily: fontFamily,
                fontSize: 12.w,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
