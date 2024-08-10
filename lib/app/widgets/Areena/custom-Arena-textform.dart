import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/utils/colors.dart';
class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? icon;
  final String? text;
  CustomTextFormField({required this.hintText, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.only(right: 10, left: 12, bottom: 4),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE9EAF0)),
          borderRadius: BorderRadius.circular(80),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Color(0xFFACB3C0),
                  fontSize: 14,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                  height: 1.1, // Adjust height to center the text
                ),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(bottom: 13), // Center vertically
              ),
            ),
          ),
          SizedBox(width: 12),
          if (text != null) ...[
            SizedBox(width: 8),
            Text(
              text!,
              style: TextStyle(
                color: AappColor.mid_grey,
                fontSize: 12,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            )
          ],
          if (icon != null) ...[
            Container(
              child: Image.asset(icon!, color:AappColor.black),
            ),
          ],
        ],
      ),
    );
  }
}
