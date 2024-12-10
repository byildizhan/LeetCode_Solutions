import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leet/core/constants/app_color.dart';
import 'package:leet/widgets/text_style_generator.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: AppColor.generalWhite, // Back button rengi
      ),
      title: TextStyleGenerator(
        text: title,
        fontSize: 25.sp,
        fontWeight: FontWeight.w700,
        color: AppColor.generalWhite,
      ),
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
