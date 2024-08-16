import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      padding: EdgeInsets.only(
        left: 5,
      ),
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
                color: AappColor.txtColor,
                fontSize: 14,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Spacer(),
          Text(
            isSelected ? "open" : "closed",
            style: TextStyle(
              color: isSelected ? AappColor.dark_grey : AappColor.mid_grey,
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
              activeTrackColor: AappColor.brand2,
              inactiveTrackColor: AappColor.white,
              borderColor: isSelected ? AappColor.brand2 : AappColor.dark_grey,
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
