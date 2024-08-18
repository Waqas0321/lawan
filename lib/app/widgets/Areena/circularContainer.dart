import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,

    required this.text,
    this.textColor = Colors.black,
    this.imageWidth = 16.0,
    this.imageHeight = 16.0, required this.color, required this.image,
  });

  final Color color;
  final String image;
  final String text;
  final Color textColor;
  final double imageWidth;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 63,
      height: 60,
      decoration: ShapeDecoration(
        color: color,
        shape: CircleBorder(),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
            image,
              height: imageHeight,
              width: imageWidth,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 12,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: -0.24,
              ))
          ],
        ),
      ),
    );
  }
}
