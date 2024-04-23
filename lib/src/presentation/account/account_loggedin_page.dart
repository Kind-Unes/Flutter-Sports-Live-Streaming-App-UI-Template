import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/components/custom_button.dart';
import 'package:video_stream_clone/src/components/small_button.dart';
import 'package:video_stream_clone/src/presentation/dashboard/dashboard_page.dart';

import '../../core/app_const.dart';

class AccountLogIn extends StatelessWidget {
  const AccountLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Transform.translate(
        offset: Offset(0, -20.h),
        child: SizedBox(
          width: double.infinity,
          child: Image.asset("assets/images/profile_bg.png"),
        ),
      ),
      Center(
        child: Transform.translate(
          offset: Offset(0, -70.h),
          child: Container(
            height: 95.h,
            width: 95.h,
            decoration: const BoxDecoration(
                color: Colors.amber, shape: BoxShape.circle),
          ),
        ),
      ),
      Transform.translate(
          offset: Offset(0, -60.h),
          child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("User Name",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: fontFamily)),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text("YourEmail@example.com ",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 16,
                            fontFamily: fontFamily)),
                    SizedBox(
                      height: 10.h,
                    ),
                    const DashWidget(
                        title: "Member Ship",
                        content: SecondDashWidgetContent()),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 12.h),
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(34, 36, 48, 1),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 160.h / 3.2,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(40, 44, 56, 1),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            blurRadius: 3.5,
                                            spreadRadius: 0.1),
                                      ],
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15))),
                                  child: const Center(
                                    child: Text(
                                      "Account",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontFamily: fontFamily),
                                    ),
                                  ),
                                ),
                                // wave
                                SizedBox(
                                  height: 20.h,
                                ),
                                button("DashBoard", () {}),
                                button("Edit Profile", () {}),
                                button("Delete Account", () {}),
                                logoutButton()
                              ],
                            ))
                      ],
                    ),
                  ]))),
    ]));
  }

  Padding logoutButton() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
      child: CustomPrimaryButton(text: "Log Out", onTap: () {}),
    );
  }

  Padding button(
    String title,
    Function() onTap,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h, right: 20.w, left: 20.w),
      child: Material(
        borderRadius: BorderRadius.circular(6),
        color: const Color.fromRGBO(40, 44, 56, 1),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(6),
          child: Container(
            height: 50.h,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  fontFamily: fontFamily),
            ),
          ),
        ),
      ),
    );
  }
}

class FirstDashWidgetContent extends StatelessWidget {
  const FirstDashWidgetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      const Text("Current Plan:  ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: fontFamily)),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color.fromRGBO(54, 61, 80, 1)),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
                          vertical: 3.h,
                        ),
                        child: const Text("N/A",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: fontFamily)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("Subscription expires on N/A",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 16,
                          fontFamily: fontFamily)),
                  const Spacer(),
                  CustomSmallButton(
                    text: "Upgrade Plan",
                    onTap: () {},
                    height: 38.h,
                    width: 130.w,
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              child: ClipRRect(
                child: Transform.scale(
                    scale: 1.3, child: Image.asset("assets/icons/wave_bg.png")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
