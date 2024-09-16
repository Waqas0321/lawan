import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/colors.dart'; // Import your color definitions

/// A custom [TextFormField] widget with additional styling and optional validation.
///
/// [hintText] - The hint text to display inside the text field.
/// [icon] - The optional icon to display at the end of the text field.
/// [text] - Optional text to display next to the text field.
/// [color] - The color of the hint text.
/// [fontWeight] - The font weight of the hint text.
/// [validator] - The optional validator function to validate the text field input.
/// [iconPadding] - Padding for the icon, if provided.
/// [iconSize] - Size for the icon, if provided.
/// [iconColor] - Color for the icon, if provided.
/// [errorBorderColor] - Color of the border when there is an error.
/// [showIcon] - Boolean to determine if the icon or text should be displayed.
class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? icon;
  final String text;
  final FontWeight fontWeight;
  final Color color;
  final Color backgroundColor; // Background color of the text field
  final Color textColor; // Color of the text
  final FormFieldValidator<String>? validator; // Validator function
  final EdgeInsetsGeometry? iconPadding; // Padding for the icon
  final double? iconSize; // Size for the icon, if provided
  final Color? iconColor; // Color for the icon
  final Color errorBorderColor; // Color for the error border
  final bool
      showIcon;
  final VoidCallback onTap;// Boolean to determine if the icon or text should be displayed

  CustomTextFormField({
    required this.hintText, // The hint text to display inside the text field
    this.icon, // Optional icon to display at the end of the text field
    this.text = "", // Optional text to display next to the text field
    this.color = const Color(0xFFACB3C0), // Color of the hint text
    this.fontWeight = FontWeight.w500, // Font weight of the hint text
    this.backgroundColor = Colors.white, // Background color of the text field
    this.textColor = const Color(0xFF545F71), // Color of the text
    this.validator, // Validator function for input validation
    this.iconPadding, // Padding for the icon, if provided
    this.iconSize, // Size for the icon, if provided
    this.iconColor, // Color for the icon, if provided
    this.errorBorderColor =
        Colors.red, // Color of the border when there is an error
    this.showIcon = true,
    required this.onTap, // Determine whether to show icon or text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            // Hint text and its style
            hintText: hintText,
            hintStyle: TextStyle(
              color: color, // Color of the hint text
              fontSize: 14, // Font size of the hint text
              fontFamily: 'Lufga', // Font family of the hint text
              fontWeight: fontWeight, // Font weight of the hint text
              height: 0.11, // Line height for the hint text
            ),
            // Suffix icon or text configuration
            suffixIcon: (icon != null
                ? GestureDetector(
              onTap: onTap,
                  child: Padding(
                      padding: iconPadding ??
                          EdgeInsets.all(15.0), // Use provided padding or default
                      child: Container(
                        width: iconSize ?? 20, // Use provided size or default
                        height: iconSize ?? 20, // Use provided size or default
                        child: SvgPicture.asset(
                          icon!,
                          color: iconColor ??
                              AppColors.mid_grey, // Use provided color or default
                          // fit:
                          //     BoxFit.contain, // Fit the icon within the container
                        ),
                      ),
                    ),
                )
                : GestureDetector(
              onTap: () {

              },
                  child: Padding(
                      padding: iconPadding ??
                          EdgeInsets.only(top: 16.0, bottom: 10, right: 12),
                      child: Text(
                        text,
                        style: TextStyle(
                          color: Color(0xFF545F71),
                          fontSize: 12,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w400,
                          // height: 0.12,
                        ),
                      ),
                    ),
                )),
            // Background and border configuration
            filled: true, // Fill the background color
            fillColor: backgroundColor, // Background color of the text field
            border: InputBorder.none, // No border by default
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80), // Rounded corners
              borderSide: BorderSide.none, // No border side when enabled
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80), // Rounded corners
              borderSide: BorderSide.none, // No border side when focused
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80), // Rounded corners
              borderSide: BorderSide(
                  color: errorBorderColor,
                  width: 1.5), // Error border color and width
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(80), // Rounded corners
              borderSide: BorderSide(
                  color: errorBorderColor,
                  width: 1.5), // Error border color and width
            ),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 16, vertical: 12), // Padding inside the text field
          ),
          style: TextStyle(
            color: textColor, // Color of the text input
          ),
          validator: validator, // Function to validate the input
        ),
      ],
    );
  }
}
