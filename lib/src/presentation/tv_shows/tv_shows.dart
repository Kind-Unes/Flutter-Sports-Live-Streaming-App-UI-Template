import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';
import 'package:video_stream_clone/src/presentation/Movies/movies_page.dart';
import 'package:video_stream_clone/src/presentation/sports/sports_page.dart';

class TvEventsPage extends StatefulWidget {
  const TvEventsPage({super.key});

  @override
  State<TvEventsPage> createState() => _TvEventsPageState();
}

class _TvEventsPageState extends State<TvEventsPage> {
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
              height: 20.h,
            ),
            const Center(
              child: Text(
                "What Show you prefer ?",
                style: TextStyle(
                    fontSize: 23,
                    fontFamily: fontFamily,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),

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
            //),

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
              height: 16.h,
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
                GridMovieTile(
                  isSubscribe: true,
                ),
                GridMovieTile(
                  isSubscribe: true,
                ),
                GridMovieTile(
                  isSubscribe: true,
                ),
                GridMovieTile(
                  isSubscribe: true,
                ),
                GridMovieTile(
                  isSubscribe: true,
                ),
                GridMovieTile(
                  isSubscribe: true,
                ),
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
