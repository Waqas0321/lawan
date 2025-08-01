import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/text.dart';

import '../../../main.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import 'customToggle.dart';

class CustomSwitchTimeslotRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  final bool isSelected;
  final ValueChanged<bool> onChanged;
  final bool forFriendly;
  final String opentext;
  final String closetext;
  final String imagepath;
  CustomSwitchTimeslotRow({
    this.forFriendly = false,
    required this.leftText,
    required this.rightText,
    required this.isSelected,
    required this.onChanged,
    this.closetext=Apptext.closed,
    this.opentext=Apptext.open,
    this.imagepath=Images.clock,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 0, right: 0), // Adjust height as needed
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Text(
              leftText,
              style: TextStyle(
                color: isSelected ?  AppColors.dark_grey : forFriendly?AppColors.dark_grey: Color(0xFF8A96A8),
                fontSize: 14,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
          ),
          Spacer(),
          Text(
            isSelected ? opentext : closetext,
            style: TextStyle(
              color: isSelected ? AppColors.dark_grey : forFriendly?AppColors.dark_grey : Color(0xFF8A96A8),
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
              width: 32,
              height: 16,
              activeColor: Colors.white,
              inactiveColor: AppColors.dark_grey,
              activeTrackColor: AppColors.brand2,
              inactiveTrackColor: null,
              borderColor: isSelected ? AppColors.brand2 : AppColors.dark_grey,
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
