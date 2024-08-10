import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/utils/colors.dart';

class ArenaINOutButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  ArenaINOutButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.28,
        height: 37,
        decoration: ShapeDecoration(
          color: isSelected ? Colors.black : Colors.white, // Background color
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFE9EAF0)), // Border color
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Center(
          child:
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? AappColor.white :AappColor.mid_grey, // Text color
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