import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/utils/images.dart';

import '../../utils/colors.dart';
import '../../utils/text.dart';
import 'Add-Arena-Container.dart';

class customHeaderCount extends StatelessWidget {
  customHeaderCount({
    super.key,
    required this.thisCount,
    this.text1 = 'Details',
    this.text2 = 'Hour',
    this.text3 = 'Rate',
    this.text4 = 'Pay',
    this.hasFourth = false,
  });
  final String thisCount;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final bool hasFourth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: hasFourth?MainAxisAlignment.spaceBetween :MainAxisAlignment.center,
        children: [
          CustomCard(
            count: '1',
            showborder: thisCount == "1" ? false : true,
            text: text1,
            color: thisCount == "1" ? AppColors.brand2 : null,
            countcolor:
                thisCount == "1" ? AppColors.white : AppColors.dark_grey,
            textcolor:
                thisCount == "1" ? AppColors.brand2 : AppColors.dark_grey,
            fontWeight: thisCount == "1" ? FontWeight.w500 : FontWeight.w400,
          ),
          hasFourth?SizedBox(width: 0,):SizedBox(width: Get.width * 0.03,),

          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: SvgPicture.asset(Images.line2),
          ),
          hasFourth?SizedBox(width: 0,):SizedBox(width: Get.width * 0.03,),
          CustomCard(
            count: '2',
            showborder: thisCount == "2" ? false : true,
            text: text2,
            color: thisCount == "2" ? AppColors.brand2 : null,
            countcolor:
                thisCount == "2" ? AppColors.white : AppColors.dark_grey,
            textcolor:
                thisCount == "2" ? AppColors.brand2 : AppColors.dark_grey,
            fontWeight: thisCount == "2" ? FontWeight.w500 : FontWeight.w400,
          ),
          hasFourth?SizedBox(width: 0,):SizedBox(width: Get.width * 0.03,),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: SvgPicture.asset(Images.line2),
          ),
          hasFourth?SizedBox(width: 0,):SizedBox(width: Get.width * 0.03,),
          CustomCard(
            count: '3',
            text: text3,
            showborder: thisCount == "3" ? false : true,
            color: thisCount == "3" ? AppColors.brand2 : null,
            countcolor:
                thisCount == "3" ? AppColors.white : AppColors.dark_grey,
            textcolor:
                thisCount == "3" ? AppColors.brand2 : AppColors.dark_grey,
            fontWeight: thisCount == "3" ? FontWeight.w500 : FontWeight.w400,
          ),
          hasFourth? Padding(
            padding: EdgeInsets.only(bottom: 10,left: Get.width * 0.03,right: Get.width * 0.03),
            child: SvgPicture.asset(Images.line2),
          ):SizedBox(width: 0,),
          hasFourth?CustomCard(
            count: '4',
            text: text4,
            showborder: thisCount == "4" ? false : true,
            color: thisCount == "4" ? AppColors.brand2 : null,
            countcolor:
            thisCount == "4" ? AppColors.white : AppColors.dark_grey,
            textcolor:
            thisCount == "4" ? AppColors.brand2 : AppColors.dark_grey,
            fontWeight: thisCount == "4" ? FontWeight.w500 : FontWeight.w400,
          ):SizedBox(width: 1,),

        ],
      ),
    );
  }
}
