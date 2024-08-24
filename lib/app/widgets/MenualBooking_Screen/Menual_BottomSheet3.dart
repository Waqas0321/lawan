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

class MenualBottomSheet3 extends StatefulWidget {
  const MenualBottomSheet3({super.key});

  @override
  State<MenualBottomSheet3> createState() => _MenualBottomSheet3State();
}

class _MenualBottomSheet3State extends State<MenualBottomSheet3> {
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
                    text3: 'Details',
                  ),
                  SizedBox(height: 28),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        title: 'Add Manual Booking',
                        textColor: AppColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      TextWidget(
                        title:
                            'Sync with online booking. Key in the details below.',
                        textColor: AppColors.textSecondColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 12),
                      TextWidget(
                        title: 'First Name',
                        textColor: AppColors.textSecondColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                          width: double.infinity,
                          child: MenualBookigTextField(
                            hintText: 'Enter Name',
                            isThirdSheet: true,
                          )),
                      SizedBox(height: 12),
                      TextWidget(
                        title: 'Last Name',
                        textColor: AppColors.textSecondColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                          width: double.infinity,
                          child: MenualBookigTextField(
                            hintText: 'Enter Name',
                            isThirdSheet: true,
                          )),
                      SizedBox(height: 12),
                      TextWidget(
                        title: 'Contact Number',
                        textColor: AppColors.textSecondColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                          width: double.infinity,
                          child: MenualBookigTextField(
                            isPrefixIcon: true,
                            preFixIconImagePath: Images.phone_outline,
                            preFixIconImageHeight: 24,
                            preFixIconImageWith: 24,
                            preFixIconColor: AppColors.mid_grey,
                            hintText: 'Enter Contact Number',
                            isThirdSheet: true,
                          )),
                      SizedBox(height: 12),
                      TextWidget(
                        title: 'Identification Number',
                        textColor: AppColors.textSecondColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                          width: double.infinity,
                          child: MenualBookigTextField(
                            isPrefixIcon: true,
                            preFixIconImagePath: Images.identification,
                            preFixIconImageHeight: 24,
                            preFixIconImageWith: 24,
                            preFixIconColor: AppColors.mid_grey,
                            hintText: 'Enter Identification Number',
                            isThirdSheet: true,
                          )),
                      SizedBox(height: 12),
                      TextWidget(
                        title: 'Price',
                        textColor: AppColors.textSecondColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                          width: double.infinity,
                          child: MenualBookigTextField(
                            hintText: 'RM',
                            isThirdSheet: true,
                          )),
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
