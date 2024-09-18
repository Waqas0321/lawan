import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/controller/Friendly_Session/inviteFriends1SheetController.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/Areena/custom-Arena-textform.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Custom_Circular_Button.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../utils/colors.dart';
import '../richtext.dart';
import 'inviteFriendsSheet_header.dart';

class InviteFriendsOneSheet extends StatelessWidget {
  InviteFriendsOneSheet({super.key});

  InviteFriendsOneSheetController _controller =
      Get.put(InviteFriendsOneSheetController());

  @override
  Widget build(BuildContext context) {
    return acrylicAny(
      blurlevel: 10,
      child: Container(
        height: Get.height * 0.655,
        width: MediaQuery.of(context).size.width - 16,
        margin: EdgeInsets.only(
          bottom: 25,
        ),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              InviteFriendsSheetHeader(),
              SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 194,
                padding: const EdgeInsets.symmetric(vertical: 40),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      Images.users_group_outline,
                      color: AppColors.white,
                      height: 60,
                      width: 60,
                    ),
                    TextWidget(
                      title: "Search Players",
                      textColor: AppColors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    TextWidget(
                      title: "Search for player to team up and play together",
                      textColor: AppColors.dark_grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  CustomCircularButton(
                    onPressFun: () {},
                    isSelected: false,
                    isImage: true,
                    imagePath: Images.chevron_left,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Opacity(
                      opacity: 0.5,
                      child: CustomCircularButton(
                        onPressFun: () {
                          _controller.openBottomSheet(context);
                        },
                        isSelected: true,
                        height: 49,
                        text: "Add",
                        rightIcon: true,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
