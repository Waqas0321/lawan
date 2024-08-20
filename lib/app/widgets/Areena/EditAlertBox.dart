import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/text.dart';
import 'AddArena1.dart';
import 'AlertBox.dart';
import 'ArenaFilled1.dart';
import 'areenaButton.dart';

void showCustomEditAlertDialog(final String text1, final String text2) {
  Get.dialog(AlertDialog(
    backgroundColor: Colors.transparent,
    contentPadding: EdgeInsets.zero, // Remove default padding
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(32), // Custom border radius
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
          color: AappColor.alertcolor, // Custom background color
          borderRadius: BorderRadius.circular(32), // Match the border radius
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
            Row(
              children: [
                SvgPicture.asset(
                  Images.pencil,
                  color: AappColor.white,
                ),
                // Image(image: AssetImage(Images.pencil,),color:AappColor.white,),
                SizedBox(
                  width: 8,
                ),
                Text(
                  text1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Lufga',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                  ),
                )
              ],
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: Container(
                height: 44,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
                child: Center(
                    child: Row(
                  children: [
                    Text(
                      text2,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
              ),
            ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: CustomAreenaButton(
                height: 49,
                text: "Cancel",
                color: null,
                borderColor: AappColor.borderColor,
                textColor: AappColor.black,
                onTap: () {
                  Get.back();
                },
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: Row(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContainer(
                    width: 44,
                    image:Images.trash,
                    icon: true,
                    height: 44,
                    text: "2",
                    color: null,
                    textColor: AappColor.dark_grey,
                    imageColor:AappColor.dark_grey,
                    circular: true,
                  ),
                  CustomAreenaButton(
                    height: 49,
                    text: "Update",
                    color: Colors.black,
                    borderColor: AappColor.black,
                    textColor: Colors.white,
                    onTap: () {
                      Get.back();
                      _openBottomSheet();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}

void _openBottomSheet() {
  Get.bottomSheet(acrylicAny(
    blurlevel: 3.4,
    child: Container(
      width: 393,
      height: 105,
      padding: const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xB2F2F3F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomAreenaButton(
                  text: Apptext.cancel,
                  color: null,
                  borderColor: Color(0xFFE9EAF0),
                  textColor: AappColor.black,
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: CustomAreenaButton(
                  text: "Save and Update",
                  color: AappColor.black,
                  borderColor: AappColor.black,
                  textColor: AappColor.white,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ));
}
