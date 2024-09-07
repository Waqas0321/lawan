import 'dart:developer';

import 'package:get/get.dart';

class SalesController extends GetxController {
  final List<String> monthsName = [
    'Weekly',
    'Monthly',
    'Yearly',
  ];

  var selectedMonthIndex = 0.obs;
  var selectedBarIndex = Rxn<int>();

  bool get isWeekActive => selectedMonthIndex.value == 0;
  bool get isMonthActive => selectedMonthIndex.value == 1;
  bool get isYearActive => selectedMonthIndex.value == 2;

  List<String> weeklyLabels = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  List<String> monthlyLabels = ['Week 1', 'Week 2', 'Week 3', 'Week 4'];

  List<String> yearlyLabels =
      List.generate(12, (index) => (index + 1).toString());

  List<double> getCurrentData() {
    switch (selectedMonthIndex.value) {
      case 1:
        return [
          40,
          30,
          35,
          24,
        ];
      case 2:
        return List.generate(
            12, (index) => (index + 1) * 10.0); // Example yearly data
      case 0: // Weekly (default)
      default:
        return [40, 20, 23, 19, 18, 30, 35];
    }
  }

  List<double> getPreviousData() {
    switch (selectedMonthIndex.value) {
      case 1:
        return [10, 14, 11, 10];
      case 2:
        return List.generate(
            12, (index) => (index + 1) * 3.0); // Example yearly data
      case 0: // Weekly (default)
      default:
        return [20, 15, 11, 11, 16, 13, 18];
    }
  }

  String get selectedMonth => monthsName[selectedMonthIndex.value];

  void selectPreviousMonth() {
    if (selectedMonthIndex.value > 0) {
      selectedMonthIndex.value--;
    }
  }

  void selectNextMonth() {
    if (selectedMonthIndex.value < monthsName.length - 1) {
      selectedMonthIndex.value++;
    }
  }

  void updateSelectedMonth(int index) {
    selectedMonthIndex.value = index;
  }

  void selectBar(int index) {
    selectedBarIndex.value = index;
    log("Index tapped $selectedBarIndex");
  }

  var tabBarIndex = 0.obs;
  List<String> tabBarItem = ["All        ", "Ongoing", "Completed"];
  // Method to change the selected index
  void selectTabBar(int index) {
    tabBarIndex.value = index;
  }
}
