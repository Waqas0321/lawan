import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/widgets/Areena/TimeSlotAreena.dart';
import 'package:lawan/app/widgets/Areena/custom_header_count.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/text.dart';
import 'Add-Arena-Container.dart';
import 'AddAreena3.dart';
import 'AddArena1.dart';
import 'TimeSlotRow.dart';
import 'ar-in-out-button.dart';
import 'areenaButton.dart';
import 'custom-Arena-textform.dart';
import 'customToggle.dart';

class AddAreena2 extends StatefulWidget {
  @override
  State<AddAreena2> createState() => _AddAreena2State();
}

class _AddAreena2State extends State<AddAreena2> {
  bool _isSelectedSunday = true;
  bool _isSelectedSundayTwo = false;
  bool _isSelectedMonday = true;
  bool _isSelectedTuesday = false;
  bool _isSelectedWednesday = false;
  bool _isSelectedThurstday = false;
  bool _isSelectedFriday = false;

  // Sample time slots
  final List<String> _timeSlots = [
    '8:00 AM',
    '9:00 AM',
    '10:00 AM',
    '11:00 AM'
  ];

  // Currently selected time slot
  String _selectedTimeSlot = '8:00 AM';

  void _onTimeSlotChanged(String newValue) {
    setState(() {
      _selectedTimeSlot = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
        child: Container(
          width: MediaQuery.of(context).size.width - 16,
          margin: EdgeInsets.only(bottom: 16, left: 1, right: 1),
          height: MediaQuery.of(context).size.height * 0.78,
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
                  thisCount: "2",
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                SizedBox(
                  width: 345,
                  child: Text(
                    'Set Standard Hours',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w600,
                      height: 0.09,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                SizedBox(
                  width: 345,
                  child: Text(
                    'Standard hours of operation for this arena',
                    style: TextStyle(
                      color: Color(0xFF545F71),
                      fontSize: 12,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w400,
                      height: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.012,
                ),
                CustomSwitchTimeslotRow(
                  leftText: Apptext.sunday,
                  rightText: Apptext.closed,
                  isSelected: _isSelectedSunday,
                  onChanged: (bool value) {
                    setState(() {
                      _isSelectedSunday = value;
                    });
                  },
                ),
                SizedBox(height: 8),
                CustomSwitchTimeslotRow(
                  leftText: Apptext.monday,
                  rightText: Apptext.closed,
                  isSelected: _isSelectedMonday,
                  onChanged: (bool value) {
                    setState(() {
                      _isSelectedMonday = value;
                    });
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
                      width: 12,
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
                      width: 12,
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.014),
                CustomSwitchTimeslotRow(
                  leftText: Apptext.tuesdayoday,
                  rightText: Apptext.open,
                  isSelected: _isSelectedTuesday,
                  onChanged: (bool value) {
                    setState(() {
                      _isSelectedTuesday = value;
                    });
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.014),
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
                      width: 12,
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
                      width: 12,
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.014),
                CustomSwitchTimeslotRow(
                  leftText: Apptext.wednesday,
                  rightText: Apptext.open,
                  isSelected: _isSelectedWednesday,
                  onChanged: (bool value) {
                    setState(() {
                      _isSelectedWednesday = value;
                    });
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.014),
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
                      width: 12,
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
                      width: 12,
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.014),
                CustomSwitchTimeslotRow(
                  leftText: Apptext.friday,
                  rightText: Apptext.open,
                  isSelected: _isSelectedFriday,
                  onChanged: (bool value) {
                    setState(() {
                      _isSelectedFriday = value;
                    });
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.014),
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
                SizedBox(height: MediaQuery.of(context).size.height * 0.014),
                CustomSwitchTimeslotRow(
                  leftText: Apptext.sunday,
                  rightText: Apptext.open,
                  isSelected: _isSelectedSundayTwo,
                  onChanged: (bool value) {
                    setState(() {
                      _isSelectedSundayTwo = value;
                    });
                  },
                ),
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
                          _openBottomSheet(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled:
          true, // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AddAreena3();
      },
    );
  }
}
