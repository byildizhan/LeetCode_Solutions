import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leet/core/constants/app_color.dart';
import 'package:leet/view_model/palindrome_view_model.dart';
import 'package:leet/widgets/app_bar_widget.dart';
import 'package:leet/widgets/app_button.dart';
import 'package:leet/widgets/custom_text_field_widget.dart';
import 'package:leet/widgets/text_style_generator.dart';
import 'package:provider/provider.dart';

class PalindromeView extends StatelessWidget {
  PalindromeView({super.key});

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const AppBarWidget(title: 'Palindrome'),
      ),
      body: Consumer<PalindromeViewModel>(
        builder: (context, palindromeViewModel, child) => SizedBox(
          width: 1.sw,
          child: GestureDetector(
            onTap: () => focusNode.unfocus(),
            child: Container(
              color: AppColor.generalWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  200.verticalSpace,
                  TextStyleGenerator(
                    text: palindromeViewModel.isPalindromeText,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  10.verticalSpace,
                  TextFieldWidget(
                    focusNode: focusNode,
                    textEditingController:
                        palindromeViewModel.textEditingController,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]')),
                    ],
                  ),
                  10.verticalSpace,
                  AppButton(
                    text: 'Check',
                    onTap: () => {
                      palindromeViewModel.checkIsPalindrome(),
                      focusNode.unfocus()
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
