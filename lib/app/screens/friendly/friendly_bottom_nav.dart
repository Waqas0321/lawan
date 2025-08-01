import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/friendly/freindly_bottom_nav_controller.dart';
import 'package:lawan/app/screens/Friendly_Session/friendly_session.dart';
import 'package:lawan/app/screens/share_invite/share_invite_session.dart';
import '../../widgets/Areena/custom_bottom_nav.dart';
import '../AddMenualBooking_Screen/MenualBooking.dart';

class FriendlyBottomNav extends StatelessWidget {
  const FriendlyBottomNav({super.key, this.bycreatedSession = false});
  final bool bycreatedSession;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FriendlyBottomNavController>();
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
          backgroundColor: const Color(0xFFF2F3F2),
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0.0, 0.8), // Start near the bottom
                end: const Alignment(0.0,1), // End at the bottom edge
                colors: [
                  Colors.black.withOpacity(0.0), // Fully transparent color
                  Colors.black.withOpacity(0.7), // Slightly visible gradient
                ],
              ),
            ),
            child: Stack(alignment: AlignmentDirectional.topCenter, children: [
              SingleChildScrollView(
                child: SafeArea(
                  child: acrylicAny(
                    blurlevel: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(() {
                            if (controller.selectedItem.value == "Ranked") {
                              return ShareInviteSession(byCreatedSession: bycreatedSession,);
                              // return const FriendlySession();
                            } else if (controller.selectedItem.value ==
                                "Friendly") {
                              return const Center(
                                child: FriendlySession(),
                              );
                            } else if (controller.selectedItem.value ==
                                "Club") {
                              return Center(
                                child: Container(
                                    height: Get.height,
                                    child: MenualBookingScreen()),
                              );
                            } else if (controller.selectedItem.value == "Top") {
                              return const Center(
                                child: Text("Top"),
                              );
                            } else {
                              return const Center(
                                child: Text("Stories"),
                              );
                            }
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Obx(
                () => CustomBottomNavigation(
                  widthFactor: 0.850,
                  iconSize: 20,
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontFamily: 'Lufga',
                    fontWeight: FontWeight.w400,
                    height: 1,
                    letterSpacing: -0.24,
                  ),
                  selectedItem: controller.selectedItem.value,
                  imagePath: controller.imagePaths,
                  title: controller.titles,
                  onItemSelected: (newValue) {
                    controller.changeSelection(newValue);
                  },
                ),
              )
            ]),
          )),
    );
  }
}
