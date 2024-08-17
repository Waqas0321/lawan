import 'package:flutter/material.dart';

import '../../utils/images.dart';

class TimeSlot extends StatelessWidget {
  final List<String> timeSlots;
  final String selectedTimeSlot;
  final bool isImage;
  final ValueChanged<String> onChanged;
  final bool isClock;
  TimeSlot({
    required this.timeSlots,
    required this.selectedTimeSlot,
    required this.onChanged, required this.isImage,
     this.isClock = true,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.388,
        height: 45,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFE9EAF0)),
            borderRadius: BorderRadius.circular(80),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16,top: 12,bottom: 12),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedTimeSlot,
              icon: Image.asset(
                isImage==true?Images.chevron_sort:Images.chevron_down, // Ensure this path is correct
                width: 18,
                height: 18,
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
                        isClock? Image.asset(Images.clock):const SizedBox(width: 1,),
                        const SizedBox(width:5,),
                        Text(
                          value,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Lufga',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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