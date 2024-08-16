import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? initialValue; // Initial value for the TextFormField
  final String? imagePath; // Make imagePath optional
  final TextEditingController? controller; // Optional controller
  final FormFieldValidator<String>? validator; // Optional validator

  const CustomTextfield({
    Key? key,
    this.initialValue,
    this.imagePath,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 249,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE0E0E0)),
          borderRadius: BorderRadius.circular(80),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 2,
            offset: Offset(0, 1),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        validator: validator,
        textAlign: TextAlign.center, // Center the text and hint text
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter text here',
          hintStyle: const TextStyle(
            color: Color(0xFF828282),
            fontSize: 16,
            fontFamily: 'Lufga',
            fontWeight: FontWeight.w400,
            height: 1.5, // Adjust height if needed
          ),
          suffixIcon: imagePath != null
              ? Container(
            width: 24,
            height: 24,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Image.asset(imagePath!),
          )
              : null,
        ),
        style: const TextStyle(
          color: Color(0xFF828282),
          fontSize: 16,
          fontFamily: 'Lufga',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
