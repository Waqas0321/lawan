import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';

/// A customizable button widget that includes text and optional icon and border.
class CustomAreenaButton extends StatelessWidget {
  final String text; // The text displayed on the button
  final Color? color; // The background color of the button
  final Color borderColor; // The color of the button's border
  final VoidCallback
      onTap; // The function that gets called when the button is tapped
  final Color textColor; // The color of the text on the button
  final double width; // The width of the button (default: 164.50)
  final double height; // The height of the button (default: 49)
  final bool showIcon; // If true, icon will be shown (default: true)
  final String
      imagePath; // The path to the SVG icon (default: Images.user_plus)
  final bool showBorder; // If true, border will be shown (default: true)
  final Color imageColor;

  /// Constructor for the [CustomAreenaButton].
  CustomAreenaButton({
    required this.text, // Text to display inside the button
    required this.color, // Background color of the button
    required this.borderColor, // Border color of the button
    required this.textColor, // Text color inside the button
    required this.onTap, // Function to execute on button tap
    this.width = 164.50, // Default width of the button
    this.height = 49, // Default height of the button
    this.showIcon = false, // Whether to show the icon (default: true)
    this.imagePath = Images.user_plus, // Default icon path
    this.showBorder = true,
    this.imageColor =
        AppColors.dark_grey, // Whether to show the border (default: true)
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width, // Set the button width
        height: height, // Set the button height
        padding: const EdgeInsets.symmetric(
            horizontal: 24, vertical: 14), // Padding inside the button
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: showBorder
                ? BorderSide(width: 1, color: borderColor)
                : BorderSide.none, // Conditional border
            borderRadius: BorderRadius.circular(80), // Button border radius
          ),
          color: color, // Button background color
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .center, // Center the content inside the button
            children: [
              if (showIcon) // Only show the icon if `showIcon` is true
                SvgPicture.asset(
                  imagePath,
                  height: 16,
                  width: 16,
                  color: imageColor,
                ),
              if (showIcon)
                SizedBox(width: 12), // Add spacing between icon and text
              Text(
                text,
                style: TextStyle(
                  color: textColor, // Set the text color
                  fontSize: 14, // Set the text size
                  fontFamily: 'Lufga', // Set the font family
                  fontWeight: FontWeight.w500, // Set the font weight
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
