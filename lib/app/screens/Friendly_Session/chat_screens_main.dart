import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/bindings/app_bindings.dart';
import 'package:lawan/app/controller/Friendly_Session/chat_screen_main_controller.dart';
import 'package:lawan/app/screens/Friendly_Session/chattingRoom_screen.dart';
import 'package:lawan/app/screens/Friendly_Session/lign_up_screen.dart';
import 'package:lawan/app/screens/sale/widgets/sales_tabbar.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/Areena/custom_tabbar.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Custom_Circular_Button.dart';
import '../AddMenualBooking_Screen/Indoor_Screen.dart';
import '../AddMenualBooking_Screen/Outdoor_Screen.dart';

class ChatScreensMain extends StatelessWidget {
  ChatScreensMain({super.key});

  ChatScreenMainController controller = Get.put(ChatScreenMainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcdadD),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [
              Color(0xCC0C1B22), // Start color// Gradient color at 30%
              Color(0x0044D8BE), // White color for the remaining 70%
            ],
            stops: [0.0, 0.44,], // Defines the stops for each color
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Stack(children: [
            DefaultTabController(
              length: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.77 ,
                      child: CustomTabBar(
                        svgIcons: controller.tabBarIcons,
                        color: AppColors.black,
                        tabs: controller.tabBarItems,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        LignUpScreen(),
                        ChattingRoomScreen(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(left: 16,top: 1.2),
                child: CustomCircularButton(
                  height: 48,
                  width: 48,
                  onPressFun: () {
                    Get.back();
                  },
                  isSelected: false,
                  isImage: true,
                  imagePath: Images.chevron_left,
                  imageColor: AppColors.white,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
