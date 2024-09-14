import 'package:flutter/material.dart';
import 'package:lawan/app/utils/colors.dart';

import '../../utils/images.dart';

// Define the custom widget
class CustomCard extends StatelessWidget {
  final String count;
  final String text;
  final Color textcolor;
  final FontWeight fontWeight;
  final Color countcolor;
  final Color? color;
  final bool showborder;
  CustomCard({
    required this.count,
    required this.text,
    this.color,
    required this.countcolor,
    required this.textcolor,
    required this.fontWeight,
    this.showborder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
              side: showborder
                  ? BorderSide(width: 0.7, color: AppColors.white)
                  : BorderSide.none,
              borderRadius: BorderRadius.circular(80),
            ),
          ),
          child: Center(
            child: SizedBox(
              width: 10,
              child: Text(
                count,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: countcolor,
                  fontSize: 16,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.018,
        ),
        Center(
          child: Text(
            text,
            style: TextStyle(
              color: textcolor,
              fontSize: 14,
              fontFamily: 'Lufga',
              fontWeight: fontWeight,
              height: 0.11,
            ),
          ),
        ),
      ],
    );
  }
}
