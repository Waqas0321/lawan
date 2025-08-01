import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/screens/AddMenualBooking_Screen/Indoor_Screen.dart';
import 'package:lawan/app/screens/AddMenualBooking_Screen/Outdoor_Screen.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/widgets/Friendly_Session/Friendly_Session_Setting.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Menual_BottomSheet3.dart';
import 'package:lawan/app/widgets/text_widget.dart';
import '../../utils/text.dart';
import '../Areena/areenaButton.dart';
import '../Areena/custom_header_count.dart';
import '../Areena/custom_tabbar.dart';


class FriendlySessionArena extends StatefulWidget {
  const FriendlySessionArena({super.key});

  @override
  State<FriendlySessionArena> createState() => _FriendlySessionArenaState();
}

class _FriendlySessionArenaState extends State<FriendlySessionArena> {
  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return FriendlySessionSetting();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return acrylicAny(
      blurlevel: 10,
      child: Container(
          height: Get.height * 0.87,
          width: MediaQuery.of(context).size.width - 16,
          margin: EdgeInsets.only(bottom: 25),
          padding: EdgeInsets.only(left: 16,right: 16,top: 16),
          decoration: ShapeDecoration(
              color: AppColors.alertcolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              shadows: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 0,
                  offset: Offset(0, -0.50),
                )
              ]),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customHeaderCount(
                  thisCount: "2",
                  text1: 'Slot',
                  text2: 'Arena',
                  text3: 'Setting',
                  text4: 'Pay',
                  hasFourth: true,
                ),
                SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      title: 'Choose Arena',
                      textColor: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,

                    ),
                    TextWidget(
                      title: 'Set where it should take place',
                      textColor: AppColors.textSecondColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,

                    ),
                    SizedBox(height: 8),
                    Column(
                      children: [
                        Container(
                          height:
                          MediaQuery.of(context).size.height / 1.66,
                          // color: const Color(0xFFF2F3F2),
                          child: DefaultTabController(
                              length: 2,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomTabBar(
                                      tabs: ["Indoor", 'Outdoor']),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        IndoorScreen(),
                                        OutdoorScreen(),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomAreenaButton(
                                text: Apptext.cancel,
                                color: null,
                                borderColor: Color(0xFFE9EAF0),
                                textColor: AppColors.black,
                                onTap: () {
                                  Get.back();
                                },
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: CustomAreenaButton(
                                text: Apptext.next,
                                color: AppColors.black,
                                borderColor: AppColors.black,
                                textColor: AppColors.white,
                                onTap: () {
                                  Get.back();
                                  openBottomSheet(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),


                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}


