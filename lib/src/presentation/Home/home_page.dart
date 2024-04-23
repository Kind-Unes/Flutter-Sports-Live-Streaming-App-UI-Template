import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/presentation/Home/movie_card.dart';
import 'package:video_stream_clone/src/presentation/Home/shows_slider.dart';
import 'package:video_stream_clone/src/presentation/Home/wide_movie_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ShowsSlider(),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Upcoming Events",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: fontFamily,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 160.h,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return MovieCard(
                        isSubscribe: index == 4,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  "Upcoming Shows",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: fontFamily,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 80.h,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return WideWidgetCard(
                        isSubscribe: index == 1,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    const Text(
                      "Latest Events",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: fontFamily,
                          fontSize: 15),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: ShaderMask(
                        shaderCallback: (rect) {
                          return AppColor.linearGradientPrimary
                              .createShader(rect);
                        },
                        child: const Text(
                          "See All",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 160.h,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return MovieCard(
                        isSubscribe: index == 0,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    const Text(
                      "Latest shows",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: fontFamily,
                          fontSize: 15),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: ShaderMask(
                        shaderCallback: (rect) {
                          return AppColor.linearGradientPrimary
                              .createShader(rect);
                        },
                        child: const Text(
                          "See All",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 80.h,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return WideWidgetCard(
                        isSubscribe: index == 1,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    const Text(
                      "Best in Sports",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: fontFamily,
                          fontSize: 15),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: ShaderMask(
                        shaderCallback: (rect) {
                          return AppColor.linearGradientPrimary
                              .createShader(rect);
                        },
                        child: const Text(
                          "See All",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 80.h,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return WideWidgetCard(
                        isSubscribe: index == 1,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    const Text(
                      "Live TV & Radio",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: fontFamily,
                          fontSize: 15),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: ShaderMask(
                        shaderCallback: (rect) {
                          return AppColor.linearGradientPrimary
                              .createShader(rect);
                        },
                        child: const Text(
                          "See All",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 80.h,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return WideWidgetCard(
                        isSubscribe: index == 1,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    const Text(
                      "Popular Events",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: fontFamily,
                          fontSize: 15),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: ShaderMask(
                        shaderCallback: (rect) {
                          return AppColor.linearGradientPrimary
                              .createShader(rect);
                        },
                        child: const Text(
                          "See All",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 160.h,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return MovieCard(
                        isSubscribe: index == 4,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    const Text(
                      "Popular shows",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: fontFamily,
                          fontSize: 15),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: ShaderMask(
                        shaderCallback: (rect) {
                          return AppColor.linearGradientPrimary
                              .createShader(rect);
                        },
                        child: const Text(
                          "See All",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 80.h,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return WideWidgetCard(
                        isSubscribe: index == 1,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
