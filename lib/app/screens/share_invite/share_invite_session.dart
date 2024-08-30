import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/screens/share_invite/share_invite_public_screen.dart';
import 'package:lawan/app/widgets/Friendly_Session/custom_shadow_button.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../utils/images.dart';
import '../../utils/responsive_utils.dart';
import '../../widgets/Areena/custom_tabbar.dart';
import '../HomeScreen/Widgets/homeScreenHeader.dart';

class ShareInviteSession extends StatelessWidget {
  const ShareInviteSession({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ScreenHeader(
                  isTextVisible: false,
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
            bottom: Responsive.customHeight(15),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)),
                  padding: EdgeInsets.all(10),
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
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                CustomShadowButton(
                  withCounterBox: true,
                  width: 210,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
