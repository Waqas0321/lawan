import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.onTap,
    required this.color,
    required this.image,
    required this.text,
    this.textColor = Colors.black,
    this.imageWidth = 16.0,
    this.imageHeight = 16.0,
    this.heightpadding=0.2
  });

  final Color color;
  final String image;
  final String text;
  final Color textColor;
  final double imageWidth;
  final double imageHeight;
  final VoidCallback? onTap;
  final double heightpadding;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: Container(
        height: 60,
        width: 60,
        margin:EdgeInsets.only(),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(400)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                height: imageHeight,
                width: imageWidth,
                colorFilter: ColorFilter.mode(textColor, BlendMode.srcIn),
              ),
              SizedBox(height:heightpadding,),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.24,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
