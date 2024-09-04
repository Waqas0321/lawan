import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/sales/sales_controller.dart';
import '../../../utils/responsive_utils.dart';
import '../../../widgets/text_widget.dart';

class CustomSalesTabBar extends StatelessWidget {
  final SalesController controller; // Replace with your actual controller type
  final List<String> tabBarItems; // List of tab bar items

  const CustomSalesTabBar(
      {super.key, required this.controller, required this.tabBarItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFDEE1E2),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(tabBarItems.length, (index) {
          return Obx(() => Container(
                decoration: BoxDecoration(
                  color: controller.tabBarIndex.value == index
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                child: InkWell(
                  splashColor: Colors.transparent,
                  onTap: () {
                    controller.selectTabBar(index);
                  },
                  child: Row(
                    children: [
                      TextWidget(
                        title: tabBarItems[index],
                        textColor: controller.tabBarIndex.value == index
                            ? Colors.black
                            : const Color(0xFF545F71),
                      ),
                      tabBarItems[index] == "Ongoing"
                          ? SizedBox(
                              width: Responsive.h1,
                            )
                          : Container(),
                      tabBarItems[index] == "Ongoing"
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(200),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color:
                                          controller.tabBarIndex.value == index
                                              ? Colors.black
                                              : Colors.white)),
                              child: TextWidget(
                                title:
                                    "257", // Replace with dynamic value if needed
                                textColor: controller.tabBarIndex.value == index
                                    ? Colors.black
                                    : const Color(0xFF545F71),
                              ),
                            )
                          : const SizedBox.shrink()
                    ],
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
