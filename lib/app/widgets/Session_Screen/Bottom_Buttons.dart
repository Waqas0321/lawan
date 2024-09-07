import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    super.key,
    required this.image,
    this.isExpanded = false,
    this.height = 49,
    this.width = 48,
    this.text  ='Line-Up',
    required this.onTap,
    this.backgroundColor = Colors.transparent,
    this.iconColor = Colors.black45
  });
  final String image;
  final String text;
  final double height;
  final double width;
  final bool isExpanded;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: ShapeDecoration(
          color: isExpanded ? Colors.black : backgroundColor,
          shape: RoundedRectangleBorder(
            side: isExpanded
                ? BorderSide()
                : BorderSide(width: 1, color: Color(0xFFDEE1E2)),
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              color: isExpanded ? Color(0xffACB4C0) : iconColor,
              height: 16,
              width: 16,
            ),
            isExpanded
                ? SizedBox(
                    width: 8,
                  )
                : SizedBox(
                    width: 0,
                  ),
            isExpanded
                ? Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none),
                  )
                : SizedBox(
                    width: 0,
                  )
          ],
        )),
      ),
    );
  }
}
