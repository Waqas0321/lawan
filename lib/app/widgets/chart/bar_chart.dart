import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import '../../controller/sales/sales_controller.dart';
import '../text_widget.dart';

class CustomChart extends StatelessWidget {
  const CustomChart({super.key});

  @override
  Widget build(BuildContext context) {
    final SalesController controller = Get.find<SalesController>();

    return Container(
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
                  padding: EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFDEE1E2)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
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
                                    width: 1, color: Color(0xFFDEE1E2)),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const TextWidget(
                              title: "- 5%",
                              textColor: Color(0xFFF05B5B),
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.01,
                          ),
                          const TextWidget(
                            title: "vs yesterday",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            textAlign: TextAlign.start,
                            textColor: Color(0xFF545F71),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
                SizedBox(
                  width: Get.width * 0.03,
                ),
                Expanded(
                    child: Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFDEE1E2)),
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
                                      width: 1, color: Color(0xFFDEE1E2)),
                                  borderRadius: BorderRadius.circular(20),
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
                              fontSize: 14,
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
            Obx(
              () {
                List<double> currentData = controller.getCurrentData();
                List<double> previousData = controller.getPreviousData();
                log("Previous data is $previousData");
                List<String> labels = _getLabels();
                double barWidth = (Get.width * 1) / (currentData.length * 1.5);

                return SizedBox(
                  height: Responsive.customHeight(38),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildLegend(
                            gradient: const LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
                            ),
                            label: "Current",
                          ),
                          SizedBox(width: Responsive.h3),
                          _buildLegend(
                            color: const Color(0xFFACB3C0),
                            label: "Previous",
                          ),
                          SizedBox(width: Responsive.h3),
                          _buildLegend(
                            color: Colors.black,
                            label: "Selected",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      SizedBox(
                        height: Responsive.customHeight(14),
                        child: BarChart(
                          BarChartData(
                            barGroups:
                                List.generate(currentData.length, (index) {
                              return BarChartGroupData(
                                x: index,
                                barsSpace: 10,
                                barRods: [
                                  BarChartRodData(
                                    toY: currentData[index],
                                    width: barWidth,
                                    color: controller.selectedBarIndex.value ==
                                            index
                                        ? Colors.black
                                        : null,
                                    gradient:
                                        controller.selectedBarIndex.value ==
                                                index
                                            ? null
                                            : const LinearGradient(
                                                begin: Alignment(0.00, -1.00),
                                                end: Alignment(0, 1),
                                                colors: [
                                                  Color(0xFF0C1B22),
                                                  Color(0xFF44D8BE)
                                                ],
                                              ),
                                    borderRadius: BorderRadius.circular(400),
                                  ),
                                ],
                              );
                            }),
                            titlesData: const FlTitlesData(
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                    showTitles: false), // Hide bottom titles
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                    showTitles: false), // Hide left titles
                              ),
                              rightTitles: AxisTitles(
                                sideTitles: SideTitles(
                                    showTitles: false), // Hide right titles
                              ),
                              topTitles: AxisTitles(
                                sideTitles: SideTitles(
                                    showTitles: false), // Hide top titles
                              ),
                            ),
                            borderData: FlBorderData(show: false),
                            gridData: const FlGridData(show: false),
                            barTouchData: BarTouchData(
                              touchTooltipData: BarTouchTooltipData(
                                getTooltipColor: (group) {
                                  // Customize the tooltip background color based on the group
                                  if (controller.selectedBarIndex.value ==
                                      group.x.toInt()) {
                                    return Colors.black;
                                  } else {
                                    return Colors.transparent;
                                  }
                                },
                                tooltipPadding: EdgeInsets.zero,
                                tooltipMargin: 0,
                                getTooltipItem: (_, __, ___, ____) => null,
                              ),
                              touchCallback: (event, response) {
                                if (response != null && response.spot != null) {
                                  controller.selectBar(
                                      response.spot!.touchedBarGroupIndex);
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      SizedBox(
                        height: Responsive.customHeight(14),
                        child: BarChart(
                          BarChartData(
                            barGroups:
                                List.generate(previousData.length, (index) {
                              final maxHeight = Responsive.customHeight(14);
                              final barHeight = previousData[index] > maxHeight
                                  ? maxHeight
                                  : previousData[index];

                              return BarChartGroupData(
                                x: index,
                                barsSpace: 10,
                                barRods: [
                                  BarChartRodData(
                                    toY: maxHeight - barHeight,
                                    fromY: maxHeight,
                                    width: barWidth,
                                    color: const Color(0xFFACB3C0),
                                    borderRadius: BorderRadius.circular(400),
                                  ),
                                ],
                              );
                            }),
                            titlesData: FlTitlesData(
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget:
                                      (double value, TitleMeta meta) {
                                    final index = value.toInt();
                                    return SideTitleWidget(
                                        axisSide: meta.axisSide,
                                        child: TextWidget(
                                          title: labels[index],
                                          fontSize: 12,
                                          textColor: controller
                                                      .selectedBarIndex.value ==
                                                  index
                                              ? Colors.black
                                              : const Color(0xFFACB3C0),
                                        ));
                                  },
                                ),
                              ),
                              leftTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              rightTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                              topTitles: const AxisTitles(
                                sideTitles: SideTitles(showTitles: false),
                              ),
                            ),
                            borderData: FlBorderData(show: false),
                            gridData: const FlGridData(show: false),
                            barTouchData: BarTouchData(
                              touchTooltipData: BarTouchTooltipData(
                                getTooltipColor: (group) {
                                  // Customize the tooltip background color based on the group
                                  if (controller.selectedBarIndex.value ==
                                      group.x.toInt()) {
                                    return Colors.black;
                                  } else {
                                    return Colors.transparent;
                                  }
                                },
                                tooltipPadding: EdgeInsets.zero,
                                tooltipMargin: 0,
                                getTooltipItem: (_, __, ___, ____) => null,
                              ),
                              touchCallback: (event, response) {
                                if (response != null && response.spot != null) {
                                  controller.selectBar(
                                      response.spot!.touchedBarGroupIndex);
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  List<String> _getLabels() {
    final controller = Get.find<SalesController>();
    switch (controller.selectedMonthIndex.value) {
      case 1:
        return controller.monthlyLabels;
      case 2:
        return controller.yearlyLabels;
      case 0:
      default:
        return controller.weeklyLabels;
    }
  }

  Widget _buildLegend(
      {Color? color, Gradient? gradient, required String label}) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            gradient: gradient,
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: Get.width * 0.01),
        TextWidget(
          title: label,
          fontSize: 12,
          textColor: const Color(0xFF545F71),
        ),
      ],
    );
  }
}
