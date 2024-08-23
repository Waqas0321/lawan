import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import '../text_widget.dart';
class HourContainer extends StatelessWidget {
  const HourContainer({
    super.key, required this.text, required this.onPressFun,
    this.isSelected = false,
  });
  final String text;
  final bool isSelected;
  final GestureTapCallback onPressFun;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressFun,
      child: Container(
        width: Get.width * 0.15,
        height: Get.height * 0.05,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: ShapeDecoration(
          color: isSelected? AppColors.black:Colors.transparent,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: isSelected? AppColors.black: AppColors.hRBTNBorder),
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Center(
          child: TextWidget(
            title:  text,
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w400,
            textColor: isSelected? AppColors.white: AppColors.textSecondColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}