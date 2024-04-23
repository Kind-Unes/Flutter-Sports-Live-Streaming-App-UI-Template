import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_stream_clone/src/bloc/bottom_nav_bar_cubit.dart';
import 'package:video_stream_clone/src/components/custom_drawer.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';
import 'package:video_stream_clone/src/presentation/Home/home_page.dart';
import 'package:video_stream_clone/src/presentation/LiveTv%20&%20Radio/liveTv_and_radio.dart';
import 'package:video_stream_clone/src/presentation/Movies/movies_page.dart';
import 'package:video_stream_clone/src/presentation/account/account_page.dart';
import 'package:video_stream_clone/src/presentation/dashboard/dashboard_page.dart';
import 'package:video_stream_clone/src/presentation/my_watch%20_ist/my_watch_list_page.dart';
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
    const HomePage(),
    const MyWatchList(),
    const AccountPage(),
    const SettingsPage(),
    const TvShowsPage(),
    const TvEventsPage(),
    const SportsPage(),
    const LiveTvAndRadioPage(),
    const DashBoardPage(),
    const Placeholder(),
    const Placeholder(),
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
                                                      : "Not Found",
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
                  isCurrent: indexState == 03,
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

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        const SwitchTile(),
        SettingsTile(
          title: "About",
          onTap: () {},
        ),
        SettingsTile(
          title: "Privacy Policy",
          onTap: () {},
        ),
        SettingsTile(
          title: "Rate App",
          onTap: () {},
        ),
        SettingsTile(
          title: "Share App",
          onTap: () {},
        ),
        SettingsTile(
          title: "More App",
          onTap: () {},
        ),
      ],
    );
  }
}

class SwitchTile extends StatefulWidget {
  const SwitchTile({
    super.key,
  });

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Color.fromARGB(255, 57, 57, 57),
        ),
        InkWell(
          onTap: () => setState(() => isActive = !isActive),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: Row(
              children: [
                Text(
                  "Enable Push Notification",
                  style: TextStyle(
                      fontSize: 17.h,
                      color: Colors.white,
                      fontFamily: fontFamily),
                ),
                const Spacer(),
                Transform.scale(
                    scale: 0.8,
                    child: Switch(
                        activeColor: AppColor.pinkColor,
                        value: isActive,
                        onChanged: (value) {
                          setState(() {
                            isActive = value;
                          });
                        })),
              ],
            ),
          ),
        ),
        const Divider(
          color: Color.fromARGB(255, 57, 57, 57),
        ),
      ],
    );
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({super.key, required this.title, required this.onTap});

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 17.h,
                        color: Colors.white,
                        fontFamily: fontFamily),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Color.fromARGB(255, 57, 57, 57),
        ),
      ],
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
