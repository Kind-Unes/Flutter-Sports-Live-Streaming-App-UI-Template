import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_stream_clone/src/bloc/bottom_nav_bar_cubit.dart';
import 'package:video_stream_clone/src/bloc/drawer_cubit.dart';
import 'package:video_stream_clone/src/core/app_extension.dart';
import 'package:video_stream_clone/main_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData(
      useMaterial3: true,
    );
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Make status bar transparent
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent));
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DrawerCubit(),
        ),
        BlocProvider(
          create: (context) => BottomNavBarCubit(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: Size(context.width, context.height),
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: themeData,
              home: const MainPage())),
    );
  }
}
