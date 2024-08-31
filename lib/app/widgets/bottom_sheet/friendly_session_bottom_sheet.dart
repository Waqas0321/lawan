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
    return Container(
      height: Responsive.customHeight(94),
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
                      svgPath: Images.pencil,
                      onTap: () {},
                      borderColor: Colors.grey,
                    ),
                    CircularContainer(
                      svgPath: Images.upload,
                      onTap: () {},
                      borderColor: Colors.grey,
                    ),
                    CircularContainer(
                      svgPath: Images.calendar,
                      onTap: () {},
                      borderColor: Colors.grey,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.bottomSheet(const ShareBottomSheet(),
                            isScrollControlled: true);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          children: [
                            SvgPicture.asset(Images.users_group_outline),
                            SizedBox(
                              width: Responsive.h2,
                            ),
                            const TextWidget(
                              title: "Line-Up",
                              textColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
