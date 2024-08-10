import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/widgets/Areena/TimeSlotAreena.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/text.dart';
import 'Add-Arena-Container.dart';
import 'AlertBox.dart';
import 'TimeSlotRow.dart';
import 'areenaButton.dart';

class AddAreena3 extends StatefulWidget {
  @override
  State<AddAreena3> createState() => _AddAreena3State();
}

class _AddAreena3State extends State<AddAreena3> {
  bool _isSelected = false;
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 377,
      height: 715,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: AappColor.gainsboro,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 0,
            offset: Offset(0, -0.50),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45, top: 16),
              child: Row(
                children: [
                  CustomCard(
                    count: '1',
                    text: Apptext.details,
                    color: AappColor.silver,
                    showline: true,
                    countcolor: AappColor.dark_grey,
                    textcolor: AappColor.mid_grey,
                    fontWeight: FontWeight.w400,
                  ),
                  CustomCard(
                    count: '1',
                    text: Apptext.hour,
                    color: AappColor.silver,
                    showline: true,
                    countcolor: AappColor.dark_grey,
                    textcolor: AappColor.mid_grey,
                    fontWeight: FontWeight.w400,
                  ),
                  CustomCard(
                    count: '3',
                    text: Apptext.rate,
                    color: AappColor.bluee,
                    showline: false,
                    countcolor: AappColor.white,
                    textcolor: AappColor.bluee,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ),
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
                TimeSlot(
                  timeSlots: weeksRate,
                  selectedTimeSlot: _selectedTimeSlot,
                  onChanged: _onTimeSlotChanged,
                  isImage: false,
                ),
                SizedBox(
                  width: 12,
                ),
                SizedBox(
                  width: 12,
                ),
                TimeSlot(
                  timeSlots: weekshours,
                  selectedTimeSlot: _selectedhrsTimeSlot,
                  onChanged: _onTimeSlotChanged,
                  isImage: false,
                ),
              ],
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
                TimeSlot(
                  timeSlots: weeksRate,
                  selectedTimeSlot: _selectedTimeSlot,
                  onChanged: _onTimeSlotChanged,
                  isImage: false,
                ),
                SizedBox(
                  width: 12,
                ),
                SizedBox(
                  width: 12,
                ),
                TimeSlot(
                  timeSlots: weekshours,
                  selectedTimeSlot: _selectedhrsTimeSlot,
                  onChanged: _onTimeSlotChanged,
                  isImage: false,
                ),
              ],
            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAreenaButton(
                  text: Apptext.cancel,
                  color: AappColor.white,
                  borderColor: Color(0xFFE9EAF0),
                  textColor: AappColor.black,
                  onTap: () {
                    Get.back();
                  },
                ),
                CustomAreenaButton(
                  text: Apptext.add_arena,
                  color: AappColor.black,
                  borderColor: Color(0xFFE9EAF0),
                  textColor: AappColor.white,
                  onTap: () {
                    showCustomAlertDialog(context);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }


}
