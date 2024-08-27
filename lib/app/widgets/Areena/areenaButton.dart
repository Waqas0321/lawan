import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';

class CustomAreenaButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color borderColor;
  final VoidCallback onTap;
  final Color textColor;
  final double width;
  final double height;
  final bool beforeIcon;
  final String imagePath;

  CustomAreenaButton({
    required this.text,
    required this.color,
    required this.borderColor,
    required this.textColor,
    required this.onTap,
    this.width = 164.50, // Default value if not provided
    this.height = 49,
    this.beforeIcon = false,
    this.imagePath = Images.user_plus,   // Default value if not provided
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: borderColor),
            borderRadius: BorderRadius.circular(80),
          ),
          color: color,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(imagePath,height: 16,width: 16,color: AppColors.dark_grey,),
              SizedBox(width: 12),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
