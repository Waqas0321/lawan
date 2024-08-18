import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      width: double.infinity,
      padding: const EdgeInsets.only(right: 16, left: 16, bottom: 12, top: 12),
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
                  height: 0.11,
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
                color: Color(0xFF545F71),
                fontSize: 12,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            )
          ],
          if (icon != null) ...[
            Container(
              child: SvgPicture.asset(icon!,                               color: AappColor.mid_grey,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
