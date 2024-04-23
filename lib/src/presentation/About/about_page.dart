import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            children: [
              const ApplicationAboutTile(),
              const AboutInfoTile(
                  title: "Version", text: "1.0.0", icon: Icons.info_outline),
              const AboutInfoTile(
                  title: "Company", text: "TKDS SPORTS", icon: Icons.person),
              const AboutInfoTile(
                  title: "Email",
                  text: "TKDS@example.com",
                  icon: Icons.mail_rounded),
              const AboutInfoTile(
                  title: "Website",
                  text: "TKDS.example.com",
                  icon: Icons.language),
              const AboutInfoTile(
                  title: "Contact", text: "+213 558466741", icon: Icons.phone),

              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(30, 32, 44, 1),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "About",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: fontFamily,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Text(
                      "TKDS Sports app is a sports app that provides you with the latest sports news, live scores, and updates. It is a one-stop destination for all sports lovers.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        fontFamily: fontFamily,
                      ),
                    ),
                  ],
                ),
              ),

              // about
            ],
          )),
    );
  }
}

class ApplicationAboutTile extends StatelessWidget {
  const ApplicationAboutTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.h,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(30, 32, 44, 1),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 55.h,
            width: 55.w,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(2300),
                child: Image.asset(
                  "assets/icons/ic_tkds.jpg",
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(
            width: 20.w,
          ),
          const Text(
            "TKDS Sporst app",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}

class AboutInfoTile extends StatelessWidget {
  const AboutInfoTile({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
  });

  final String title;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 85.h,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(30, 32, 44, 1),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 55.h,
              width: 55.w,
              child: Icon(icon, color: Colors.white, size: 40),
            ),
            Container(
              width: 1,
              height: 50.h,
              color: Colors.grey.withOpacity(0.5),
              margin: EdgeInsets.only(right: 10.h),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: fontFamily,
                  ),
                ),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    fontFamily: fontFamily,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
