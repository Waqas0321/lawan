import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    required this.color,
    required this.image,
    required this.text,
    this.textColor = Colors.black,
    this.imageWidth = 16.0,
    this.imageHeight = 16.0,
    this.padding=0.0,
    this.fontWeight=FontWeight.w400
  });

  final Color color;
  final String image;
  final String text;
  final Color textColor;
  final double imageWidth;
  final double imageHeight;
  final double padding;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(400)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(image,
              height: imageHeight,
              width: imageWidth,
            ),
            SizedBox(height:padding,),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color:textColor,
                fontSize: 12,
                fontFamily: 'Lufga',
                fontWeight:fontWeight,
                height: 0,
                letterSpacing: -0.24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
