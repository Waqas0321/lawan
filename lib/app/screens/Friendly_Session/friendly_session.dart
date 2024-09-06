import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/Friendly_Session/friendly_session_controller.dart';
import 'package:lawan/app/screens/Friendly_Session/Public_First_Screen.dart';
import 'package:lawan/app/screens/Friendly_Session/private_Screen.dart';
import 'package:lawan/app/screens/Friendly_Session/public_screen.dart';
import 'package:lawan/app/widgets/Areena/custom_tabbar.dart';
import '../../utils/images.dart';
import '../../utils/responsive_utils.dart';
import '../../widgets/Friendly_Session/custom_shadow_button.dart';
import '../../widgets/text_widget.dart';
import '../HomeScreen/Widgets/homeScreenHeader.dart';

class FriendlySession extends StatefulWidget {
  const FriendlySession({super.key});

  @override
  State<FriendlySession> createState() => _FriendlySessionState();
}

class _FriendlySessionState extends State<FriendlySession> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FriendlySessionController>();
    return
      SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ScreenHeader(
                    isTextVisible: false,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
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
                          child: TabBarView(
                              children: [ PublicFirstScreen(), PrivateScreen()]))
                    ],
                  )),
            )
          ],
                      ),
        ),
      );
  }
}
