import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/screens/Friendly_Session/Public_Third_Screen.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/filterBox.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/responsive_utils.dart';
import '../../widgets/Areena/areenaButton.dart';
import '../../widgets/Friendly_Session/Friendly_Session_Select_Date.dart';
import '../../widgets/Friendly_Session/custom_shadow_button.dart';
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
        return FriendlySessionSelectDate();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(alignment: Alignment.bottomCenter, children: [
          PublicThirdScreen(),
          Positioned(
            bottom: Responsive.customHeight(17),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Get.dialog(FilterBox(isFriendly: true,));
                    },
                    child:acrylicAny(child:  Container(
                      width: 90,
                      height: 44,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 12),
                      decoration: ShapeDecoration(
                        color: Color(0xffB8B8B8),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color:Color(0xffDEE1E3)),
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
                    ), blurlevel: 4)),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    openBottomSheet(context);
                  },
                  child: CustomShadowButton(
                    withCounterBox: true,
                    width: 210,
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
