import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';

class CustomContainerAreena3 extends StatelessWidget {
  const CustomContainerAreena3(
      {super.key,
      required this.text1,
      required this.text2,
      this.text3 = "Nothing",
      this.hasThirdText = true,
      this.hasIcon = false});

  final String text1;
  final String text2;
  final String text3;
  final bool hasThirdText;
  final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      // padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text1,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFACB3C0),
                fontSize: 12,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
                height: 1.4,
              ),
            ),
            hasIcon
                ? SvgPicture.asset(
                    Images.tag,
                    color: Colors.white,
                  )
                : SizedBox(
                    width: 16,
                  ),
            SizedBox(
              width: 4,
            ),
            Text(
              text2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w600,
                height: 1.2,
                letterSpacing: -0.72,
              ),
            ),
            hasThirdText
                ? Text(
                    text3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFDEE1E2),
                      fontSize: 12,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w400,
                      height: 2,
                    ),
                  )
                : SizedBox(
                    width: 0,
                  )
          ],
        ),
      ),
    );
  }
}
