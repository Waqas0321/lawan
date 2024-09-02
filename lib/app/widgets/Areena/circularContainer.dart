import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    required this.color,
    required this.image,
    this.textColor = Colors.black,
    this.imageWidth = 16.0,
    this.imageHeight = 16.0,
    this.height = 60.0,
    this.width = 63.0,
  });

  final Color color;
  final String image;
  final Color textColor;
  final double imageWidth;
  final double imageHeight;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: color,
        shape: CircleBorder(),
      ),
      child: Center(
        child: SvgPicture.asset(
          image,
          height: imageHeight,
          width: imageWidth,
        ),
      ),
    );
  }
}
