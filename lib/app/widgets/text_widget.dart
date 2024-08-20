import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final bool showUnderline;
  final Color underLineColor;
  final TextAlign textAlign;
  final TextOverflow? textOverflow;
  final double minFontSize;
  final double maxFontSize;
  const TextWidget({
    super.key,
    required this.title,
    this.textColor = AppColors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.showUnderline = false,
    this.textAlign = TextAlign.center,
    this.underLineColor = AppColors.greenColor,
    this.textOverflow,
    this.minFontSize = 7,
    this.maxFontSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title.tr,
      textAlign: textAlign,
      overflow: textOverflow,
      softWrap: true,
      minFontSize: minFontSize,
      maxFontSize: maxFontSize,
      style: GoogleFonts.poppins(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decorationColor: underLineColor,
        decoration:
            showUnderline ? TextDecoration.underline : TextDecoration.none,
      ),
    );
  }
}
