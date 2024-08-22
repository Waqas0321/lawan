import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
    this.isFirst = false,
    this.isSecond = false,
    this.isFourth = false,
    required this.image,
    required this.text1,
    required this.text2,
  });

  final bool isFirst;
  final bool isSecond;
  final bool isFourth;
  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.422,
        height: 88,
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFDEE1E2)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  image,
                  height: 16,
                  width: 16,
                  color: Color(0xff545F71),
                ),
                SizedBox(width: 2),
                Text(
                  text1,
                  style: TextStyle(
                      color: Color(0xFF545F71),
                      fontSize: 12,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none),
                )
              ],
            ),
            SizedBox(height: 4),
            Expanded(
              child: Text(
                text2,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: isFourth ? 20 : 14,
                    fontFamily: 'Lufga',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none),
              ),
            ),
            SizedBox(height: 4),
            isSecond
                ? Container(
              width: 37,
              height: 16,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFFDEE1E2),
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: Center(
                child: Text(
                  '2 hr',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF545F71),
                    fontSize: 11,
                    fontFamily: 'Lufga',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none,
                    letterSpacing: 0.50,
                  ),
                ),
              ),
            )
                : SizedBox(
              height: 1,
            )
          ],
        ),
      ),
    );
  }
}