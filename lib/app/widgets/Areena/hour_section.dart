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
import 'custom_header_count.dart';
class HourSection extends StatefulWidget {
  const HourSection({super.key});

  @override
  State<HourSection> createState() => _HourSectionState();
}

class _HourSectionState extends State<HourSection> {
  bool _isSelected = false;
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
    return Material(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16,),
          Text(
            Apptext.add_arena_details,
            style: TextStyle(
              color: AappColor.black,
              fontSize: 16,
              fontFamily: 'Lufga',
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            Apptext.set_standard_hours,
            style: TextStyle(
              color: AappColor.mid_grey,
              fontSize: 12,
              fontFamily: 'Lufga',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          CustomSwitchTimeslotRow(
            leftText: Apptext.sunday,
            rightText:Apptext.closed,
            isSelected: _isSelected,
            onChanged: (bool value) {
              setState(() {
                _isSelected = value;
              });
            },
          ),
          CustomSwitchTimeslotRow(
            leftText: Apptext.monday,
            rightText: Apptext.closed,
            isSelected: _isSelected,
            onChanged: (bool value) {
              setState(() {
                _isSelected = value;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimeSlot(
                timeSlots: _timeSlots,
                selectedTimeSlot: _selectedTimeSlot,
                onChanged: _onTimeSlotChanged, isImage: true,
              ),
              Expanded(
                child: SizedBox(
                  width: 12,
                ),
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
              Expanded(
                child: SizedBox(
                  width: 12,
                ),
              ),
              TimeSlot(
                timeSlots: _timeSlots,
                selectedTimeSlot: _selectedTimeSlot,
                onChanged: _onTimeSlotChanged, isImage: true,
              ),
            ],
          ),
          CustomSwitchTimeslotRow(
            leftText: Apptext.tuesdayoday,
            rightText: Apptext.open,
            isSelected: _isSelected,
            onChanged: (bool value) {
              setState(() {
                _isSelected = value;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimeSlot(
                timeSlots: _timeSlots,
                selectedTimeSlot: _selectedTimeSlot,
                onChanged: _onTimeSlotChanged, isImage: true,
              ),
              Expanded(
                child: SizedBox(
                  width: 12,
                ),
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
              Expanded(
                child: SizedBox(
                  width: 12,
                ),
              ),
              TimeSlot(
                timeSlots: _timeSlots,
                selectedTimeSlot: _selectedTimeSlot,
                onChanged: _onTimeSlotChanged, isImage: true,
              ),
            ],
          ),
          CustomSwitchTimeslotRow(
            leftText: Apptext.wednesday,
            rightText: Apptext.open,
            isSelected: _isSelected,
            onChanged: (bool value) {
              setState(() {
                _isSelected = value;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimeSlot(
                timeSlots: _timeSlots,
                selectedTimeSlot: _selectedTimeSlot,
                onChanged: _onTimeSlotChanged, isImage: true,
              ),
              Expanded(
                child: SizedBox(
                  width: 12,
                ),
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
              Expanded(
                child: SizedBox(
                  width: 12,
                ),
              ),
              TimeSlot(
                timeSlots: _timeSlots,
                selectedTimeSlot: _selectedTimeSlot,
                onChanged: _onTimeSlotChanged, isImage: true,
              ),
            ],
          ),
          CustomSwitchTimeslotRow(
            leftText: Apptext.friday,
            rightText: Apptext.open,
            isSelected: _isSelected,
            onChanged: (bool value) {
              setState(() {
                _isSelected = value;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              TimeSlot(
                timeSlots: _timeSlots,
                selectedTimeSlot: _selectedTimeSlot,
                onChanged: _onTimeSlotChanged, isImage: true,
              ),
              Expanded(
                child: SizedBox(
                  width: 12,
                ),
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
              Expanded(
                child: SizedBox(
                  width: 12,
                ),
              ),
              TimeSlot(
                timeSlots: _timeSlots,
                selectedTimeSlot: _selectedTimeSlot,
                onChanged: _onTimeSlotChanged, isImage: true,
              ),
            ],
          ),
          CustomSwitchTimeslotRow(
            leftText: Apptext.sunday,
            rightText: Apptext.open,
            isSelected: _isSelected,
            onChanged: (bool value) {
              setState(() {
                _isSelected = value;
              });
            },
          ),
          SizedBox(height:40,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomAreenaButton(
                  text: Apptext.cancel,
                  color: AappColor.white,
                  borderColor: Color(0xFFE9EAF0),
                  textColor: AappColor.black,
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              SizedBox(width: 16,),
              Expanded(
                child: CustomAreenaButton(
                  text: Apptext.next,
                  color: AappColor.black,
                  borderColor: Color(0xFFE9EAF0),
                  textColor: AappColor.white,
                  onTap: () {
                    Get.back();
                    _openBottomSheet(context);
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 20,)

        ],
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

