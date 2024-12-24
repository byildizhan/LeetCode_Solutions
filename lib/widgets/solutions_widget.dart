import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leet/core/router/route_manager.dart';
import 'package:leet/widgets/text_style_generator.dart';

class SolutionsWidget extends StatelessWidget {
  final String route;
  final String title;
  const SolutionsWidget({super.key, required this.route, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => router.push(route),
      child: Container(
        alignment: Alignment.center,
        width: .4.sw,
        height: 100.h,
        color: Theme.of(context).colorScheme.secondary,
        child: TextStyleGenerator(
            text: title,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            alignment: TextAlign.center,
            color: Theme.of(context).colorScheme.onSecondary),
      ),
    );
  }
}
