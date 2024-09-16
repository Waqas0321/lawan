import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/colors.dart';
import '../text_widget.dart';

class CustomCircularButton extends StatelessWidget {
  const CustomCircularButton({
    super.key,
    this.text = '',
    required this.onPressFun,
    required this.isSelected,
    this.isImage = false,
    this.imagePath = '',
    this.height = 44,
    this.width = 44,
   this.imageheight=16,
    this.imagewidth=16,
    this.vertical=8,
    this.horizontal=12,
  });

  final String text;
  final GestureTapCallback onPressFun;
  final bool isSelected;
  final bool isImage;
  final String imagePath;
  final double height;
  final double width;
  final double imageheight;
  final double imagewidth;
  final double horizontal;
  final double vertical;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressFun,
      child: Container(
        width: width,
        height: height,
        padding:  EdgeInsets.symmetric(horizontal:horizontal, vertical: vertical),
        decoration: ShapeDecoration(
          color: isSelected ? Colors.black : Colors.transparent,
          shape: RoundedRectangleBorder(
            side:isSelected
                ? BorderSide(width: 1, color: Color(0xFFDEE1E2))
                : BorderSide(width: 1, color: Color(0xFFE0E0E0)),
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Center(
          child: isImage
              ? SvgPicture.asset(
                  imagePath,
                  height: imageheight,
                  width: imageheight,
                  color: Color(0xff545F71),
                )
              : TextWidget(
                  title: text,
                  textAlign: TextAlign.center,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  textColor:
                      isSelected ? AppColors.white : AppColors.textSecondColor,
                ),
        ),
      ),
    );
  }
}
