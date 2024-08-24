import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../text_widget.dart';
class FilterBoxRangesRowTexts extends StatelessWidget {
  const FilterBoxRangesRowTexts({
    super.key,
    this.text1 = '20km',
    this.text2 = 'Range',
    this.text3 = '200km',
  });

  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          title: text2,
          fontWeight: FontWeight.w500,
          textColor: AppColors.black,
          fontSize: 16,
        ),
        TextWidget(
          title: text2,
          fontWeight: FontWeight.w500,
          textColor: AppColors.textSecondColor,
          fontSize: 14,
        ),
        TextWidget(
          title: text3,
          fontWeight: FontWeight.w500,
          textColor: AppColors.black,
          fontSize: 16,
        ),
      ],
    );
  }
}