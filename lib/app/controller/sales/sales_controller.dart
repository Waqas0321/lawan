import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalesController extends GetxController {
  final List<String> monthsName = [
    'Weekly',
    'Monthly',
    'Yearly',
  ];

  var selectedMonthIndex = 1.obs; // Default to 'Monthly'
  var selectedBarIndex = Rxn<int>(); // To track selected bar index

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

  void updateSelectedMonth(String month) {
    selectedMonthIndex.value = monthsName.indexOf(month);
  }

  void selectBar(int index) {
    selectedBarIndex.value = index;
  }
}
