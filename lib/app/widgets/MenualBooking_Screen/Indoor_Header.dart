import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/search_TextField.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../text_widget.dart';
class IndoorHeader extends StatelessWidget {
  const IndoorHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SearchTextField(hintText: 'PJ',)),
        SizedBox(width: 16,),
        Container(
          width: MediaQuery.of(context).size.width * 0.23,
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFDEE1E2)),
              borderRadius: BorderRadius.circular(80),
            ),
          ),
          child: Center(
            child: Row(
              children: [
                Expanded(child: SvgPicture.asset(Images.adjustments,height: 20,width: 20,)),
                TextWidget(
                  title: 'Filter',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  textColor: AppColors.black,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}