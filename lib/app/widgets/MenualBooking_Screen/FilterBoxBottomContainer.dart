import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/images.dart';
import 'Custom_Circular_Button.dart';
class FilterBoxBottomContainer extends StatelessWidget {
  const FilterBoxBottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width + 20,
      height: 81,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Color(0xB2F2F3F2),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(32))),
      child: Row(
        children: [
          CustomCircularButton(
              isImage: true,
              imagePath: Images.refresh,
              width: 48,
              height: 48,
              onPressFun: () {},
              isSelected: false),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: CustomCircularButton(
                width: 48,
                height: 48,
                text: "Cancel",
                onPressFun: () {
                  Get.back();
                },
                isSelected: false),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: CustomCircularButton(
                width: 48,
                height: 48,
                text: "Apply",
                onPressFun: () {},
                isSelected: true),
          ),
        ],
      ),
    );
  }
}