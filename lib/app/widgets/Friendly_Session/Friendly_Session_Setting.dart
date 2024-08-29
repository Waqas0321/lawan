import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/search_TextField.dart';
import 'package:lawan/app/widgets/text_widget.dart';
import '../../utils/colors.dart';
import '../../utils/text.dart';
import '../Areena/EditAlertBox.dart';
import '../Areena/areenaButton.dart';
import '../Areena/custom_header_count.dart';

class FriendlySessionSetting extends StatefulWidget {
  const FriendlySessionSetting({super.key});

  @override
  State<FriendlySessionSetting> createState() => _FriendlySessionSettingState();
}

class _FriendlySessionSettingState extends State<FriendlySessionSetting> {
  @override
  Widget build(BuildContext context) {
    return acrylicAny(
      blurlevel: 3,
      child: Container(
          height: Get.height * 0.9,
          width: MediaQuery.of(context).size.width - 16,
          margin: EdgeInsets.only(bottom: 8),
          padding: EdgeInsets.all(16),
          decoration: ShapeDecoration(
              color: AppColors.alertcolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              shadows: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 0,
                  offset: Offset(0, -0.50),
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customHeaderCount(
                    thisCount: "3",
                    text1: 'Slot',
                    text2: 'Arena',
                    text3: 'Setting',
                    text4: 'Pay',
                    hasFourth: true,
                  ),
                  SizedBox(height: 28),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        title: 'Session Setting',
                        textColor: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      TextWidget(
                        title:
                        'Configure session preferences',
                        textColor: AppColors.textSecondColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 16),
                      TextWidget(
                        title: 'Invite Friend(s)',
                        textColor: AppColors.textSecondColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
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
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomAreenaButton(
                      text: Apptext.next,
                      color: AppColors.black,
                      borderColor: AppColors.black,
                      textColor: AppColors.white,
                      onTap: () {
                        showCustomEditAlertDialog(
                            conFirmOnTapBottomSheet: false,
                            title1: "Confirm Booking",
                            "Edit Arena Name",
                            'MBPJ Sports Complex',
                            isConfirmed: true,
                                () {},
                            titleText:
                            "Are you sure you want to add this booking?",
                            updateButtonText: "Confirm",
                            updateButtonBorderColor: AppColors.black,
                            updateButtonColor: AppColors.black,
                            updateButtonTextColor: AppColors.white);
                      },
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
