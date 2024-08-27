import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/images.dart';
class CustomUserContainer extends StatelessWidget {
  const CustomUserContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1, // Border width
            color: Colors.transparent, // Set to transparent to show gradient
          ),
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.transparent,
              spreadRadius: 5,
              blurRadius: 5,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0C1B22), // Start color
              Color(0x9D44D8BE), // End color
            ],
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Center(
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black,
              child: SvgPicture.asset(
                Images.user_plus, // Replace with your SVG asset path
                height: 12,
                width: 12,
                color: Colors.white,// Adjust the fit to your needs
              ),
            ),
          ),
        )

    );
  }
}