import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/bottom_bar/bottom_navigation_controller.dart';

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
    this.iconSize = 15.0,
    this.spacing = 6.0,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BottomNavigationController>();
    return Positioned(
      left:
          MediaQuery.of(context).size.width / 3.9, // Adjust position as needed
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
          child: Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CircularContainer(
                      heightpadding:3,
                      image: Images.play,
                      color: controller.selectedItem.value == "Session"
                          ? Colors.black
                          : Colors.white,
                      imageHeight: iconSize,
                      textColor: controller.selectedItem.value == "Session"
                          ? Colors.white
                          : Colors.black,
                      text: "Session",
                      imageWidth: 15,

                      onTap: () {
                        controller.changeSelection("Session");
                      },
                      // textStyle: textStyle,
                    ),
                  ),
                  SizedBox(
                    width: spacing,
                  ),
                  Expanded(
                    child: CircularContainer(
                      heightpadding: 2,
                      image: Images.areena, // Replace with your asset path
                      color: controller.selectedItem.value == "Arena"
                          ? Colors.black
                          : Colors.white,
                      text: "Arena",
                      textColor: controller.selectedItem.value == "Arena"
                          ? Colors.white
                          : Colors.black,
                      imageHeight: iconSize,
                      imageWidth: iconSize,
                      onTap: () {
                        controller.changeSelection("Arena");
                      },
                      // textStyle: textStyle,
                    ),
                  ),
                  SizedBox(
                    width: spacing,
                  ),
                  Expanded(
                    child: CircularContainer(
                      heightpadding:2,
                      image:"${Images.mainImage}/sales.svg", // Replace with your asset path
                      color: controller.selectedItem.value == "Sales"
                          ? Colors.black
                          : Colors.white,
                      text: "Sales",
                      textColor: controller.selectedItem.value == "Sales"
                          ? Colors.white
                          : Colors.black,
                      imageHeight: iconSize,
                      imageWidth: iconSize,
                      onTap: () {
                        controller.changeSelection("Sales");
                      },
                      // textStyle: textStyle,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
