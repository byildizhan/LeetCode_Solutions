import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leet/core/constants/app_strings.dart';
import 'package:leet/view_model/main_page_view_model.dart';
import 'package:leet/widgets/app_bar_widget.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: const AppBarWidget(title: AppStrings.mainPageTitle)),
      body: Consumer<MainPageViewModel>(
        builder: (context, viewModel, child) => Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: .05.sw),
          child: Wrap(
            spacing: .1.sw,
            runSpacing: 20.h,
            children: viewModel.solutions,
          ),
        ),
      ),
    );
  }
}
