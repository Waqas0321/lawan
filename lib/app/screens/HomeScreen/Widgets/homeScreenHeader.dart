import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/header_controller.dart';
import '../../../utils/images.dart';
import '../../../widgets/Areena/TimeSlotHomeDropDown.dart';

class ScreenHeader extends StatelessWidget {
  bool isTextVisible;
  final VoidCallback? onProfileTap;
  ScreenHeader({this.isTextVisible = true, this.onProfileTap});
  @override
  Widget build(BuildContext context) {
    final HeaderController controller = Get.put(HeaderController());

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => TimeSlotHome(
                  timeSlots: ['Soccer', 'Futsal'],
                  selectedTimeSlot: controller.selectedTimeSlot.value,
                  onChanged: controller.onTimeSlotChanged,
                  isImage: false,
                  isWidth: MediaQuery.of(context).size.width * 0.32,
                  image: "⚽",
                )),
            InkWell(
              splashColor: Colors.transparent,
              onTap: onProfileTap,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.17,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(300),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      Images.avatar, // Replace with actual path
                      height: 32,
                      width: 40,
                    ),
                    SvgPicture.asset(
                      Images.chevron_down, // Replace with actual path
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        IntrinsicHeight(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
        ),
        if (isTextVisible)
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'List your arena',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w600,
                      height: 1,
                      letterSpacing: -0.60,
                    ),
                  ),
                  TextSpan(
                    text: ' with Lawan, attract and inspire Pahlawans!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                      letterSpacing: -0.60,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
      ],
    );
  }
}
