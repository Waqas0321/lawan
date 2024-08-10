import 'package:flutter/cupertino.dart';

class ScreenDimensions{
  final BuildContext context;
  ScreenDimensions(this.context);
  double get screenWidth  =>MediaQuery.of(context).size.height;
  double get  screenHeight=>MediaQuery.of(context).size.width;
  // Custom dimensions based on screen width and height in 2% increments
  double get width1Percent => screenWidth * 0.01;

  double get width2Percent => screenWidth * 0.02;

  double get height2Percent => screenHeight * 0.02;

  double get width4Percent => screenWidth * 0.04;
  double get height4Percent => screenHeight * 0.04;

  double get width6Percent => screenWidth * 0.06;
  double get height6Percent => screenHeight * 0.06;

  double get width8Percent => screenWidth * 0.08;
  double get height8Percent => screenHeight * 0.08;

  double get width10Percent => screenWidth * 0.1;
  double get height10Percent => screenHeight * 0.1;

  double get width12Percent => screenWidth * 0.12;
  double get height12Percent => screenHeight * 0.12;

  double get width14Percent => screenWidth * 0.14;
  double get height14Percent => screenHeight * 0.14;

  double get width16Percent => screenWidth * 0.16;
  double get height16Percent => screenHeight * 0.16;

  double get width18Percent => screenWidth * 0.18;
  double get height18Percent => screenHeight * 0.18;

  double get width20Percent => screenWidth * 0.2;
  double get height20Percent => screenHeight * 0.2;

  // Define more sizes if needed
  double get width30Percent => screenWidth * 0.3;
  double get height30Percent => screenHeight * 0.3;

  double get width40Percent => screenWidth * 0.4;
  double get height40Percent => screenHeight * 0.4;

  // Add methods for custom dimensions if needed
  double customWidth(double percentage) => screenWidth * percentage;
  double customHeight(double percentage) => screenHeight * percentage;
}
