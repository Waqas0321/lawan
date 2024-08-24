import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/controller/bottom_bar/bottom_navigation_controller.dart';
import 'package:lawan/app/screens/HomeScreen/Widgets/homeScreen_Body.dart';
import 'package:lawan/app/screens/Session_Screen/SessionScreen.dart';
import 'package:lawan/app/screens/sale/sale_main.dart';
import 'package:lawan/app/screens/sessions/session_main.dart';
import 'package:lawan/app/utils/images.dart';
import '../../widgets/Areena/AddArena1.dart';
import '../../widgets/Areena/circularContainer.dart';
import '../../widgets/Areena/custom_bottom_nav.dart';
import '../Session_Screen/SessionScreen.dart';
import 'Widgets/homeScreenHeader.dart';

class HomeScreen extends StatelessWidget {
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AddAreena1();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BottomNavigationController>();
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xFFF2F3F2),
          body: ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.transparent.withOpacity(0.001), // Simulate brightness
              BlendMode.colorBurn,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, 0.8), // Start near the bottom
                  end: Alignment(0.0, 1), // End at the bottom edge
                  colors: [
                    Colors.black.withOpacity(0.0), // Fully transparent color
                    Colors.black.withOpacity(0.4), // Slightly visible gradient
                  ],
                ),
              ),
              child: Stack(children: [
                SingleChildScrollView(
                  child: SafeArea(
                    child: Obx(() {
                      if (controller.selectedItem.value == "Arena") {
                        return Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width * 0.02,
                              left: MediaQuery.of(context).size.width * 0.03,
                              right: MediaQuery.of(context).size.width * 0.03),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ScreenHeader(),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              ScreenBody(),
                            ],
                          ),
                        );
                      } else if (controller.selectedItem.value == "Sales") {
                        return SaleMain();
                      } else {
                        return Sessionscreen();
                      }
                    }),
                  ),
                ),
                CustomBottomNavigation(
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Lufga',
                    fontWeight: FontWeight.w400,
                    height: 1,
                    letterSpacing: -0.24,
                  ),
                ),
              ]),
            ),
          )),
    );
  }
}
