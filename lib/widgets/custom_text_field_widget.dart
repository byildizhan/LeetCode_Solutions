import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leet/core/constants/app_color.dart';
import 'package:leet/widgets/text_style_generator.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatefulWidget {
  final Color backgroundColor;
  final Color focusedBorderColor;
  final Color disabledBorderColor;
  final Color enabledBorderColor;
  final bool? enabled;
  final String? labelText;
  final Widget? customLabel;
  final TextEditingController? textEditingController;
  final TextInputAction? textInputAction;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Function? onEditingComplete;
  final int? maxLength;
  final int? maxLines;
  final double width;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final FocusNode? focusNode;
  final String? title;
  final bool isObscure;
  final Color hintColor;
  final EdgeInsetsGeometry? contentPadding;
  final FontWeight? labelTextWeight;
  final double? fontSize;
  final double focusedBorderRadius;
  final double focusedErrorBorderRadius;
  final double disabledBorderRadius;
  final double enabledBorderRadius;
  final double? height;
  final double hinTextFontSize;
  final Widget? prefixIcon;

  const TextFieldWidget({
    super.key,
    this.hintText,
    this.customLabel,
    this.hinTextFontSize = 14,
    this.labelText,
    this.onEditingComplete,
    this.textInputAction,
    this.height,
    this.validator,
    this.enabled = true,
    this.keyboardType,
    this.maxLength,
    this.isObscure = false,
    this.onChanged,
    this.backgroundColor = AppColor.generalWhite,
    this.focusedBorderColor = AppColor.borderGreyColor,
    this.disabledBorderColor = AppColor.borderGreyColor,
    this.enabledBorderColor = AppColor.borderGreyColor,
    this.focusNode,
    this.suffixIcon,
    this.inputFormatters,
    this.prefixIcon,
    this.maxLines = 1,
    this.width = .85,
    this.textEditingController,
    this.title,
    this.hintColor = AppColor.borderGreyColor,
    this.contentPadding,
    this.labelTextWeight,
    this.fontSize,
    this.focusedBorderRadius = 8,
    this.disabledBorderRadius = 8,
    this.enabledBorderRadius = 8,
    this.focusedErrorBorderRadius = 8,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final fieldKey = GlobalKey<FormFieldState>();

  bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          TextStyleGenerator(
            text: widget.title,
            color: AppColor.generalWhite,
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
          6.h.verticalSpace,
        ],
        Container(
          height: widget.height?.h,
          decoration: BoxDecoration(
            color: widget.backgroundColor,
          ),
          width: widget.width.sw,
          child: TextFormField(
            enabled: widget.enabled,
            key: fieldKey,
            maxLines: widget.maxLines,
            focusNode: widget.focusNode,
            onChanged: widget.onChanged,
            inputFormatters: widget.inputFormatters,
            textInputAction: widget.textInputAction,
            keyboardType: widget.keyboardType,
            maxLength: widget.maxLength,
            obscureText: widget.isObscure,
            controller: widget.textEditingController,
            onEditingComplete: () {
              fieldKey.currentState!.validate();
              //save string
              if (widget.onEditingComplete == null) {
                if (widget.textInputAction == TextInputAction.next) {
                  FocusScope.of(context).nextFocus();
                }
              } else {
                widget.onEditingComplete!();
              }
            },
            style: TextStyle(
              color: AppColor.generalBlack,
              fontWeight: FontWeight.w700,
              fontSize: widget.fontSize ?? 15.sp,
            ),
            validator: widget.validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            cursorColor: AppColor.generalWhite,
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              counterText: '',
              contentPadding: widget.contentPadding ??
                  EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
              errorStyle: GoogleFonts.quicksand(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.generalRed,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 3,
                  color: AppColor.generalRed,
                ),
                borderRadius:
                    BorderRadius.circular(widget.focusedErrorBorderRadius.sp),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.w,
                  color: AppColor.generalRed,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.sp),
                ),
              ),
              floatingLabelStyle: GoogleFonts.inter(
                color: widget.hintColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
              label: widget.customLabel,
              labelText: widget.customLabel == null ? widget.labelText : null,
              labelStyle: GoogleFonts.inter(
                color: widget.hintColor,
                fontSize: 14.sp,
                fontWeight: widget.labelTextWeight ?? FontWeight.w600,
              ),
              hintText: widget.hintText,
              hintStyle: GoogleFonts.inter(
                color: AppColor.borderGreyColor,
                fontWeight: FontWeight.w400,
                fontSize: widget.hinTextFontSize.sp,
              ),
              suffixIcon: widget.suffixIcon,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.sp,
                  color: AppColor.borderGreyColor,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(1.sp),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.sp,
                  color: widget.enabledBorderColor,
                ),
                borderRadius:
                    BorderRadius.circular(widget.enabledBorderRadius.sp),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.sp,
                  color: widget.disabledBorderColor,
                ),
                borderRadius:
                    BorderRadius.circular(widget.disabledBorderRadius.sp),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.sp,
                  color: widget.focusedBorderColor,
                ),
                borderRadius:
                    BorderRadius.circular(widget.focusedBorderRadius.sp),
              ),
              filled: true,
              fillColor: AppColor.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
