import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularContainer extends StatelessWidget {
  final String svgPath;
  final Color borderColor;
  final double borderWidth;
  final Color? bgColor;
  final double size;
  final VoidCallback onTap;
  final double padding;
  final Color? svgColor;
  const CircularContainer({
    super.key,
    required this.svgPath,
    this.borderColor = Colors.white,
    this.borderWidth = 2.0,
    this.size = 100.0,
    this.svgColor,
    required this.onTap,
    this.bgColor,
    this.padding = 18.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle, // Circular shape
          border: Border.all(
            color: borderColor, // Custom border color
            width: borderWidth,
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            svgPath,
            colorFilter: svgColor != null
                ? ColorFilter.mode(svgColor!, BlendMode.srcIn)
                : null, // Apply the color filter only if svgColor is not null
            fit: BoxFit
                .cover, // Choose the appropriate fit option for your use case
          ),
        ),
      ),
    );
  }
}
