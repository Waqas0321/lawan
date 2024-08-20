import 'dart:ui';

import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/text.dart';
import 'Add-Arena-Container.dart';

class customHeaderCount extends StatelessWidget {
  customHeaderCount({
    super.key,
    required this.thisCount,
  });
  final String thisCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.06),
          Expanded(
            child: CustomCard(
              count: '1',
              showborder: thisCount == "1" ? false : true,
              text: Apptext.details,
              color: thisCount == "1" ? AppColors.brand2 : null,
              linecolor: AppColors.grey3,
              countcolor:
                  thisCount == "1" ? AppColors.white : AppColors.dark_grey,
              textcolor:
                  thisCount == "1" ? AppColors.brand2 : AppColors.dark_grey,
              fontWeight: thisCount == "1" ? FontWeight.w500 : FontWeight.w400,
              padding: 2,
            ),
          ),
          Expanded(
            child: CustomCard(
              count: '2',
              showborder: thisCount == "2" ? false : true,
              text: Apptext.hour,
              color: thisCount == "2" ? AppColors.brand2 : null,
              countcolor:
                  thisCount == "2" ? AppColors.white : AppColors.dark_grey,
              textcolor:
                  thisCount == "2" ? AppColors.brand2 : AppColors.dark_grey,
              fontWeight: thisCount == "2" ? FontWeight.w500 : FontWeight.w400,
              padding: 7,
              linecolor: AppColors.grey3,
            ),
          ),
          Expanded(
            child: CustomCard(
              count: '3',
              text: Apptext.rate,
              showborder: thisCount == "3" ? false : true,
              color: thisCount == "3" ? AppColors.brand2 : null,
              linecolor: Colors.transparent,
              countcolor:
                  thisCount == "3" ? AppColors.white : AppColors.dark_grey,
              textcolor:
                  thisCount == "3" ? AppColors.brand2 : AppColors.dark_grey,
              fontWeight: thisCount == "3" ? FontWeight.w500 : FontWeight.w400,
              padding: 6,
            ),
          )
        ],
      ),
    );
  }
}
