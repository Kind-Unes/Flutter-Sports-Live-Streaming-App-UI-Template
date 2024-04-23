import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';
import 'package:video_stream_clone/src/presentation/tv_shows/tv_shows.dart';

class TvShowsPage extends StatefulWidget {
  const TvShowsPage({super.key});

  @override
  State<TvShowsPage> createState() => _TvShowsPageState();
}

class _TvShowsPageState extends State<TvShowsPage> {
  int selectedIndex = 0;
  bool isLanguagesSelected = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            // Container(
            //   height: 60.h,
            //   margin: const EdgeInsets.symmetric(horizontal: 10),
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(200),
            //     color: const Color.fromRGBO(27, 30, 39, 1),
            //   ),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Container(
            //           margin:
            //               EdgeInsets.only(left: 10.w, top: 8.h, bottom: 8.h),
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(200),
            //               color: isLanguagesSelected
            //                   ? const Color.fromRGBO(44, 46, 59, 1)
            //                   : const Color.fromRGBO(44, 46, 59, 1),
            //               gradient: AppColor.linearGradientPrimary),
            //           child: const Center(
            //             child: Text(
            //               "Language",
            //               style: TextStyle(
            //                   fontFamily: fontFamily,
            //                   color: Colors.white,
            //                   fontWeight: FontWeight.w700),
            //             ),
            //           ),
            //         ),
            //       ),
            //       SizedBox(
            //         width: 6.w,
            //       ),
            //       Expanded(
            //         child: InkWell(
            //           borderRadius: BorderRadius.circular(200),
            //           onTap: () {
            //             setState(() {
            //               isLanguagesSelected = false;
            //             });
            //           },
            //           child: Container(
            //             margin:
            //                 EdgeInsets.only(right: 10.w, top: 8.h, bottom: 8.h),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(200),
            //               color: !isLanguagesSelected
            //                   ? const Color.fromRGBO(44, 46, 59, 1)
            //                   : null,
            //             ),
            //             child: const Center(
            //               child: Text(
            //                 "Genre",
            //                 style: TextStyle(
            //                     fontFamily: fontFamily,
            //                     color: Colors.white,
            //                     fontWeight: FontWeight.w700),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10.h,
            // ),
            Container(
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(46, 44, 56, 1),
                  borderRadius: BorderRadius.circular(5)),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sliderColors.length,
                itemBuilder: (context, index) {
                  return MovieOptionSliderElement(
                    color: sliderColors[index],
                    title: sliderLanguages[index],
                    isSelected: index == selectedIndex,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Wrap(
              runSpacing: 7.h,
              spacing: 7.w,
              children: const [
                GridMovieTile(
                  isSubscribe: true,
                ),
                GridMovieTile(
                  isSubscribe: true,
                ),
                GridMovieTile(
                  isSubscribe: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GridMovieTile extends StatelessWidget {
  const GridMovieTile({
    super.key,
    required this.isSubscribe,
  });

  final bool isSubscribe;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(5),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(5),
            child: Container(
              height: 160.h,
              width: context.width / 3 - 10.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
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
                    height: 25.h,
                    width: 25.h,
                    child: Transform.scale(
                      scale: 0.63,
                      child: Image.asset(
                        "assets/icons/ic_subscribe.png",
                      ),
                    )))
            : Container()
      ],
    );
  }
}

class MovieOptionSliderElement extends StatelessWidget {
  const MovieOptionSliderElement({
    super.key,
    required this.color,
    required this.title,
    required this.isSelected,
    this.onTap,
  });

  final Color color;
  final String title;
  final bool isSelected;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 9.h, horizontal: 5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          color: isSelected ? const Color.fromRGBO(82, 82, 94, 1) : null,
        ),
        child: Container(
          width: 115.w,
          margin: EdgeInsets.symmetric(vertical: 3.5.h, horizontal: 3.5.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: color,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontFamily: fontFamily,
                color: Colors.white,
                fontSize: 12.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
