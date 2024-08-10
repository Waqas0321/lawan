import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAreenaButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color borderColor;
  final VoidCallback onTap;
  final Color textColor;
  final double width;
  final double height;

  CustomAreenaButton({
    required this.text,
    required this.color,
    required this.borderColor,
    required this.textColor,
    required this.onTap,
    this.width = 164.50, // Default value if not provided
    this.height = 49,   // Default value if not provided
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
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontFamily: 'Lufga',
              fontWeight: FontWeight.w500,
              height: 0.11,
            ),
          ),
        ),
      ),
    );
  }
}
