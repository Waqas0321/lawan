import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../screens/HomeScreen/Widgets/circularContainer.dart';

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
  final String selectedItem;
  final List<String> imagePath;
  final List<String> title;
  final Function(String) onItemSelected;

  const CustomBottomNavigation({
    Key? key,
    this.widthFactor = 0.56, // Adjust this value based on screen width
    this.containerHeight = 70.0,
    this.padding = 4.0,
    this.containerColor = const Color(0xFFE4E5E4),
    this.borderRadius = 80.0,
    this.margin = const EdgeInsets.only(bottom: 10),
    this.iconSize = 15.0,
    this.spacing = 6.0,
    required this.textStyle,
    required this.selectedItem,
    required this.imagePath,
    required this.title,
    required this.onItemSelected,
  })  : assert(imagePath.length == title.length,
            "Image paths and titles must have the same length."),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
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
          child: ListView.separated(
            padding:EdgeInsets.only(left: 2),
            scrollDirection: Axis.horizontal,
            itemCount: title.length,
            itemBuilder: (context, index) {
              return Center(
                child: CircularContainer(
                  heightpadding: 2,
                  image:
                      imagePath[index], // Use imagePath from the constructor list
                  color:
                      selectedItem == title[index] ? Colors.black : Colors.white,
                  text: title[index], // Use title from the constructor list
                  textColor:
                      selectedItem == title[index] ? Colors.white : Colors.black,
                  imageHeight: iconSize,
                  imageWidth: iconSize,
                  onTap: () {
                    onItemSelected(
                        title[index]); // Call the provided callback function
                  },
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: spacing),
          ),
        ),
      ),
    );
  }
}
