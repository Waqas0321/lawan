import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import '../text_widget.dart';

class CustomCircularButton extends StatelessWidget {
  CustomCircularButton({
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
     this.rightIcon = false,
     this.imageColor = AppColors.dark_grey,
    this.borderColorNoSelected = AppColors.hRBTNBorder,
    this.borderColorSelected = AppColors.Grey2,
    this.bacgroundColor = Colors.transparent

  });
  final bool rightIcon;
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
  final Color imageColor;
  final Color borderColorNoSelected;
  final Color borderColorSelected;
  final Color bacgroundColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressFun,
      child: Container(
        width: width,
        height: height,
        padding:  EdgeInsets.symmetric(horizontal:horizontal, vertical: vertical),
        decoration: ShapeDecoration(
          color: isSelected ? Colors.black : bacgroundColor,
          shape: RoundedRectangleBorder(
            side:isSelected
                ? BorderSide(width: 1, color: borderColorSelected)
                : BorderSide(width: 1, color: borderColorNoSelected),
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isImage
                  ? SvgPicture.asset(
                imagePath,
                height: imageheight,
                width: imageheight,
                color: imageColor,
              )
                  : TextWidget(
                title: text,
                textAlign: TextAlign.center,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textColor:
                isSelected ? AppColors.white : AppColors.textSecondColor,
              ),
              rightIcon?SizedBox(width: 4,):SizedBox(width: 0,),
              rightIcon? SvgPicture.asset(Images.arrow_sm_right,height: 16,width: 16,):SizedBox(width: 0,)
            ]
          ),
        ),
      ),
    );
  }
}
