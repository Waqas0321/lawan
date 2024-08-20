import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../screens/HomeScreen/Widgets/circularContainer.dart';
import '../../utils/images.dart';

class CustomBottomNavigation extends StatelessWidget {
  final double widthFactor;
  final double containerHeight;
  final double padding;
  final Color containerColor;
  final double borderRadius;
  final EdgeInsets margin;
  final double iconSize;
  final double spacing;
  final TextStyle textStyle;

  const CustomBottomNavigation({
    Key? key,
    this.widthFactor = 0.5, // Adjust this value based on screen width
    this.containerHeight = 70.0,
    this.padding = 4.0,
    this.containerColor = const Color(0xCCE5E6E5),
    this.borderRadius = 80.0,
    this.margin = const EdgeInsets.only(bottom: 10),
    this.iconSize = 17.0,
    this.spacing = 6.0,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: MediaQuery.of(context).size.width / 3.9, // Adjust position as needed
      bottom: 20,
      child: Container(
        margin: margin,
        width: MediaQuery.of(context).size.width * widthFactor,
        height: containerHeight,
        padding: EdgeInsets.all(padding),
        decoration: ShapeDecoration(
          color: containerColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CircularContainer(
                  padding:1,
                  image: Images.play, // Replace with your asset path
                  color: Colors.white,
                  imageHeight: 20,
                  text: "Session",
                  imageWidth: 15,
                  // textStyle: textStyle,
                ),
              ),
              SizedBox(
                width: spacing,
              ),
              Expanded(
                child: CircularContainer(
                  padding:0,
                  image:Images.areena, // Replace with your asset path
                  color: Colors.black,
                  text: "Arena",
                  textColor: Colors.white,
                  imageHeight: 17,
fontWeight:FontWeight.w600,
                  imageWidth: iconSize,
                  // textStyle: textStyle,
                ),
              ),
              SizedBox(
                width: spacing,
              ),
              Expanded(
                child: CircularContainer(
                  padding:1,
                  image:Images.sales, // Replace with your asset path
                  color: Colors.white,
                  text: "Sales",
                  textColor: Colors.black,
                  imageHeight: 20,
                  imageWidth: iconSize,
                  // textStyle: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}