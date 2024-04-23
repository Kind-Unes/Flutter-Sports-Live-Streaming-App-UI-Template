import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/components/custom_button.dart';

import '../../core/app_const.dart';

class MyWatchListLogOut extends StatelessWidget {
  const MyWatchListLogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 110.h,
          ),
          const Text(
            "you have to login first to see watchlist",
            style: TextStyle(color: Colors.white, fontFamily: fontFamily),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 120.w),
              child: CustomPrimaryButton(text: "Login", onTap: () {}))
        ],
      ),
    );
  }
}
