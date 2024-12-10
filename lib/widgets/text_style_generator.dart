import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leet/core/constants/app_color.dart';

class TextStyleGenerator extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxLine;
  final TextOverflow? overflow;
  final TextAlign? alignment;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;
  final TextDecorationStyle? decorationStyle;
  final double? decorationThickness;
  final Color? decorationColor;
  final Paint? foreground;
  final double? letterSpacing;
  final double? height;
  final Function font;

  const TextStyleGenerator({
    super.key,
    required this.text,
    this.color = AppColor.generalBlack,
    this.fontSize,
    this.fontWeight,
    this.maxLine,
    this.overflow,
    this.alignment,
    this.fontStyle,
    this.decoration,
    this.decorationStyle,
    this.decorationThickness,
    this.decorationColor,
    this.foreground,
    this.letterSpacing,
    this.height,
    this.font = GoogleFonts.interTight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      maxLines: maxLine,
      overflow: overflow,
      textAlign: alignment,
      style: font(
        letterSpacing: letterSpacing,
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        decoration: decoration,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        decorationColor: decorationColor,
        foreground: foreground,
        height: height,
      ),
    );
  }
}
