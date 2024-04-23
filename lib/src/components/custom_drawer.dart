import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marquee/marquee.dart';
import 'package:video_stream_clone/src/bloc/bottom_nav_bar_cubit.dart';
import 'package:video_stream_clone/src/bloc/drawer_cubit.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';
import 'package:video_stream_clone/src/presentation/privacy_policy/helper/router.dart';
import 'package:video_stream_clone/src/presentation/Auth/signin/signin_page.dart';
import 'package:video_stream_clone/src/presentation/dashboard/dashboard_page.dart';
import 'package:video_stream_clone/src/presentation/profile/profile_page.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool isAuthenticated = true;
  // todo: init state for is Authenticated

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DrawerCubit, int>(
      builder: (context, indexState) {
        return Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
          width: context.width / 1.3,
          backgroundColor: const Color.fromRGBO(10, 11, 15, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                    context, CustomRouter(widget: const DashBoardPage())),
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 15.w, right: 9.w),
                    height: 140.h,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 88, 76, 76)),
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 70.h,
                          width: 70.w,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(2300),
                              child: Image.asset(
                                "assets/icons/ic_tkds.jpg",
                                fit: BoxFit.fill,
                              )),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40.h,
                              width: 140.w,
                              child: Marquee(
                                text:
                                    'TKDS SPORTS                                 ',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: fontFamily,
                                    color: Colors.white),
                                scrollAxis: Axis.horizontal,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                blankSpace: 20.0,
                                velocity: 100.0,
                                pauseAfterRound: const Duration(seconds: 0),
                                accelerationDuration:
                                    const Duration(seconds: 3),
                                accelerationCurve: Curves.linear,
                                decelerationDuration:
                                    const Duration(milliseconds: 1000),
                                decelerationCurve: Curves.easeOut,
                                showFadingOnlyWhenScrolling: true,
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(0, -12.h),
                              child: Text(
                                "Watch Now",
                                style: TextStyle(
                                    fontFamily: fontFamily,
                                    fontSize: 12,
                                    color: Colors.grey[350]),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Transform.translate(
                          offset: Offset(0, -6.h),
                          child: const Icon(
                            FontAwesomeIcons.chevronDown,
                            size: 13,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              DrawerTile(
                isCurrent: indexState == 0,
                onTap: () {
                  context.read<DrawerCubit>().updateIndex(01 - 1);
                  context.read<BottomNavBarCubit>().updateIndex(0);
                  context.pop();
                },
                imageIcon: "assets/icons/ic_home.png",
                title: 'Home',
              ),
              DrawerTile(
                isCurrent: indexState == 01,
                onTap: () {
                  context.read<DrawerCubit>().updateIndex(02 - 1);
                  context.read<BottomNavBarCubit>().updateIndex(04);

                  context.pop();
                },
                imageIcon: "assets/icons/ic_tv_show.png",
                title: 'TV Shows',
              ),
              DrawerTile(
                isCurrent: indexState == 02,
                onTap: () {
                  context.read<DrawerCubit>().updateIndex(03 - 1);
                  context.read<BottomNavBarCubit>().updateIndex(5);

                  context.pop();
                },
                imageIcon: "assets/icons/ic_movie.png",
                title: 'Events',
              ),
              DrawerTile(
                isCurrent: indexState == 03,
                onTap: () {
                  context.read<DrawerCubit>().updateIndex(04 - 1);
                  context.read<BottomNavBarCubit>().updateIndex(6);

                  context.pop();
                },
                imageIcon: "assets/icons/ic_sport.png",
                title: 'Sports',
              ),
              DrawerTile(
                isCurrent: indexState == 04,
                onTap: () {
                  context.read<DrawerCubit>().updateIndex(05 - 1);
                  context.read<BottomNavBarCubit>().updateIndex(7);

                  context.pop();
                },
                imageIcon: "assets/icons/ic_tv_show.png",
                title: 'Live TV & Radio',
              ),
              isAuthenticated
                  ? DrawerTile(
                      isCurrent: indexState == 06,
                      onTap: () {
                        context.read<DrawerCubit>().updateIndex(6);
                        context.read<BottomNavBarCubit>().updateIndex(1);
                        context.pop();
                      },
                      imageIcon: "assets/icons/ic_watchlist.png",
                      title: 'My Watchlist',
                    )
                  : Container(),
              !isAuthenticated
                  ? Container()
                  : DrawerTile(
                      isCurrent: indexState == 07,
                      onTap: () {
                        Navigator.push(context,
                            CustomRouter(widget: const DashBoardPage()));
                      },
                      imageIcon: "assets/icons/ic_dashboard.png",
                      title: 'Dashborad',
                    ),
              !isAuthenticated
                  ? Container()
                  : DrawerTile(
                      isCurrent: indexState == 08,
                      onTap: () {
                        Navigator.push(
                            context, CustomRouter(widget: const ProfilePage()));
                      },
                      imageIcon: "assets/icons/ic_profile.png",
                      title: 'Profile',
                    ),
              DrawerTile(
                isCurrent: indexState == 05,
                onTap: () {
                  context.read<DrawerCubit>().updateIndex(06 - 1);
                  context.read<BottomNavBarCubit>().updateIndex(3);

                  context.pop();
                },
                imageIcon: "assets/icons/ic_setting.png",
                title: 'Settings',
              ),
              DrawerTile(
                isCurrent: false,
                onTap: () {
                  context.pop();
                  Navigator.pushReplacement(
                      context, CustomRouter(widget: const SignInPage()));
                },
                imageIcon: "assets/icons/ic_login.png",
                title: 'Login',
              ),
            ],
          ),
        );
      },
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
    required this.onTap,
    required this.isCurrent,
    required this.imageIcon,
    required this.title,
  });
  final Function() onTap;
  final String imageIcon;
  final String title;
  final bool isCurrent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.w,
      ),
      child: Material(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(200),
          topLeft: Radius.circular(200),
        ),
        color: !isCurrent
            ? Colors.transparent
            : const Color.fromRGBO(27, 28, 32, 1),
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.black.withOpacity(0.5),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(200),
            topLeft: Radius.circular(200),
          ),
          child: Container(
            height: 49.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(200),
                topLeft: Radius.circular(200),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 17.w,
                ),
                Image.asset(
                  imageIcon,
                  height: 25,
                  color: isCurrent ? AppColor.pinkColor : Colors.white,
                  width: 25,
                ),
                SizedBox(
                  width: 14.w,
                ),
                Transform.translate(
                  offset: Offset(0, -0.5.h),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: !isCurrent ? Colors.white : AppColor.pinkColor,
                        fontFamily: fontFamily,
                        fontSize: 13.5,
                        fontWeight:
                            isCurrent ? FontWeight.bold : FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
