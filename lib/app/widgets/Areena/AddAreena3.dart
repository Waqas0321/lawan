import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lawan/app/widgets/Areena/ArenaFilled1.dart';
import 'package:lawan/app/widgets/Areena/TimeSlotTwoAreena.dart';
import 'package:lawan/app/widgets/Areena/custom_container_Add_Areena3.dart';
import '../../utils/colors.dart';
import '../../utils/text.dart';
import 'AlertBox.dart';
import 'areenaButton.dart';
import 'custom_header_count.dart';

class AddAreena3 extends StatefulWidget {
  @override
  State<AddAreena3> createState() => _AddAreena3State();
}

class _AddAreena3State extends State<AddAreena3> {
  // Sample time slots
  final List<String> weeksRate = [
    '200',
    '300',
  ];

  // Currently selected time slot
  String _selectedTimeSlot = '200';
  String _selectedhrsTimeSlot = '1';

  final List<String> weekshours = [
    '1',
  ];

  void _onTimeSlotChanged(String newValue) {
    setState(() {
      _selectedTimeSlot = newValue;
    });
  }

  void _onTimeSlotChangedTwo(String newValue) {
    setState(() {
      _selectedhrsTimeSlot = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 6, sigmaX: 6),
      child: Container(
        width: MediaQuery.of(context).size.width - 16,
        height: 711,
        margin: EdgeInsets.only(bottom: 20),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xB2F2F3F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 10,
              offset: Offset(0, -0.50),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customHeaderCount(
                thisCount: "3",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                'Configure the rate',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
              Text(
                'Customize to fit your needs',
                style: TextStyle(
                  color: Color(0xFF545F71),
                  fontSize: 12,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              Text(
                'Weekend Rate',
                style: TextStyle(
                  color: Color(0xFF545F71),
                  fontSize: 14,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeSlotTwo(
                      padding: 10,
                      isRight: true,
                      isClock: false,
                      timeSlots: weeksRate,
                      selectedTimeSlot: _selectedTimeSlot,
                      onChanged: _onTimeSlotChanged,
                      isImage: true,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    TimeSlotTwo(
                      isLeft: true,
                      isClock: false,
                      timeSlots: weekshours,
                      selectedTimeSlot: _selectedhrsTimeSlot,
                      onChanged: _onTimeSlotChangedTwo,
                      isImage: true,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: double.infinity,
                  child: CustomContainerAreena3(
                    text1: 'Listing Price',
                    text2: 'RM220',
                    text3: '20% hosting fee by Lawan included',
                  )),
              SizedBox(
                height: 16,
              ),
              customText(text: "Weekend Rate"),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TimeSlotTwo(
                      isRight: true,
                      padding: 10,
                      isClock: false,
                      timeSlots: weeksRate,
                      selectedTimeSlot: _selectedTimeSlot,
                      onChanged: _onTimeSlotChanged,
                      isImage: true,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    TimeSlotTwo(
                      isLeft: true,
                      isClock: false,
                      timeSlots: weekshours,
                      selectedTimeSlot: _selectedhrsTimeSlot,
                      onChanged: _onTimeSlotChangedTwo,
                      isImage: true,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: double.infinity,
                  child: CustomContainerAreena3(
                    text1: 'Listing Price',
                    text2: 'RM220',
                    text3: '20% hosting fee by Lawan included',
                  )),
              Spacer(),
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
                  SizedBox(width: 12),
                  Expanded(
                    child: CustomAreenaButton(
                      text: Apptext.add_arena,
                      color: AppColors.black,
                      borderColor: AppColors.black,
                      textColor: AppColors.white,
                      onTap: () {
                        Get.to(AreenaFilled1());
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class customText extends StatelessWidget {
  const customText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 4),
        child: Text(
          text,
          style: TextStyle(
              color: AppColors.dark_grey,
              fontSize: 14,
              fontFamily: 'Lufga',
              fontWeight: FontWeight.w400,
              height: 1.5),
        ),
      ),
    );
  }
}
