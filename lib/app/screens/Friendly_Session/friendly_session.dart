import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/controller/Friendly_Session/friendly_session_controller.dart';
import 'package:lawan/app/screens/Friendly_Session/private_Screen.dart';
import 'package:lawan/app/screens/Friendly_Session/public_screen.dart';
import 'package:lawan/app/widgets/Areena/custom_tabbar.dart';

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
    return Scaffold(
      backgroundColor: const Color(0xFFF2F3F2),
      body: SafeArea(
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
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.862,
                child: DefaultTabController(
                    length: 2, child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: CustomTabBar(tabs: ["Public", "Private"],),
                        ),
                        Expanded(child: TabBarView(children: [
                          PublicScreen(),
                          PrivateScreen()
                        ]))
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
