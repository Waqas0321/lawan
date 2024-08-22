import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularContainer extends StatelessWidget {
  final String svgPath;
  final Color borderColor;
  final double borderWidth;
  final Color? bgColor;
  final double size;
  final VoidCallback onTap;

  const CircularContainer({
    super.key,
    required this.svgPath,
    this.borderColor = Colors.white,
    this.borderWidth = 2.0,
    this.size = 100.0,
    required this.onTap,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle, // Circular shape
          border: Border.all(
            color: borderColor, // Custom border color
            width: borderWidth,
          ),
        ),
        child: Center(
          child: ClipOval(
            child: SvgPicture.asset(
              svgPath,
              fit: BoxFit.cover, // Fit the SVG image
            ),
          ),
        ),
      ),
    );
  }
}
