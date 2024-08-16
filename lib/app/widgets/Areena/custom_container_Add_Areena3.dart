import 'package:flutter/material.dart';
import 'package:lawan/app/utils/colors.dart';
class CustomContainerAreena3 extends StatelessWidget {
  const CustomContainerAreena3({super.key, required this.text1, required this.text2, required this.text3});

  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 86,
        padding: const EdgeInsets.symmetric(vertical: 8),
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
          children: [
            Text(
              text1,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AappColor.containerTextColor,
                fontSize: 12,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              text2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w600,
                letterSpacing: -0.72,
              ),
            ),
            Text(
              text3,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AappColor.borderColor,
                fontSize: 12,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
              ),
            )
          ],
      ),
    ),);
  }
}
