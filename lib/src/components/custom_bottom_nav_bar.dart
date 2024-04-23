import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/bloc/bottom_nav_bar_cubit.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.indexState,
  });

  final int indexState;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(34, 36, 48, 1)),
            height: 70.h,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BottomNavBarTap(
                  image: "assets/icons/ic_home.png",
                  title: 'Home',
                  onTap: () {
                    context.read<BottomNavBarCubit>().updateIndex(0);
                  },
                  isCurrent: indexState == 0,
                ),
                BottomNavBarTap(
                  image: "assets/icons/ic_watchlist.png",
                  title: 'Watchlist',
                  onTap: () {
                    context.read<BottomNavBarCubit>().updateIndex(01);
                  },
                  isCurrent: indexState == 01,
                ),
                BottomNavBarTap(
                  image: "assets/icons/ic_profile.png",
                  title: 'Account',
                  onTap: () {
                    context.read<BottomNavBarCubit>().updateIndex(02);
                  },
                  isCurrent: indexState == 02,
                ),
                BottomNavBarTap(
                  image: "assets/icons/ic_setting.png",
                  title: 'Settings',
                  onTap: () {
                    context.read<BottomNavBarCubit>().updateIndex(03);
                  },
                  isCurrent:
                      indexState == 03 || indexState == 9 || indexState == 10,
                ),
              ],
            ),
          ),
          Center(
              child: Container(
            height: 50.h,
            width: context.width - 40.w,
            decoration: const BoxDecoration(color: Colors.white),
            child: Center(
              child: Image.asset(
                "assets/icons/ic_tkds.jpg",
                height: 60.h,
                width: 60.h,
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class BottomNavBarTap extends StatelessWidget {
  const BottomNavBarTap({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
    required this.isCurrent,
  });

  final String image;
  final String title;
  final Function() onTap;
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                image,
                scale: 1.4,
                color: isCurrent ? AppColor.pinkColor : Colors.grey,
              ),
              Text(
                title,
                style: TextStyle(
                    color: isCurrent ? AppColor.pinkColor : Colors.grey,
                    fontFamily: fontFamily,
                    fontSize: 13,
                    fontWeight:
                        isCurrent ? FontWeight.normal : FontWeight.bold),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
