import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import '../../utils/text.dart';
import 'AddAreena3.dart';
import 'AlertBox.dart';
import 'TimeSlotAreena.dart';
import 'TimeSlotTwoAreena.dart';
import 'areenaButton.dart';
import 'custom_container_Add_Areena3.dart';
import 'custom_header_count.dart';

class RateSection extends StatefulWidget {
  const RateSection({super.key});

  @override
  State<RateSection> createState() => _RateSectionState();
}

class _RateSectionState extends State<RateSection> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text(
          "Court Rate",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 16,
            fontFamily: 'Lufga',
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "Customize to fit your needs",
          style: TextStyle(
            color: AppColors.mid_grey,
            fontSize: 12,
            fontFamily: 'Lufga',
            fontWeight: FontWeight.w400,
          ),
        ),
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
      ],
    );
  }
}
