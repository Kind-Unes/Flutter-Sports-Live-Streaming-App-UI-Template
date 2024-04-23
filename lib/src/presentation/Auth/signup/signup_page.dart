import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/components/custom_button.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';
import 'package:video_stream_clone/src/presentation/privacy_policy/helper/router.dart';
import 'package:video_stream_clone/src/presentation/Auth/signin/signin_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isRememberMe = true;
  bool isAcceptPrivicay = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Transform.scale(
                  scaleY: 0.9,
                  child: TextField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Name',

                      hintStyle: const TextStyle(
                          color: Colors.white,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w100,
                          fontSize: 17),

                      prefixIcon: Transform.scale(
                          scale: 0.7,
                          child: Image.asset("assets/icons/ic_user.png")),

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
                Transform.scale(
                  scaleY: 0.9,
                  child: TextField(
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
                Transform.scale(
                  scaleY: 0.9,
                  child: TextField(
                    obscureText: true,
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
                          child: Image.asset("assets/icons/ic_password.png")),

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
                Transform.scale(
                  scaleY: 0.9,
                  child: TextField(
                    obscureText: true,
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Confirm Password',

                      hintStyle: const TextStyle(
                          color: Colors.white,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w100,
                          fontSize: 17),

                      prefixIcon: Transform.scale(
                          scale: 0.7,
                          child: Image.asset("assets/icons/ic_password.png")),

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
                  height: 15.h,
                ),
                Transform.translate(
                  offset: Offset(-8.w, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isAcceptPrivicay,

                        onChanged: (newValue) {
                          // Update the state when the checkbox is toggled
                          setState(() {
                            isAcceptPrivicay = newValue!;
                          });
                        },
                        side: MaterialStateBorderSide.resolveWith(
                          (states) =>
                              const BorderSide(width: 2.0, color: Colors.white),
                        ),
                        checkColor: Colors.black,
                        activeColor:
                            Colors.white, // Color of the checkbox when checked
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontFamily: fontFamily,
                              fontSize: 15.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.white, // Default text color
                            ),
                            children: [
                              const TextSpan(
                                text: 'By Signing in you accept ',
                              ),
                              TextSpan(
                                text: 'Terms',
                                style: const TextStyle(
                                  color: AppColor.pinkColor,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Handle Terms click
                                  },
                              ),
                              const TextSpan(
                                text: ' and ',
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: const TextStyle(
                                  color: Colors.pink,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Handle Privacy Policy click
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomPrimaryButton(
                  text: "REGISTER",
                  onTap: () {},
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: fontFamily,
                        fontSize: 13.3,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, CustomRouter(widget: const SignInPage()));
                      },
                      child: ShaderMask(
                        shaderCallback: (rect) {
                          return AppColor.linearGradientPrimary
                              .createShader(rect);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: fontFamily,
                            fontSize: 16.5,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Container(
                    width: context.width / 3.5,
                    height: 3.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        gradient: AppColor.linearGradientPrimary),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
