import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/core/app_color.dart';
import 'package:video_stream_clone/src/core/app_const.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';

class SubPageCustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const SubPageCustomAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(builder: (context) {
        return IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            context.pop();
          },
        );
      }),
      title: Transform.translate(
        offset: Offset(0, -3.h),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontFamily: fontFamily, fontSize: 20.3),
        ),
      ),
      flexibleSpace: Container(
        decoration:
            const BoxDecoration(gradient: AppColor.linearGradientPrimary),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55.h);
}
