import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import '../../utils/text.dart';
import 'AlertBox.dart';
import 'TimeSlotAreena.dart';
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
    'RM         200',
    'RM         300',
  ];

  // Currently selected time slot
  String _selectedTimeSlot = 'RM         200';
  String _selectedhrsTimeSlot = '1         hr';

  final List<String> weekshours = [
    '1         hr',
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
        SizedBox(
          height: 16,
        ),
        Text(
          Apptext.configure_the_rate_for_the_arena,
          style: TextStyle(
            color: AappColor.black,
            fontSize: 16,
            fontFamily: 'Lufga',
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          Apptext.standard_hours_of_operation,
          style: TextStyle(
            color: AappColor.mid_grey,
            fontSize: 12,
            fontFamily: 'Lufga',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Weekend Rate',
          style: TextStyle(
            color: Color(0xFF545F71),
            fontSize: 14,
            fontFamily: 'Lufga',
            fontWeight: FontWeight.w400,
            height: 0.11,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: TimeSlot(
                isClock: false,
                timeSlots: weeksRate,
                selectedTimeSlot: _selectedTimeSlot,
                onChanged: _onTimeSlotChanged,
                isImage: true,
              ),
            ),
            SizedBox(
              width: 22,
            ),

            Expanded(
              child: TimeSlot(
                isClock: false,
                timeSlots: weekshours,
                selectedTimeSlot: _selectedhrsTimeSlot,
                onChanged: _onTimeSlotChangedTwo,
                isImage: true,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          width: double.infinity,
          child: CustomContainerAreena3( text1: 'Listing Price',text2: 'RM220',text3: '20% hosting fee by Lawan included',
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Weekend Rate',
          style: TextStyle(
            color: Color(0xFF545F71),
            fontSize: 14,
            fontFamily: 'Lufga',
            fontWeight: FontWeight.w400,
            height: 0.11,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: TimeSlot(
                isClock: false,
                timeSlots: weeksRate,
                selectedTimeSlot: _selectedTimeSlot,
                onChanged: _onTimeSlotChanged,
                isImage: true,
              ),
            ),
            SizedBox(
              width: 22,
            ),
            Expanded(
              child: TimeSlot(
                isClock: false,
                timeSlots: weekshours,
                selectedTimeSlot: _selectedhrsTimeSlot,
                onChanged: _onTimeSlotChangedTwo,
                isImage: true,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
            width: double.infinity,
            child: CustomContainerAreena3(text1: 'Listing Price',text2: 'RM220',text3: '20% hosting fee by Lawan included',)),
        SizedBox(
          height: 16,
        ),
        Spacer(),
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
                text: Apptext.add_arena,
                color: AappColor.black,
                borderColor: Color(0xFFE9EAF0),
                textColor: AappColor.white,
                onTap: () {
                  showCustomAlertDialog(context,'Arena Added Successfully!','You can now start earning from this arena',true,'Add Another Court','Done');
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
