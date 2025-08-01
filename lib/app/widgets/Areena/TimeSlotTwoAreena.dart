
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/images.dart';

class TimeSlotTwo extends StatelessWidget {
  final List<String> timeSlots;
  final String selectedTimeSlot;
  final bool isImage;
  final ValueChanged<String> onChanged;
  final bool isClock;
  final FontWeight font1;
  final FontWeight font2;
  final bool isRight;
  final bool isLeft;
  final double padding;
  TimeSlotTwo({
    required this.timeSlots,
    required this.selectedTimeSlot,
    required this.onChanged, required this.isImage,
    this.isClock = true, this.font1 = FontWeight.w500, this.font2 = FontWeight.w400,
    this.isRight = false,
    this.isLeft = false,
    this.padding=0.0,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.388,
        height: 44,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            // side: BorderSide(width: 1, color: Color(0xFFE9EAF0)),
            borderRadius: BorderRadius.circular(80),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:0,right:18),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedTimeSlot,
              icon: SvgPicture.asset(
                isImage==true?Images.dropdown:Images.chevron_down, // Ensure this path is correct
                width: 10,
                height: 15,
              ),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  onChanged(newValue);
                }
              },
              items: timeSlots.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width:10,),
                        isClock? Image.asset(Images.clock):SizedBox(width: 1,),
                        SizedBox(width:5,),
                        isRight?  Text(
                          "RM",
                          style: TextStyle(
                            color: Color(0xFF545F71),
                            fontSize: 14,
                            fontFamily: 'Lufga',
                            fontWeight: FontWeight.w400,
                          )
                        ):SizedBox(width: 0,),
                        // SizedBox(width: 12,),
                        Padding(
                          padding:  EdgeInsets.only(left:padding),
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Lufga',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        isLeft? Text(
                            "Hour",
                            style: TextStyle(
                              color: Color(0xFF545F71),
                              fontSize: 14,
                              fontFamily: 'Lufga',
                              fontWeight: FontWeight.w400,
                            )
                        ):SizedBox(width: 0,)
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
