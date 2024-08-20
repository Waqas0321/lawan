import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/widgets/Areena/AddAreena3.dart';

import '../../utils/colors.dart';
import '../../utils/text.dart';
import 'TimeSlotAreena.dart';
import 'TimeSlotRow.dart';
import 'areenaButton.dart';
class HourSection extends StatefulWidget {
  const HourSection({super.key});

  @override
  State<HourSection> createState() => _HourSectionState();
}

class _HourSectionState extends State<HourSection> {
  bool _isSelectedSunday = true;
  bool _isSelectedSundayTwo = false;
  bool _isSelectedMonday = true;
  bool _isSelectedTuesday = false;
  bool _isSelectedWednesday = false;
  bool _isSelectedThurstday = false;
  bool _isSelectedFriday = false;
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
    return Material(
        color: Colors.transparent,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                rightText:Apptext.closed,
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
              SizedBox(height: MediaQuery.of(context).size.height*0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TimeSlot(
                      timeSlots: _timeSlots,
                      selectedTimeSlot: _selectedTimeSlot,
                      onChanged: _onTimeSlotChanged, isImage: true,
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
                      onChanged: _onTimeSlotChanged, isImage: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.014),
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
              SizedBox(height: MediaQuery.of(context).size.height*0.014),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TimeSlot(
                      timeSlots: _timeSlots,
                      selectedTimeSlot: _selectedTimeSlot,
                      onChanged: _onTimeSlotChanged, isImage: true,
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
                      onChanged: _onTimeSlotChanged, isImage: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.014),
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
              SizedBox(height: MediaQuery.of(context).size.height*0.014),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TimeSlot(
                      timeSlots: _timeSlots,
                      selectedTimeSlot: _selectedTimeSlot,
                      onChanged: _onTimeSlotChanged, isImage: true,
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
                      onChanged: _onTimeSlotChanged, isImage: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.014),
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
              SizedBox(height: MediaQuery.of(context).size.height*0.014),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Expanded(
                    child: TimeSlot(
                      timeSlots: _timeSlots,
                      selectedTimeSlot: _selectedTimeSlot,
                      onChanged: _onTimeSlotChanged, isImage: true,
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
                      onChanged: _onTimeSlotChanged, isImage: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.014),
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
              SizedBox(height:50,),
            ],
          ),
        )
    );
  }
}
void _openBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isDismissible: true,
    enableDrag: true,
    isScrollControlled: true, // Allows the bottom sheet to use full screen height
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return AddAreena3();
    },
  );
}

