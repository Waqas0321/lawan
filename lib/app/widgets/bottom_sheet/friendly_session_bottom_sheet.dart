import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/screens/share_invite/widgets/profile_card.dart';
import 'package:lawan/app/screens/share_invite/widgets/userinfo_row.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Container(
        height: Responsive.customHeight(86),
        decoration: const BoxDecoration(
          color: Color(0xB2F2F3F2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
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
                      height: Responsive.h1,
                    ),
                    const ProfileCard(),
                    SizedBox(
                      height: Responsive.h1,
                    ),
                    const UserinfoRow(),
                    SizedBox(
                      height: Responsive.h1,
                    ),
                    const GridviewItems(),
                    SizedBox(
                      height: Responsive.h1,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircularContainer(
                        svgPath: Images.edit,
                        padding: 12,
                        onTap: () {},
                        borderColor: Color(0xFFDEE1E2),
                      ),
                      CircularContainer(
                        padding: 12,
                        svgPath: Images.upload,
                        onTap: () {},
                        borderColor: Color(0xFFDEE1E2),
                      ),
                      CircularContainer(
                        padding: 12,
                        svgPath: Images.calendar,
                        onTap: () {},
                        borderColor: Color(0xFFDEE1E2),
                      ),
                      CustomAreenaButton(
                        text: "Line-up",
                        color: Colors.black,
                        imageColor: Colors.white,
                        showIcon: true,
                        imagePath: Images.users_group_outline,
                        borderColor: Colors.transparent,
                        textColor: Colors.white,
                        onTap: () {
                          Get.bottomSheet(const ShareBottomSheet(),
                              isScrollControlled: true);
                        },
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
