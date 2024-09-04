import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/sales/sales_controller.dart';

import '../../../utils/responsive_utils.dart';
import '../../../widgets/text_widget.dart';

class MonthlySalesTabBar extends StatelessWidget {
  final SalesController controller; // Replace with your actual controller type

  const MonthlySalesTabBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200), color: Colors.black),
        padding: EdgeInsets.all(6),
        child: Obx(() => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(3, (index) {
                String monthName = controller.monthsName[index];
                bool equalIndex = controller.selectedMonthIndex.value == index;

                return InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    controller.updateSelectedMonth(index);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
                    decoration: BoxDecoration(
                      color: !equalIndex ? Colors.transparent : Colors.white,
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: TextWidget(
                      title: monthName,
                      textColor: equalIndex ? Colors.black : Colors.grey,
                    ),
                  ),
                );
              }),
            )),
      ),
    );
  }
}
