import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/screens/AddMenualBooking_Screen/Indoor_Screen.dart';
import 'package:lawan/app/screens/AddMenualBooking_Screen/Outdoor_Screen.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/widgets/Areena/AddArena1.dart';
import 'package:lawan/app/widgets/Areena/TimeSlotAreena.dart';
import 'package:lawan/app/widgets/Session_Screen/calander.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../utils/text.dart';
import '../Areena/areenaButton.dart';
import '../Areena/custom_header_count.dart';
import '../Areena/custom_tabbar.dart';
import '../Areena/details_section.dart';
import '../Areena/hour_section.dart';
import 'HourButtons.dart';

class MenualBottomsheet2 extends StatefulWidget {
  const MenualBottomsheet2({super.key});

  @override
  State<MenualBottomsheet2> createState() => _MenualBottomsheet2State();
}

class _MenualBottomsheet2State extends State<MenualBottomsheet2> {
  late bool selected1HR = false;
  late bool selected2HR = true;
  late bool selected3HR = false;
  late bool selected4HR = false;
  late bool selected5HR = false;
  final List<String> _timeSlots = [
    '8:00 AM',
    '9:00 AM',
    '10:00 AM',
    '11:00 AM'
  ];
  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return MenualBottomsheet2();
      },
    );
  }

  // Currently selected time slot
  String _selectedTimeSlot = '8:00 AM';

  void _onTimeSlotChanged(String newValue) {
    setState(() {
      _selectedTimeSlot = newValue;
    });
  }

  void _onButtonPressHR(String text) {
    setState(() {
      switch (text) {
        case "1hr":
          selected1HR = true;
          selected2HR = false;
          selected3HR = false;
          selected4HR = false;
          selected5HR = false;
          break;
        case "2hr":
          selected1HR = false;
          selected2HR = true;
          selected3HR = false;
          selected4HR = false;
          selected5HR = false;
          break;
        case "3hr":
          selected1HR = false;
          selected2HR = false;
          selected3HR = true;
          selected4HR = false;
          selected5HR = false;
          break;
        case "4hr":
          selected1HR = false;
          selected2HR = false;
          selected3HR = false;
          selected4HR = true;
          selected5HR = false;
          break;
        case "5hr":
          selected1HR = false;
          selected2HR = false;
          selected3HR = false;
          selected4HR = false;
          selected5HR = true;
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return acrylicAny(
      blurlevel: 3,
      child: Container(
          height: Get.height * 0.9,
          width: MediaQuery.of(context).size.width - 16,
          margin: EdgeInsets.only(bottom: 8),
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
                ),
                SizedBox(height: 28),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      title: 'Select Date',
                      textColor: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,

                    ),
                    TextWidget(
                      title: 'Choose the time and slot',
                      textColor: AppColors.textSecondColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,

                    ),
                    SizedBox(height: 8),
                    Column(
                      children: [
                        Container(
                          height:
                          MediaQuery.of(context).size.height / 1.72,
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
                        SizedBox(height: 16),
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
                        SizedBox(height: 16,)
                      ],
                    )

                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}


