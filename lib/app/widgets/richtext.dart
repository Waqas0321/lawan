import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class CustomRichText extends StatelessWidget {
  final String firstText, secondText;
  final VoidCallback press;
  double firstSize, secondSize;
  final FontWeight firstTextFontWeight, secondTextFontWeight;
  final Color secondTextColor, firstTextColor;
  CustomRichText(
      {super.key,
      required this.firstText,
      required this.secondText,
      required this.press,
      this.firstTextColor = AppColors.grey3,
      this.secondTextColor = AppColors.greenColor,
      this.firstSize = 12.0,
      this.secondSize = 12.0,
      this.firstTextFontWeight = FontWeight.bold,
      this.secondTextFontWeight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      text: firstText.tr,
      style: TextStyle(
          color: firstTextColor,
          fontSize: firstSize,
          fontWeight: firstTextFontWeight),
      children: <InlineSpan>[
        const WidgetSpan(
            alignment: PlaceholderAlignment.baseline,
            baseline: TextBaseline.alphabetic,
            child: SizedBox(width: 5.0)),
        TextSpan(
          text: secondText.tr,
          style: TextStyle(
              color: secondTextColor,
              fontSize: secondSize,
              fontWeight: secondTextFontWeight),
          recognizer: TapGestureRecognizer()..onTap = press,
        ),
      ],
    ));
  }
}
