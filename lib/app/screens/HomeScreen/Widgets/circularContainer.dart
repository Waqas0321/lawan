import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    required this.color,
    required this.image,
    required this.text,
    this.textColor = Colors.black,
    this.imageWidth = 16.0,
    this.imageHeight = 16.0,
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
      height: 60,
      width: 60,
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(400)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
              height: imageHeight,
              width: imageWidth,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 10, fontWeight: FontWeight.w400, color: textColor),
            )
          ],
        ),
      ),
    );
  }
}
