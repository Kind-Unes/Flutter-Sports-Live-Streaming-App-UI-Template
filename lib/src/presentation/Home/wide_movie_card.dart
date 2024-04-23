import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_color.dart';

class WideWidgetCard extends StatelessWidget {
  const WideWidgetCard({
    super.key,
    required this.isSubscribe,
  });

  final bool isSubscribe;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: Material(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 160.h,
                width: 160.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
        isSubscribe
            ? Positioned(
                right: 14.w,
                top: 10.h,
                child: Container(
                    decoration: const BoxDecoration(
                        gradient: AppColor.linearGradientPrimary,
                        shape: BoxShape.circle),
                    height: 27.h,
                    width: 27.h,
                    child: Transform.scale(
                      scale: 0.7,
                      child: Image.asset(
                        "assets/icons/ic_subscribe.png",
                      ),
                    )))
            : Container()
      ],
    );
  }
}
