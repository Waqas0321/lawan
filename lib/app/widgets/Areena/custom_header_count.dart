import 'dart:ui';

import 'package:flutter/material.dart';

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
      padding: EdgeInsets.only(left: hasFourth?MediaQuery.of(context).size.width * 0.05 :MediaQuery.of(context).size.width * 0.1),
      child: Row(
        mainAxisAlignment: hasFourth?MainAxisAlignment.spaceBetween :MainAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.06),
          Expanded(
            child: CustomCard(
              count: '1',
              showborder: thisCount == "1" ? false : true,
              text: text1,
              color: thisCount == "1" ? AppColors.brand2 : null,
              linecolor: AppColors.grey3,
              countcolor:
                  thisCount == "1" ? AppColors.white : AppColors.dark_grey,
              textcolor:
                  thisCount == "1" ? AppColors.brand2 : AppColors.dark_grey,
              fontWeight: thisCount == "1" ? FontWeight.w500 : FontWeight.w400,
              padding: 10,
            ),
          ),
          Expanded(
            child: CustomCard(
              count: '2',
              showborder: thisCount == "2" ? false : true,
              text: text2,
              color: thisCount == "2" ? AppColors.brand2 : null,
              countcolor:
                  thisCount == "2" ? AppColors.white : AppColors.dark_grey,
              textcolor:
                  thisCount == "2" ? AppColors.brand2 : AppColors.dark_grey,
              fontWeight: thisCount == "2" ? FontWeight.w500 : FontWeight.w400,
              padding: 2,
              linecolor: AppColors.grey3,
            ),
          ),
          Expanded(
            child: CustomCard(
              count: '3',
              text: text3,
              showborder: thisCount == "3" ? false : true,
              color: thisCount == "3" ? AppColors.brand2 : null,
              linecolor: hasFourth? AppColors.grey3: Colors.transparent,
              countcolor:
                  thisCount == "3" ? AppColors.white : AppColors.dark_grey,
              textcolor:
                  thisCount == "3" ? AppColors.brand2 : AppColors.dark_grey,
              fontWeight: thisCount == "3" ? FontWeight.w500 : FontWeight.w400,
              padding: 2,
            ),
          ),
          hasFourth?Expanded(
            child: CustomCard(
              count: '4',
              text: text4,
              showborder: thisCount == "4" ? false : true,
              color: thisCount == "4" ? AppColors.brand2 : null,
              linecolor: Colors.transparent,
              countcolor:
              thisCount == "4" ? AppColors.white : AppColors.dark_grey,
              textcolor:
              thisCount == "4" ? AppColors.brand2 : AppColors.dark_grey,
              fontWeight: thisCount == "4" ? FontWeight.w500 : FontWeight.w400,
              padding:9,
            ),
          ):SizedBox(width: 0,),

        ],
      ),
    );
  }
}
