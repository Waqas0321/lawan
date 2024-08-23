import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import '../Areena/areenaButton.dart';
import '../text_widget.dart';
class CustomAlertBox extends StatelessWidget {
  const CustomAlertBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      content: acrylicAny(
          blurlevel: 3,
          child: Container(
            width: 361,
            padding: const EdgeInsets.only(
              top: 24,
              left: 16,
              right: 16,
              bottom: 16,
            ),
            decoration: BoxDecoration(
              color: AppColors.alertcolor,
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 0,
                  offset: Offset(0, -0.50),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextWidget(
                  title: 'Confirm Booking',
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.black,
                  fontSize: 16,
                ),
                SizedBox(height: 8),
                TextWidget(
                  title: "Are you sure you want to add this booking?",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.dark_grey,
                ),
                SizedBox(height: 24,),
                SizedBox(
                  width: double.infinity,
                  child: CustomAreenaButton(
                    height: 49,
                    text: 'Cancel',
                    color: Colors.transparent,
                    borderColor: Colors.white,
                    textColor: Colors.black,
                    onTap: () {
                      Get.back();
                    },
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: CustomAreenaButton(
                    height: 49,
                    text: 'Confirm',
                    color: Colors.black,
                    borderColor: Colors.black,
                    textColor: Colors.white,
                    onTap: () {
                      Get.back();
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
}