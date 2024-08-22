import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/sales/sales_controller.dart';
import 'package:lawan/app/screens/sale/widgets/sale_header.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import 'package:lawan/app/widgets/chart/bar_chart.dart';
import 'package:lawan/app/widgets/container/circular_container.dart';
import 'package:lawan/app/widgets/container/sales_container.dart';
import 'package:lawan/app/widgets/text_widget.dart';

class SaleMain extends StatelessWidget {
  const SaleMain({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SalesController>();
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xCC0C1B22), Colors.white],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: Get.width * 0.02,
            left: Get.width * 0.03,
            right: Get.width * 0.03),
        child: Column(
          children: [
            SalesHeader(),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularContainer(
                  svgPath: Images.left,
                  onTap: controller.selectPreviousMonth,
                ),
                SizedBox(
                  width: Get.height * 0.01,
                ),
                CircularContainer(
                  svgPath: Images.right,
                  onTap: controller.selectNextMonth,
                ),
                SizedBox(
                  width: Get.height * 0.01,
                ),
                Obx(() => Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 1),
                        decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80),
                            ),
                            shadows: [
                              const BoxShadow(
                                color: Color(0x0C000000),
                                blurRadius: 2,
                                offset: Offset(0, 1),
                              )
                            ]),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            icon: Image.asset(
                              Images
                                  .chevron_sort, // Ensure this path is correct
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
                            dropdownColor: Colors.black,
                            value: controller.selectedMonth,
                            onChanged: (value) {
                              if (value != null) {
                                controller.updateSelectedMonth(value);
                              }
                            },
                            items: controller.monthsName.map((month) {
                              return DropdownMenuItem(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_today_outlined,
                                      color: Color(0xffACB4C0),
                                      size: 16,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      month,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Lufga',
                                        fontWeight: FontWeight.w500,
                                        height: 0.05,
                                      ),
                                    ),
                                  ],
                                ),
                                value: month,
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  width: Get.height * 0.01,
                ),
                CircularContainer(
                  bgColor: Colors.black,
                  borderColor: Colors.black,
                  svgPath: Images.upload,
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFDEE1E2)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(
                                  title: "Today",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  textAlign: TextAlign.start,
                                  textColor: Color(0xFF545F71),
                                ),
                                const TextWidget(
                                  title: "RM120",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 8),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 1,
                                              color: Color(0xFFDEE1E2)),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: const TextWidget(
                                        title: "- 5%",
                                        textColor: Color(0xFFF05B5B),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Get.width * 0.02,
                                    ),
                                    const TextWidget(
                                      title: "vs yesterday",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      textAlign: TextAlign.start,
                                      textColor: Color(0xFF545F71),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                        SizedBox(
                          width: Get.width * 0.03,
                        ),
                        Expanded(
                            child: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFFDEE1E2)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(
                                  title: "Weekly Sales",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  textAlign: TextAlign.start,
                                  textColor: Color(0xFF545F71),
                                ),
                                const TextWidget(
                                  title: "RM32,140",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 8),
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 1,
                                              color: Color(0xFFDEE1E2)),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: const TextWidget(
                                        title: "+ 20%",
                                        textColor: Color(0xFF23A891),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Get.width * 0.02,
                                    ),
                                    const TextWidget(
                                      title: "vs last week",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      textAlign: TextAlign.start,
                                      textColor: Color(0xFF545F71),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    CustomChart(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: Responsive.h2,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFDEE1E2),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(3, (index) {
                  return Obx(() => Container(
                        decoration: BoxDecoration(
                          color: controller.tabBarIndex.value == index
                              ? Colors.white
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 12),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            controller.selectTabBar(index);
                          },
                          child: Row(
                            children: [
                              TextWidget(
                                title: controller.tabBarItem[index],
                                textColor: controller.tabBarIndex.value == index
                                    ? Colors.black
                                    : const Color(0xFF545F71),
                              ),
                              controller.tabBarItem[index] == "Ongoing"
                                  ? SizedBox(
                                      width: Responsive.h1,
                                    )
                                  : Container(),
                              controller.tabBarItem[index] == "Ongoing"
                                  ? Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: controller
                                                          .tabBarIndex.value ==
                                                      index
                                                  ? Colors.black
                                                  : Colors.white)),
                                      child: TextWidget(
                                        title: "257",
                                        textColor:
                                            controller.tabBarIndex.value ==
                                                    index
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
            ),
            SizedBox(
              height: Responsive.h1,
            ),
            Row(
              children: [
                TextWidget(
                  title: "24 Sep",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: Responsive.h2,
                ),
                TextWidget(
                  title: "Mon, Today",
                  textColor: Color(0xFF545F71),
                )
              ],
            ),
            SizedBox(
              height: Responsive.h1,
            ),
            SalesContainer()
          ],
        ),
      ),
    );
  }
}
