import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/screens/share_invite/share_invite_public_screen.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/widgets/Friendly_Session/custom_shadow_button.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/filterBox.dart';
import 'package:lawan/app/widgets/dialogue/show_profile.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../utils/images.dart';
import '../../utils/responsive_utils.dart';
import '../../widgets/Areena/custom_tabbar.dart';
import '../../widgets/Friendly_Session/Friendly_BottomSheet.dart';
import '../HomeScreen/Widgets/homeScreenHeader.dart';

class ShareInviteSession extends StatelessWidget {
  const ShareInviteSession({super.key, required this.byCreatedSession});
  final bool byCreatedSession;
  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return FriendlyBottomSheet();
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.gradientDecoration,
      child: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ScreenHeader(
                    isTextVisible: false,
                    onProfileTap: () {
                      Get.bottomSheet(ShowProfileBottomSheet(),
                          isScrollControlled: true);
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: Responsive.customHeight(90),
                  child: const DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: CustomTabBar(
                              tabs: ["Public", "Private"],
                            ),
                          ),
                          Expanded(
                              child: TabBarView(children: [
                            ShareInvitePublicScreen(),
                            ShareInvitePublicScreen()
                          ]))
                        ],
                      )),
                )
              ],
            ),
            Positioned(
              bottom: Responsive.customHeight(17),
              child: Row(
                children: [
                  acrylicAny(
                    blurlevel: 2,
                    child: GestureDetector(
                      onTap: () {
                        Get.dialog(FilterBox(isFriendly: true,));
                      },
                      child: Container(
                        width: 90,
                        height: 44,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 12),
                        decoration: ShapeDecoration(
                          color: Colors.black.withOpacity(0.20000000298023224),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFDEE1E2)),
                            borderRadius: BorderRadius.circular(80),
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Images.adjustments,
                              colorFilter:
                                  ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            TextWidget(
                              title: "Filter",
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              textColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      byCreatedSession? openBottomSheet(context):null;
                    },
                    child: CustomShadowButton(
                      withCounterBox: true,
                      width: 210,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
