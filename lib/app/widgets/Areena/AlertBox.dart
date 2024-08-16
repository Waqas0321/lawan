import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/widgets/Areena/ArenaFilled1.dart';

import '../../utils/images.dart';
import 'areenaButton.dart';

void showCustomAlertDialog(BuildContext context,final String text1,final String text2, final bool image,final String buttonText1, final String buttonText2) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        child: Container(
          width: 361,
          padding: const EdgeInsets.only(
            top: 24,
            left: 16,
            right: 16,
            bottom: 24
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text1,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
             image? Image.asset(
                Images.frame1,
                color: AappColor.bluee, // Replace with your color if needed
              ):SizedBox(height: 4,),
              SizedBox(height: 8),
              Text(
                text2,
                style: TextStyle(
                  color:AappColor.mid_grey,
                  fontSize: 12,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 24),
              CustomAreenaButton(
                width: 329,
                height: 49,
                text: buttonText1,
                color: Colors.white,
                borderColor:AappColor.borderColor,
                textColor:AappColor.black,
                onTap: () {},
              ),
              SizedBox(height: 8),
              CustomAreenaButton(
                width: 329,
                height: 49,
                text: buttonText2,
                color: Colors.black,
                borderColor: Color(0xFFE9EAF0),
                textColor: Colors.white,
                onTap: () {
Get.back();                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
