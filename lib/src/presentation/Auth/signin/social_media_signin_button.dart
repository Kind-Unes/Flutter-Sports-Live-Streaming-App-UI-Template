
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_stream_clone/src/core/app_const.dart';

class SignInSocialButton extends StatelessWidget {
  const SignInSocialButton({
    super.key,
    required this.mainColor,
    required this.subColor,
    required this.text,
    required this.onTap,
    required this.icon,
  });

  final Color mainColor;
  final Color subColor;
  final String text;
  final Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 50.h,
          child: Row(
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  //
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                  ),
                  child: Center(
                    child: FaIcon(
                      icon,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 26,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            topRight: Radius.circular(5)),
                        color: subColor),
                    child: Center(
                      child: Text(
                        text,
                        style: const TextStyle(
                            fontSize: 16.5,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: fontFamily),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
