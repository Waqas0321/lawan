import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../utils/colors.dart';

class CustomSwitchTimeslotRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  final bool isSelected;
  final ValueChanged<bool> onChanged;

  CustomSwitchTimeslotRow({
    required this.leftText,
    required this.rightText,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345,
      height: 40, // Adjust height as needed
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Text(
              leftText,
              style: TextStyle(
                color: Color(0xFF545F71),
                fontSize: 14,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Spacer(),
          Text(
            rightText,
            style: TextStyle(
              color: Color(0xFFACB3C0),
              fontSize: 14,
              fontFamily: 'Lufga',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: CustomSwitch(
              value: isSelected,
              onChanged: onChanged,
              width: 40,
              height: 20,
              activeColor: Colors.white,
              inactiveColor: AappColor.mid_grey,
              activeTrackColor: AappColor.black,
              inactiveTrackColor: AappColor.white,
              borderColor: AappColor.mid_grey,
              borderWidth: 2.0,
              thumbBorderColor: Colors.red,
              thumbBorderWidth: 5.0,
            ),
          ),
        ],
      ),
    );
  }
}