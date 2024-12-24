import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leet/core/constants/app_strings.dart';
import 'package:leet/core/router/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: AppStrings.mainPageTitle,
        theme: ThemeData(
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF6200EE),
            onPrimary: Color(0xFFFFFFFF),
            secondary: Color(0xFF03DAC6),
            onSecondary: Color(0xFF000000),
            error: Color(0xFFB00020),
            onError: Color(0xFFFFFFFF),
            surface: Color(0xFFFFFFFF),
            onSurface: Color(0xFF000000),
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
        routerConfig: router,
      ),
    );
  }
}
