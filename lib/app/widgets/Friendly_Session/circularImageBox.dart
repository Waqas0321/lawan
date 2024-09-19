import 'package:flutter/material.dart';

class CircularImageBox extends StatelessWidget {
  const CircularImageBox({
    super.key,
    required this.imagePath,
    this.height = 44,
    this.width = 44,
  });
  final String imagePath;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CircleAvatar(

        backgroundImage: AssetImage(imagePath),
      ),
    );
  }
}