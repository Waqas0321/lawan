import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/widgets/Areena/AddArena1.dart';
import 'package:lawan/app/widgets/Areena/TimeSlotAreena.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/MenualBottomSheet2.dart';
import 'package:lawan/app/widgets/Session_Screen/Expandable_calander.dart';
import 'package:lawan/app/widgets/Session_Screen/UnExpandable_calender.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../utils/text.dart';
import '../Areena/areenaButton.dart';
import '../Areena/custom_header_count.dart';
import 'HourButtons.dart';

class MenualBottomsheet1 extends StatefulWidget {
  const MenualBottomsheet1({super.key});

  @override
  State<MenualBottomsheet1> createState() => _MenualBottomsheet1State();
}

class _MenualBottomsheet1State extends State<MenualBottomsheet1> {
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
          padding: EdgeInsets.all(16),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customHeaderCount(
                    thisCount: "1",
                    text1: 'Slot',
                    text2: 'Arena',
                    text3: 'Details',
                  ),
                  SizedBox(height: 28),
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
                  UnExpandableCustomCalender(
                    isSecondDessign: true,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HourContainer(
                        isSelected: selected1HR,
                          onPressFun: (){
                            _onButtonPressHR("1hr");
                          },
                          text: '1 hr'),
                      HourContainer(
                          isSelected: selected2HR,
                          onPressFun: (){
                            _onButtonPressHR("2hr");
                          },
                          text: '2 hr'),
                      HourContainer(
                          isSelected: selected3HR,
                          onPressFun: (){
                            _onButtonPressHR("3hr");
                          },
                          text: '3 hr'),
                      HourContainer(
                          isSelected: selected4HR,
                          onPressFun: (){
                            _onButtonPressHR("4hr");
                          },
                          text: '4 hr'),
                      HourContainer(
                          isSelected: selected5HR,
                          onPressFun: (){
                            _onButtonPressHR("5hr");
                          },
                          text: '5 hr'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TimeSlot(
                          timeSlots: _timeSlots,
                          selectedTimeSlot: _selectedTimeSlot,
                          onChanged: _onTimeSlotChanged,
                          isImage: true,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'to',
                        style: TextStyle(
                          color: Color(0xFF545F71),
                          fontSize: 14,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TimeSlot(
                          timeSlots: _timeSlots,
                          selectedTimeSlot: _selectedTimeSlot,
                          onChanged: _onTimeSlotChanged,
                          isImage: true,
                        ),
                      ),
                    ],
                  ),


                ],
              ),
              SizedBox(height: 32),
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
        )
      ),
    );
  }
}


