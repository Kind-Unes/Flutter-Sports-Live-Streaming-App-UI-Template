import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/bloc/bottom_nav_bar_cubit.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';

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
          onTap: () {
            context.read<BottomNavBarCubit>().updateIndex(10);

          },
        ),
        SettingsTile(
          title: "Privacy Policy",
          onTap: () {
            context.read<BottomNavBarCubit>().updateIndex(9);
          },
        ),
        SettingsTile(
          title: "Rate App",
          onTap: () {
            // launch("https://play.google.com/store/apps/details?id=com.example.video_stream_clone")
          },
        ),
        SettingsTile(
          title: "Share App",
          onTap: () {
            // Share.share("https://play.google.com/store/apps/details?id=com.example.video_stream_clone")
          },
        ),
        SettingsTile(
          title: "More App",
          onTap: () 
          {
            // launch("https://play.google.com/store/apps/developer?id=App+Developer")
          },
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
