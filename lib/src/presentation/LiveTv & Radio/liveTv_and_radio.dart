import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/presentation/sports/sports_page.dart';
import 'package:video_stream_clone/src/presentation/tv_shows/tv_shows.dart';

class LiveTvAndRadioPage extends StatefulWidget {
  const LiveTvAndRadioPage({super.key});

  @override
  State<LiveTvAndRadioPage> createState() => _SportsPageState();
}

class _SportsPageState extends State<LiveTvAndRadioPage> {
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
              children: const [SportsWideGridMovieTile()],
            )
          ],
        ),
      ),
    );
  }
}
