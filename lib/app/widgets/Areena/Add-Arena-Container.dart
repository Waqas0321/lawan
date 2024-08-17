import 'package:flutter/material.dart';
import 'package:lawan/app/utils/colors.dart';

import '../../utils/images.dart';

// Define the custom widget
class CustomCard extends StatelessWidget {
  final String count;
  final String text;
  final Color linecolor;
  final Color textcolor;
  final FontWeight fontWeight;
  final Color countcolor;
  final Color color;
  final double padding;
  CustomCard({
    required this.count,
    required this.text,
    required this.color,
    required this.linecolor,
    required this.countcolor,
    required this.textcolor,
    required this.fontWeight,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.28,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: ShapeDecoration(
                  color: color,
                  shape: CircleBorder(
                    side: BorderSide(width: 1, color: AappColor.white),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 0,
                      offset: Offset(0, -0.50),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    count,
                    style: TextStyle(
                      color: countcolor,
                      fontSize: 16,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 16,
              // ),

              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  Images.line,
                  color: linecolor,
                  fit: BoxFit.fitWidth,
                  height: 12,
                ),
              )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: padding),
                child: Text(
                  text,
                  style: TextStyle(
                    color: textcolor,
                    fontSize: 14,
                    fontFamily: 'Lufga',
                    fontWeight: fontWeight,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
