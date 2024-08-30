import 'package:flutter/material.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import 'package:lawan/app/widgets/text_widget.dart';

class ColumnButton extends StatelessWidget {
  final double padding;
  final bool showBlack;
  final VoidCallback onTap;
  final String upperText;
  final String lowerText;

  const ColumnButton(
      {super.key,
      this.padding = 12,
      this.showBlack = false,
      this.upperText = "The session has begun",
      this.lowerText = "Game on!",
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsets.symmetric(vertical: padding, horizontal: Responsive.h7),
        decoration: BoxDecoration(
            color: showBlack ? Colors.black : null,
            borderRadius: BorderRadius.circular(30),
            boxShadow: showBlack
                ? []
                : const [
                    BoxShadow(
                      color: Color(0xa614eac5),
                      blurRadius: 18,
                      offset: Offset(0, 5),
                      spreadRadius: -10,
                    ),
                    BoxShadow(
                      color: Color(0x8b2c8170),
                      blurRadius: 32,
                      offset: Offset(0, 25),
                      spreadRadius: -8,
                    ),
                    BoxShadow(
                      color: Color(0x542c8170),
                      blurRadius: 42,
                      offset: Offset(5, 50),
                      spreadRadius: -8,
                    ),
                    BoxShadow(
                      color: Color(0x422c8170),
                      blurRadius: 44,
                      offset: Offset(5, 60),
                      spreadRadius: -8,
                    ),
                  ],
            gradient: showBlack
                ? null
                : const LinearGradient(
                    begin: Alignment.topCenter,
                    // Start from top center
                    end: Alignment.bottomCenter,
                    colors: [
                        Color(0xff0C1B22),
                        Color(0xff44D8BE),
                      ])),
        child: Column(
          children: [
            TextWidget(
              title: upperText,
              textColor: Color(0xFFACB3C0),
              fontSize: 12,
            ),
            TextWidget(
              title: lowerText,
              textColor: Colors.white,
              fontSize: 16,
            )
          ],
        ),
      ),
    );
  }
}
