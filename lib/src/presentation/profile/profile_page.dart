import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/components/custom_button.dart';
import 'package:video_stream_clone/src/components/sub_page_app_bar.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: const SubPageCustomAppBar(
        title: 'Profile',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              offset: Offset(0, -50.h),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name :",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Transform.scale(
                      scaleY: 0.9,
                      child: TextField(
                        controller: nameController,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Full name',

                          hintStyle: const TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.w100,
                              fontSize: 17),

                          prefixIcon: Transform.scale(
                              scale: 0.7,
                              child:
                                  Image.asset("assets/icons/ic_profile.png")),

                          filled: true,
                          fillColor: const Color.fromRGBO(
                              54, 61, 80, 1), // Blue Grey background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Email :",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Transform.scale(
                      scaleY: 0.9,
                      child: TextField(
                        controller: emailController,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Email',

                          hintStyle: const TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.w100,
                              fontSize: 17),

                          prefixIcon: Transform.scale(
                              scale: 0.7,
                              child: Image.asset("assets/icons/ic_email.png")),

                          filled: true,
                          fillColor: const Color.fromRGBO(
                              54, 61, 80, 1), // Blue Grey background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Password :",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Transform.scale(
                      scaleY: 0.9,
                      child: TextField(
                        controller: passwordController,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Password',

                          hintStyle: const TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.w100,
                              fontSize: 17),

                          prefixIcon: Transform.scale(
                              scale: 0.7,
                              child:
                                  Image.asset("assets/icons/ic_password.png")),

                          filled: true,
                          fillColor: const Color.fromRGBO(
                              54, 61, 80, 1), // Blue Grey background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Phone :",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Transform.scale(
                      scaleY: 0.9,
                      child: TextField(
                        controller: phoneController,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Phone Number',

                          hintStyle: const TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.w100,
                              fontSize: 17),

                          prefixIcon: Transform.scale(
                              scale: 0.7,
                              child: Image.asset("assets/icons/ic_call.png")),

                          filled: true,
                          fillColor: const Color.fromRGBO(
                              54, 61, 80, 1), // Blue Grey background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Address :",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Transform.scale(
                      scaleY: 0.9,
                      child: TextField(
                        controller: addressController,
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Address',

                          hintStyle: const TextStyle(
                              color: Colors.white,
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.w100,
                              fontSize: 17),

                          prefixIcon: Transform.scale(
                              scale: 0.7,
                              child:
                                  Image.asset("assets/icons/ic_version.png")),

                          filled: true,
                          fillColor: const Color.fromRGBO(
                              54, 61, 80, 1), // Blue Grey background color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70.h,
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 5.h),
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: CustomPrimaryButton(
                onTap: () {},
                text: "SAVE PROFILE",
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
