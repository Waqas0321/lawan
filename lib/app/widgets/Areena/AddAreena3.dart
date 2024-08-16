import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
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
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width +20,
        height: 735,
        clipBehavior: Clip.antiAlias,
        margin:EdgeInsets.all(8),

        decoration: ShapeDecoration(
          color: AappColor.Grey1,
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
          padding: const EdgeInsets.only(left: 16, right: 16,top:30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customHeaderCount(
                thisCount: "3",
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
                  Expanded(
                    child: TimeSlotTwo(
                      isRight: true,
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
                    child: TimeSlotTwo(
                      isLeft: true,
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
              Expanded(child: CustomContainerAreena3( text1: 'Listing Price',text2: 'RM220',text3: '20% hosting fee by Lawan included',
              )),
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
                    child: TimeSlotTwo(
                      isRight: true,
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
                    child: TimeSlotTwo(
                      isLeft: true,
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
              Expanded(child: CustomContainerAreena3(text1: 'Listing Price',text2: 'RM220',text3: '20% hosting fee by Lawan included',)),
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
          ),
        ),
      ),
    );
  }


}


