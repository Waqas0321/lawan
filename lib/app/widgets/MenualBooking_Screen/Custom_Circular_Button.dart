import 'package:flutter/material.dart';
import 'package:lawan/app/utils/colors.dart';
import '../text_widget.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton({
    super.key, required this.text, required this.onPressFun, required this.isSelected,
  });
  final String text;
  final GestureTapCallback onPressFun;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressFun,
      child: Container(
        width: 44,
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: ShapeDecoration(
          color: isSelected? Colors.black:Colors.transparent,
          shape: RoundedRectangleBorder(
            side:isSelected? BorderSide(width: 1, color: Color(0xFFDEE1E2)):BorderSide(width: 0, color: Color(0xFFDEE1E2)),
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Center(
          child: TextWidget(
            title: text,
            textAlign: TextAlign.center,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            textColor: isSelected? AppColors.white:AppColors.textSecondColor,
          ),
        ),
      ),
    );
  }
}