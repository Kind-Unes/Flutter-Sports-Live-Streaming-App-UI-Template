import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_stream_clone/src/bloc/bottom_nav_bar_cubit.dart';
import 'package:video_stream_clone/src/components/custom_bottom_nav_bar.dart';
import 'package:video_stream_clone/src/components/custom_drawer.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/presentation/About/about_page.dart';
import 'package:video_stream_clone/src/presentation/Home/home_page.dart';
import 'package:video_stream_clone/src/presentation/LiveTv%20&%20Radio/liveTv_and_radio.dart';
import 'package:video_stream_clone/src/presentation/Movies/movies_page.dart';
import 'package:video_stream_clone/src/presentation/account/account_page.dart';
import 'package:video_stream_clone/src/presentation/dashboard/dashboard_page.dart';
import 'package:video_stream_clone/src/presentation/my_watch%20_ist/my_watch_list_page.dart';
import 'package:video_stream_clone/src/presentation/privacy_policy/privacy_policy.dart';
import 'package:video_stream_clone/src/presentation/settings/settings_page.dart';
import 'package:video_stream_clone/src/presentation/sports/sports_page.dart';
import 'package:video_stream_clone/src/presentation/tv_shows/tv_shows.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isSearch = false;
  List pages = [
    const HomePage(), // 0
    const MyWatchList(), // 1               // account pages in both logged or not
    const AccountPage(), // 2               // account pages in both logged or not
    const SettingsPage(), // 3
    const TvShowsPage(), // 4
    const TvEventsPage(), // 5
    const SportsPage(), // 6
    const LiveTvAndRadioPage(), // 7
    const DashBoardPage(), // 8
    const PrivacyPolicy(), // 9
    const AboutPage(), // 10
    const Placeholder() // Podcast Page (Soon . . .)
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, int>(
      builder: (context, indexState) {
        return Scaffold(
          bottomNavigationBar: CustomBottomNavBar(
            indexState: indexState,
          ),
          drawer: const SafeArea(
            child: CustomDrawer(),
          ),
          backgroundColor: AppColor.backgroundColor,
          appBar: isSearch
              ? AppBar(
                  leading: IconButton(
                      onPressed: () {
                        setState(() {
                          isSearch = false;
                        });
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.white,
                        size: 19,
                      )),
                  flexibleSpace: Container(
                    decoration: const BoxDecoration(
                        gradient: AppColor.linearGradientPrimary),
                  ),
                  title: TextField(
                    cursorColor: AppColor.pinkColor,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w100,
                          fontSize: 19),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                )
              : AppBar(
                  leading: Builder(builder: (context) {
                    return IconButton(
                      icon: Image.asset(
                        "assets/icons/ic_side_nav.png",
                        height: 35,
                        width: 35,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  }),
                  title: Transform.translate(
                    offset: Offset(0, -3.h),
                    child: Text(
                      indexState == 0
                          ? "Home"
                          : indexState == 01
                              ? "Watchlist"
                              : indexState == 02
                                  ? "Account"
                                  : indexState == 03
                                      ? "Settings"
                                      : indexState == 4
                                          ? "TV Shows"
                                          : indexState == 5
                                              ? "Events"
                                              : indexState == 6
                                                  ? "Sports"
                                                  : indexState == 7
                                                      ? "Live TV & Radio"
                                                      : indexState == 8
                                                          ? "Dashboard"
                                                          : indexState == 9
                                                              ? "Privacy Policy"
                                                              : indexState == 10
                                                                  ? "About"
                                                                  : "Podcast",
                      style: const TextStyle(
                          color: Colors.white,
                          fontFamily: fontFamily,
                          fontSize: 20.3),
                    ),
                  ),
                  actions: [
                    IconButton(
                      icon: Image.asset(
                        "assets/icons/ic_search.png",
                        height: 35,
                        width: 35,
                      ),
                      onPressed: () {
                        setState(() {
                          isSearch = true;
                        });
                      },
                    ),
                    SizedBox(width: 5.w),
                  ],
                  flexibleSpace: Container(
                    decoration: const BoxDecoration(
                        gradient: AppColor.linearGradientPrimary),
                  ),
                ),
          body: pages[indexState],
        );
      },
    );
  }
}
