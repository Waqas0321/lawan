import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/widgets/text_widget.dart';

class CustomChart extends StatefulWidget {
  @override
  _CustomChartState createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  int selectedIndex = -1;
  int currentView = 0; // 0 for Weekly, 1 for Monthly, 2 for Yearly
  List<double> currentData = [8, 10, 14, 15, 13, 10, 16]; // Example data
  List<double> previousData = [
    7,
    9,
    13,
    14,
    12,
    9,
    15
  ]; // Example data for previous period

  List<String> weeklyLabels = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  List<String> monthlyLabels = ['Week 1', 'Week 2', 'Week 3', 'Week 4'];
  List<String> yearlyLabels =
      List.generate(12, (index) => (index + 1).toString());

  List<String> get currentLabels {
    switch (currentView) {
      case 0:
        return weeklyLabels;
      case 1:
        return monthlyLabels;
      case 2:
        return yearlyLabels;
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    final labels = currentLabels;
    final double barWidth = Get.width * 0.12;
    final double barSpacing = Get.width * 0.09;
    final double heightScale =
        Get.height * 0.01; // Adjusted scale for smaller height

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            _buildLegend(
              gradient: const LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
              ),
              label: "Current",
            ),
            SizedBox(width: Get.width * 0.02),
            _buildLegend(
              color: const Color(0xFFACB3C0),
              label: "Previous",
            ),
            SizedBox(width: Get.width * 0.02),
            _buildLegend(
              color: Colors.black,
              label: "Selected",
            ),
          ],
        ),
        SizedBox(height: Get.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(labels.length, (index) {
            final currentBarHeight = currentData[index] * heightScale;
            final previousBarHeight = previousData[index] * heightScale;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Column(
                children: [
                  // Previous Bar (Top to Bottom)
                  Row(
                    children: [
                      Container(
                        width: barWidth,
                        height: previousBarHeight,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
                          ),
                          borderRadius: BorderRadius.circular(400),
                        ),
                      ),
                      SizedBox(
                        width: Get.width * 0.002,
                      )
                    ],
                  ),

                  SizedBox(height: barSpacing),
                  // Current Bar (Bottom to Top)
                  Container(
                    width: barWidth,
                    height: currentBarHeight,
                    decoration: BoxDecoration(
                      gradient: index == selectedIndex
                          ? const LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
                            )
                          : null,
                      color: index != selectedIndex
                          ? Color(0xFFACB3C0)
                          : Color(0xFFACB3C0),
                      borderRadius: BorderRadius.circular(400),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
        SizedBox(height: Get.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(labels.length, (index) {
            return Container(
              width: barWidth,
              child: Center(
                child: TextWidget(
                  title: labels[index],
                  textColor: Color(0xFFACB3C0),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildLegend(
      {Color? color, Gradient? gradient, required String label}) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: gradient,
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: Get.width * 0.02),
        TextWidget(
          title: label,
          fontSize: 12,
          textColor: Color(0xFF545F71),
        ),
      ],
    );
  }
}
