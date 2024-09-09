import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../text_widget.dart';
import 'Custom_Circular_Button.dart';
class FilterBoxButtonsRow extends StatelessWidget {
  const FilterBoxButtonsRow({
    super.key,
    this.text = 'States',
    this.textFirstButton = 'All',
    this.textSecondButton = 'Johor',
    this.textThirdButton = ' Kedah',
    this.haveAllButton = true,
  });

  final String text;
  final String textFirstButton;
  final String textSecondButton;
  final String textThirdButton;
  final bool haveAllButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 56,
          child: TextWidget(
            title: text,
            fontWeight: FontWeight.w500,
            textColor: AppColors.textSecondColor,
            fontSize: 14,
          ),
        ),
        SizedBox(width: 24),
        haveAllButton? CustomCircularButton(
            width: 49,
            height: 44,
            text: textFirstButton, onPressFun: () {}, isSelected: true): SizedBox(width: 0,),
        SizedBox(width: 12),
        Expanded(
          child: CustomCircularButton(
              width: 49,
              height: 44,
              text: textSecondButton, onPressFun: () {}, isSelected: false),
        ),
        SizedBox(width: 12),
        Expanded(
          child: CustomCircularButton(
              width: 49,
              height: 44,
              text: textThirdButton, onPressFun: () {}, isSelected: false),
        )
      ],
    );
  }
}