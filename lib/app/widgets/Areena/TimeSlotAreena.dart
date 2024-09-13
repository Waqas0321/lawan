import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/colors.dart';

import '../../utils/images.dart';

class TimeSlot extends StatelessWidget {
  final List<String> timeSlots;
  final String selectedTimeSlot;
  final bool isImage;
  final ValueChanged<String> onChanged;
  final bool isClock;
  final String imagepath;
  final Color  imagecolor;
  final bool forFriendly;
  final Color textcolor;
  TimeSlot({
    required this.timeSlots,
    required this.selectedTimeSlot,
    required this.onChanged,
    required this.isImage,
    this.isClock = true,
    this.forFriendly = false,
    this.imagepath=Images.exclamation_outline,
    this.imagecolor= AppColors.dark_grey,
    this.textcolor=Colors.black
  });

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: forFriendly? MediaQuery.of(context).size.width * 0.715:MediaQuery.of(context).size.width * 0.370,
        height: 45,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: forFriendly? BorderSide(width: 1, color: Color(0xFFE9EAF0)):BorderSide(width: 0, color: Color(0xFFE9EAF0)),
            borderRadius: BorderRadius.circular(80),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.03,
              right: MediaQuery.of(context).size.width * 0.05,
             ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedTimeSlot,
              icon: SvgPicture.asset(
                isImage == true
                    ? Images.dropdown
                    : Images.chevron_down, // Ensure this path is correct
                // width: MediaQuery.of(context).size.width * 0.0,
                // height: MediaQuery.of(context).size.height * 0.02,
              ),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  onChanged(newValue);
                }
              },
              items: timeSlots.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isClock
                          ? SvgPicture.asset(imagepath,color:imagecolor,)
                          : const SizedBox(
                              width: 1,
                            ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        value,
                        style: TextStyle(
                          color:textcolor,
                          fontSize: 14,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
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
