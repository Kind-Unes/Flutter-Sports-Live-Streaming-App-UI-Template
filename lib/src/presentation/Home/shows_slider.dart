import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';

class ShowsSlider extends StatelessWidget {
  const ShowsSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const color = Color.fromRGBO(20, 21, 26, 1);

    return Container(
      height: 180.h,
      width: context.width,
      decoration: const BoxDecoration(color: color),
      child: CarouselSlider.builder(
        itemCount: 5,
        options: CarouselOptions(
          enlargeCenterPage: true,
          height: 170.h,
          viewportFraction: 0.78,
          autoPlayInterval: const Duration(seconds: 7),
          autoPlay: true,
        ),
        itemBuilder: (BuildContext context, int index, int realIndex) {
          final isCurrentPage = index == realIndex;
          final borderRadius =
              BorderRadius.circular(isCurrentPage ? 12.0 : 8.0);

          return Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 0.w,
                  right: 0.w,
                  top: 20.h,
                  bottom: 10.h,
                ),
                child: Material(
                  elevation: 5,
                  borderRadius: borderRadius,
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: borderRadius,
                      ),
                      child: Center(
                        child: Text("$index"),
                      )),
                ),
              ),
              Positioned(
                  right: 14.w,
                  top: 30.h,
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
            ],
          );
        },
      ),
    );
  }
}
