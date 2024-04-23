import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';
import 'package:video_stream_clone/src/presentation/tv_shows/tv_shows.dart';

class SportsPage extends StatefulWidget {
  const SportsPage({super.key});

  @override
  State<SportsPage> createState() => _SportsPageState();
}

class _SportsPageState extends State<SportsPage> {
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

class SportsWideGridMovieTile extends StatelessWidget {
  const SportsWideGridMovieTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const WideGridMovieTile(
          isSubscribe: true,
        ),
        SizedBox(
          width: context.width / 2 - 10.w,
          child: const Text(
            "TitleTitleTitleTitleTitleTitleTitleTitleTitle",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontFamily: fontFamily),
          ),
        )
      ],
    );
  }
}

class WideGridMovieTile extends StatelessWidget {
  const WideGridMovieTile({
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
              height: 80.h,
              width: context.width / 2 - 10.w,
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
