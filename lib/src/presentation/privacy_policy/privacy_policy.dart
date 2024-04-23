import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_const.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: const Column(
          children: [
            TitleText(text: "We are Commited to Protecting Your Privacy"),
            BasicText(
                text:
                    "Your privacy is important to us. It is our policy to respect your privacy regarding any information we may collect from you across our website, https://www.video_stream_clone.com, and other sites we own and operate."),
            TitleText(text: "We are Commited to Protecting Your Privacy"),
            BasicText(
                text:
                    "Your privacy is important to us. It is our policy to respect your privacy regarding any information we may collect from you across our website, https://www.video_stream_clone.com, and other sites we own and operate."),
            TitleText(text: "We are Commited to Protecting Your Privacy"),
            BasicText(
                text:
                    "Your privacy is important to us. It is our policy to respect your privacy regarding any information we may collect from you across our website, https://www.video_stream_clone.com, and other sites we own and operate."),
          ],
        ),
      ),
    );
  }
}

class BasicText extends StatelessWidget {
  const BasicText({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Text(text,
          style: TextStyle(
            fontSize: 16.5.h,
            color: Colors.white,
            fontFamily: fontFamily,
          )),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Text(text,
          style: TextStyle(
              fontSize: 17.h,
              color: Colors.white,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold)),
    );
  }
}
