
import 'package:flutter/material.dart';

import '../utils/images.dart';

class TimeSlotHome extends StatelessWidget {
  final List<String> timeSlots;
  final String selectedTimeSlot;
  final bool isImage;
  final ValueChanged<String> onChanged;
  final bool isText;
  final double isWidth;
  final Image image;
  TimeSlotHome({
    required this.timeSlots,
    required this.selectedTimeSlot,
    required this.onChanged, required this.isImage,
    this.isText = true,
    required this.isWidth, required this.image,

  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: isWidth,
        height: 44,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFE9EAF0)),
            borderRadius: BorderRadius.circular(80),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedTimeSlot,
              icon: Image.asset(
                isImage==true?Images.chevron_sort:Images.chevron_down, // Ensure this path is correct
                width: 16,
                height: 16,
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
                    padding: const EdgeInsets.only(right: 3.0,left: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         image,
                        SizedBox(width:6,),
                        isText? Text(
                            value,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Lufga',
                              fontWeight: FontWeight.w500,
                            )
                        ): SizedBox(width: 6)
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