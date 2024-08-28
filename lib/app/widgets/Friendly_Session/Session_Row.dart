import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../text_widget.dart';
class SessionsRow extends StatelessWidget {
  const SessionsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(children: [
        Container(
          width: 27,
          height: 16,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          child: TextWidget(
            title: '16',
            textAlign: TextAlign.center,
            textColor: AppColors.textSecondColor,
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(width: 8),
        TextWidget(
          title: 'Available Sessions',
          textColor: AppColors.textSecondColor,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ]),
    );
  }
}