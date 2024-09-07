import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/screens/Friendly_Session/Public_Third_Screen.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/filterBox.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/responsive_utils.dart';
import '../../widgets/Areena/areenaButton.dart';
import '../../widgets/Friendly_Session/Friendly_Session_Select_Date.dart';
import '../../widgets/Friendly_Session/custom_shadow_button.dart';
import '../../widgets/Friendly_Session/user_container.dart';
import '../../widgets/text_widget.dart';

class PrivateScreen extends StatelessWidget {
  const PrivateScreen({super.key});
  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return const FriendlySessionSelectDate();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(alignment: Alignment.bottomCenter, children: [
          const PublicThirdScreen(),
          Positioned(
            bottom: Responsive.customHeight(21),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.dialog(const FilterBox(
                      isFriendlySession: true,
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white)),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Images.adjustments,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const TextWidget(
                          title: "Filter",
                          textColor: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CustomShadowButton(
                  onTap: () {
                    openBottomSheet(context);
                  },
                  withCounterBox: true,
                  width: 210,
                )
              ],
            ),
          )
        ]));
  }
}
