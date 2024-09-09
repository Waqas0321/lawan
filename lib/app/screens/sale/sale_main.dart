import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/sales/sales_controller.dart';
import 'package:lawan/app/screens/sale/widgets/monthly_sales_tabbar.dart';
import 'package:lawan/app/screens/sale/widgets/sale_header.dart';
import 'package:lawan/app/screens/sale/widgets/sales_tabbar.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import 'package:lawan/app/widgets/Areena/custom_tabbar.dart';
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
          colors: [
            Color(0xCC0C1B22), // Start color
            Color(0x0044D8BE), // Gradient color at 30%
            Color(0xfff2f3f2), // White color for the remaining 70%
          ],
          stops: [0.0, 0.12, 0.13], // Defines the stops for each color
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: Get.width * 0.02,
            left: Get.width * 0.03,
            right: Get.width * 0.03),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SalesHeader(),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MonthlySalesTabBar(controller: controller),
                  SizedBox(
                    width: Get.width * 0.009,
                  ),
                  Expanded(
                    flex: 2,
                    child: CircularContainer(
                      bgColor: Colors.black,
                      borderColor: Colors.black,
                      svgPath: Images.upload,
                      svgColor: Colors.white,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              const CustomChart(),
              SizedBox(
                height: Responsive.h2,
              ),
              CustomSalesTabBar(
                  controller: controller, tabBarItems: controller.tabBarItem),
              SizedBox(
                height: Responsive.h1,
              ),
              Row(
                children: [
                  const TextWidget(
                    title: "24 Sep",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    width: Responsive.h4,
                  ),
                   TextWidget(
                    title: "Mon, Today",
                    fontSize:14,
                    fontWeight:FontWeight.w400,
                    textColor:AppColors.dark_grey,
                  )
                ],
              ),
              SizedBox(
                height: Responsive.h1,
              ),
              SalesContainer(
                salesController: controller,
              )
            ],
          ),
        ),
      ),
    );
  }
}
