import 'package:get/get.dart';

class Responsive {
  // Static doubles representing percentages of screen height
  static double h1 = Get.height * 0.01;
  static double h2 = Get.height * 0.02;
  static double h3 = Get.height * 0.03;
  static double h4 = Get.height * 0.04;
  static double h5 = Get.height * 0.05;
  static double h6 = Get.height * 0.06;
  static double h7 = Get.height * 0.07;
  static double h8 = Get.height * 0.08;
  static double h9 = Get.height * 0.09;
  static double h10 = Get.height * 0.10;

  // Custom function to get any percentage of screen height
  static double customHeight(double percentage) {
    return Get.height * (percentage / 100);
  }
}
