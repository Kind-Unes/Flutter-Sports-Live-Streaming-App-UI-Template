import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/components/small_button.dart';
import 'package:video_stream_clone/src/components/sub_page_app_bar.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: SubPageCustomAppBar(title: "DashBoard"),
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [

                  DashWidget(
                    title: "User Profile",
                    content: FirstDashWidgetContent(),
                  ),
                  DashWidget(
                    title: "My Subscription",
                    content: SecondDashWidgetContent(),
                  ),
                  DashWidget(
                    title: "Last inovice",
                    content: ThirdDashWidgetContent(),
                  ),
                ],
              ))),
    );
  }
}

class DashWidget extends StatelessWidget {
  const DashWidget({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 200.h,
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
                      color: const Color.fromRGBO(40, 44, 56, 1),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 3.5,
                            spreadRadius: 0.1),
                      ],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  child: Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: fontFamily),
                    ),
                  ),
                ),
                content,
                // wave
              ],
            ))
      ],
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
          // Widget
          Center(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
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
                  const Spacer(),
                  CustomSmallButton(
                    text: "Edit",
                    onTap: () {},
                    height: 38.h,
                    width: 70.w,
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

class ThirdDashWidgetContent extends StatelessWidget {
  const ThirdDashWidgetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          // Widget
          Center(
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Row(
                      children: [
                        const Text("Date: ",
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
                    const Spacer(),
                    Row(
                      children: [
                        const Text("Plan:  ",
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
                    const Spacer(),
                    Row(
                      children: [
                        const Text("Amount:  ",
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
                    const Spacer(),
                  ],
                ),
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

class SecondDashWidgetContent extends StatelessWidget {
  const SecondDashWidgetContent({
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
