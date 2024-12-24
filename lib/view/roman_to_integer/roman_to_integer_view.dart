import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leet/core/constants/app_color.dart';
import 'package:leet/view_model/roman_to_integer_view_model.dart';
import 'package:leet/widgets/app_bar_widget.dart';
import 'package:leet/widgets/app_button.dart';
import 'package:leet/widgets/custom_text_field_widget.dart';
import 'package:leet/widgets/text_style_generator.dart';
import 'package:provider/provider.dart';

class RomanToIntegerView extends StatelessWidget {
  RomanToIntegerView({super.key});

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const AppBarWidget(title: 'Roman & Integer Converter'),
      ),
      body: Consumer<RomanToIntegerViewModel>(
        builder: (context, romanToINtegerViewModel, child) => SizedBox(
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
                    text: romanToINtegerViewModel.integerText,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  10.verticalSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
                    child: Row(
                      children: [
                        Icon(
                          Icons.warning,
                          size: 10.sp,
                        ),
                        TextStyleGenerator(
                          text: "Only Roman numerals",
                          fontSize: 8.sp,
                        )
                      ],
                    ),
                  ),
                  TextFieldWidget(
                    focusNode: focusNode,
                    textEditingController:
                        romanToINtegerViewModel.textEditingController,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                          RegExp(r'[IVXLCDMivxlcdm]')),
                    ],
                  ),
                  10.verticalSpace,
                  AppButton(
                    text: 'Convert',
                    onTap: () => {
                      romanToINtegerViewModel.romanToInteger(),
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
