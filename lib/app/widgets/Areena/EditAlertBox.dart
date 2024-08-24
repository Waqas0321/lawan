import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/widgets/text_widget.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/text.dart';
import 'ArenaFilled1.dart';
import 'areenaButton.dart';

void showCustomEditAlertDialog(
    final String text1, final String text2, VoidCallback onTap,
    {bool isConfirmed = false,
    double buttonHeight = 49,
    String cancelButtonText = "Cancel",
    Color? cancelButtonColor,
    Color cancelButtonBorderColor = AppColors.borderColor,
    Color cancelButtonTextColor = AppColors.black,
    String updateButtonText = "Update",
    Color? updateButtonColor = Colors.black,
    Color updateButtonBorderColor = AppColors.black,
    Color updateButtonTextColor = Colors.white,
    double?
        updateButtonWidth, // Optional, dynamically calculated based on isConfirmed if not provided
    String? titleText, // Optional title text for the confirmed state
    String? title1,
    bool conFirmOnTapBottomSheet = true,
    }) {
  Get.dialog(AlertDialog(
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
            if (!isConfirmed)
              Row(
                children: [
                  SvgPicture.asset(
                    Images.pencil,
                    color: AppColors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    text1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                    ),
                  ),
                ],
              )
            else
              TextWidget(
                title: title1 ?? Apptext.confirm_update,
                fontWeight: FontWeight.w500,
                textColor: AppColors.black,
                fontSize: 16,
              ),
            SizedBox(height: 16),
            if (!isConfirmed)
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
                    ),
                  ),
                ),
              ),
            if (isConfirmed)
              TextWidget(
                title: titleText ?? "title",
                fontSize: 12,
                fontWeight: FontWeight.w400,
                textColor: AppColors.dark_grey,
              ),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: CustomAreenaButton(
                height: buttonHeight,
                text: cancelButtonText,
                color: cancelButtonColor,
                borderColor: cancelButtonBorderColor,
                textColor: cancelButtonTextColor,
                onTap: () {
                  Get.back();
                },
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (!isConfirmed)
                    InkWell(
                      onTap: onTap,
                      child: CustomContainer(
                        width: 44,
                        image: Images.trash,
                        icon: true,
                        height: 44,
                        text: "2",
                        color: null,
                        textColor: AppColors.dark_grey,
                        imageColor: AppColors.dark_grey,
                        circular: true,
                      ),
                    ),
                  SizedBox(width:Get.width*0.02,),
                  Expanded(
                    child: CustomAreenaButton(
                      height: buttonHeight,
                      text: updateButtonText,
                      width: updateButtonWidth ??
                          (!isConfirmed ? Get.width / 1.75 : Get.width / 1.4),
                      color: updateButtonColor,
                      borderColor: updateButtonBorderColor,
                      textColor: updateButtonTextColor,
                      onTap: () {
                        Get.back();
                        if(conFirmOnTapBottomSheet){
                          _openBottomSheet();
                        }else{
                          return null;
                        }



                      },
                    ),
                  ),
                  SizedBox(width:Get.width*0.01,),
                  CustomAreenaButton(
                    height: buttonHeight,
                    text: updateButtonText,
                    width: updateButtonWidth ??
                        (!isConfirmed ? Get.width / 1.65 : Get.width / 1.366),
                    color: updateButtonColor,
                    borderColor: updateButtonBorderColor,
                    textColor: updateButtonTextColor,
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
                  textColor: AppColors.black,
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: CustomAreenaButton(
                  text: "Save and Update",
                  color: AppColors.black,
                  borderColor: AppColors.black,
                  textColor: AppColors.white,
                  onTap: () {
                    Get.back();
                    showCustomEditAlertDialog(
                        "Edit Arena Name",
                        'MBPJ Sports Complex',
                        isConfirmed: true,
                        () {},
                        titleText: Apptext.Proceed_with_applying_the_changes,
                        updateButtonText: Apptext.Confirm,
                        updateButtonBorderColor: AppColors.black,
                        updateButtonColor: AppColors.black,
                        updateButtonTextColor: AppColors.white);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ));
}
