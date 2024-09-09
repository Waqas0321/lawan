import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/screens/share_invite/widgets/profile_card.dart';
import 'package:lawan/app/screens/share_invite/widgets/userinfo_row.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import 'package:lawan/app/widgets/Areena/areenaButton.dart';
import 'package:lawan/app/widgets/Friendly_Session/column_button.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/List_Container.dart';
import 'package:lawan/app/widgets/bottom_sheet/share_bottom_sheet.dart';
import 'package:lawan/app/widgets/container/invite_share_container.dart';
import 'package:lawan/app/widgets/container/text_container.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../screens/share_invite/widgets/gridview_items.dart';
import '../container/circular_container.dart';

class FriendlySessionBottomSheet extends StatelessWidget {
  const FriendlySessionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: Responsive.customHeight(3), left: 12, right: 12),
      child: acrylicAny(
        blurlevel: 4,
        child: Container(
          height: Responsive.customHeight(85),
          decoration: BoxDecoration(
              color: const Color(0xB2F2F3F2),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextWidget(
                          title: "⚽   Friendly",
                          fontSize: 20,
                        ),
                        CircularContainer(
                          padding: 12,
                          borderWidth: 0.8,
                          svgPath: Images.close,
                          onTap: () {
                            Get.back();
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: Responsive.h2,
                    ),
                    const ListContainer(
                      isBottomSheet: true,
                    ),
                    SizedBox(
                      height: Responsive.h1,
                    ),
                    ColumnButton(
                      showBlack: true,
                      padding: 4,
                      horizontalPadding: Responsive.h7,
                      upperText: "Sesssion starting in",
                      lowerText: "2 days 2 hours 6 mins 3 sec ",
                      onTap: () {},
                    ),
                    SizedBox(
                      height: Responsive.h2,
                    ),
                    const ProfileCard(),
                    SizedBox(
                      height: Responsive.h2,
                    ),
                    const UserinfoRow(),
                    SizedBox(
                      height: Responsive.h2,
                    ),
                    const GridviewItems(),
                    SizedBox(
                      height: Responsive.h1,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 7.0, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularContainer(
                        svgPath: Images.edit,
                        padding: 12,
                        onTap: () {},
                        svgColor: AppColors.dark_grey,
                        borderColor: const Color(0xFFDEE1E2),
                      ),
                      CircularContainer(
                        padding: 12,
                        svgPath: Images.upload,
                        svgColor: AppColors.dark_grey,
                        onTap: () {
                          Get.bottomSheet(const ShareBottomSheet(),
                              isScrollControlled: true);
                        },
                        borderColor: const Color(0xFFDEE1E2),
                      ),
                      CircularContainer(
                        padding: 12,
                        svgPath: Images.calendar,
                        svgColor: AppColors.dark_grey,
                        onTap: () {},
                        borderColor: const Color(0xFFDEE1E2),
                      ),
                      CustomAreenaButton(
                        text: "Line-Up",
                        color: Colors.black,
                        imageColor: Colors.white,
                        showIcon: true,
                        imagePath: Images.users_group_outline,
                        borderColor: Colors.transparent,
                        textColor: Colors.white,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
