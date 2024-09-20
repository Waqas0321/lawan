import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/bindings/app_bindings.dart';
import 'package:lawan/app/controller/Friendly_Session/lignup_screen_controller.dart';
import 'package:lawan/app/screens/AddMenualBooking_Screen/Indoor_Screen.dart';
import 'package:lawan/app/screens/Friendly_Session/lignupExtra_screen.dart';
import 'package:lawan/app/screens/Friendly_Session/lignupaway_screen.dart';
import 'package:lawan/app/screens/Friendly_Session/lignuphome_screen.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Custom_Circular_Button.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../widgets/Areena/custom_tabbar.dart';
import '../AddMenualBooking_Screen/Outdoor_Screen.dart';

class LignUpScreen extends StatefulWidget {
  LignUpScreen({super.key});

  @override
  State<LignUpScreen> createState() => _LignUpScreenState();
}

class _LignUpScreenState extends State<LignUpScreen> {
  final controller = Get.put(LignUpScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
              top: 30,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    safetyContainer(
                      text: "Home",
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: SvgPicture.asset(Images.check_circle),
                    ),
                    Spacer(),
                    safetyContainer(
                      text: "Away",
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 140),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      title: "0",
                      textColor: AppColors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                    ),
                    TextWidget(
                      title: ":",
                      textColor: AppColors.dark_grey,
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                    ),
                    TextWidget(
                      title: "0",
                      textColor: AppColors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 125,
              left: 0,
              right: 0,
              child: SizedBox(
                height: Get.height * 0.77,
                child: DefaultTabController(
                  length: 3,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: CustomTabBar(tabs: controller.tabBarItems),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            LignUpHomeScreen(),
                            LignUpAwayScreen(),
                            LignUpExtraScreen()
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 42),
                child: Container(
                  width: Get.width,
                  height: 68,
                  padding: const EdgeInsets.only(
                      top: 4, left: 4, right: 16, bottom: 4),
                  decoration: ShapeDecoration(
                    color: AppColors.bottombox,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80),
                    ),
                  ),
                  child: acrylicAny(
                    blurlevel: 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomCircularButton(
                          height: 60,
                          width: 60,
                          onPressFun: () {},
                          isSelected: true,
                          imagePath: Images.capa,
                          isImage: true,
                          imageColor: AppColors.white,
                        ),
                        SizedBox(width: 12,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(title: "Sesssion starting in",fontWeight: FontWeight.w400,fontSize: 12,textColor: AppColors.textSecondColor,),
                            TextWidget(title: "2 days 2 hours 6 mins 3 sec ",fontWeight: FontWeight.w600,fontSize: 14,textColor: AppColors.black,),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class safetyContainer extends StatelessWidget {
  const safetyContainer({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(8),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: AppColors.hRBTNBorder,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(400),
            ),
          ),
          child: Center(
              child: SvgPicture.asset(
            Images.safety,
            height: 24,
            width: 24,
          )),
        ),
        SizedBox(
          height: 6,
        ),
        TextWidget(
          title: text,
          fontSize: 12,
          fontWeight: FontWeight.w500,
          textColor: AppColors.black,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
