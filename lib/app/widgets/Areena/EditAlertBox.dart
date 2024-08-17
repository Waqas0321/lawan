import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/widgets/Areena/custom-Arena-textform.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/text.dart';
import 'AddArena1.dart';
import 'AlertBox.dart';
import 'ArenaFilled1.dart';
import 'areenaButton.dart';

void showCustomEditAlertDialog(BuildContext context, final String text1, final String text2) {
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
            bottom: 16,
          ),
          decoration: ShapeDecoration(
            color: Color(0xB2F2F3F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image(image: AssetImage(Images.pencil,),color:AappColor.white,),
                    SizedBox(width: 8,),
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
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
                    )
                  ),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: CustomAreenaButton(
                  height: 49,
                  text: "Cancel",
                  color: Colors.white,
                  borderColor:AappColor.borderColor,
                  textColor:AappColor.black,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: CustomAreenaButton(
                  height: 49,
                  text: "Update",
                  color: Colors.black,
                  borderColor: Color(0xFFE9EAF0),
                  textColor: Colors.white,
                  onTap: () {
                    Navigator.pop(context);
                  _openBottomSheet(context);
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
void _openBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isDismissible: true,
    enableDrag: true,
    isScrollControlled: true,
    // Allows the bottom sheet to use full screen height
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Container(
          width: MediaQuery.of(context).size.width - 16,
          height: 105,
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomAreenaButton(
                    text: Apptext.cancel,
                    color: AappColor.white,
                    borderColor: Color(0xFFE9EAF0),
                    textColor: AappColor.black,
                    onTap: () {
                      Get.back();
                    },
                  ),
                ),
                SizedBox(width: 16,),
                Expanded(
                  child: CustomAreenaButton(
                    text: "Save & Update",
                    color: AappColor.black,
                    borderColor: Color(0xFFE9EAF0),
                    textColor: AappColor.white,
                    onTap: () {
                      showCustomAlertDialog(context,"Confirm Update?",'Proceed with applying the changes.',false,'Cancel','Confirm');
                    },
                  ),
                ),
              ],
            ),
          ),
      );
    },
  );
}

