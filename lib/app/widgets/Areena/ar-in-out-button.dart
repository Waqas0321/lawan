import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/utils/colors.dart';

class ArenaINOutButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;
  final Color borderColor;
  final double height;
  ArenaINOutButton({
    required this.text,
    required this.isSelected,
    this.height=37,
    required this.onPressed,
    this.borderColor=const Color(0xFFE9EAF0)
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // width: MediaQuery.of(context).size.width * 0.28,
        height: height,
        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
        decoration: ShapeDecoration(
          color: isSelected ? Colors.black :null, // Background color
          shape: RoundedRectangleBorder(
            side: !isSelected?BorderSide(width: 1, color:borderColor):BorderSide.none, // Border color
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Center(
          child:
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? AappColor.white :AappColor.dark_grey, // Text color
              fontSize: 14,
              fontFamily: 'Lufga',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}