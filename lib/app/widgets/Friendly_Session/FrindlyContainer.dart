import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../MenualBooking_Screen/Custom_Circular_Button.dart';
import '../text_widget.dart';

class FrindlySessionContainer extends StatelessWidget {
  final VoidCallback onTap;
  final bool isSelected;
  final String imagePath;
  final Color imageColor;
   FrindlySessionContainer({
    super.key,
    required this.onTap,
    this.isSelected = false,
    this.imagePath = Images.plus,
    this.imageColor = AppColors.dark_grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 60,
      margin: EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFDEE1E2)),
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(Images.avatar1),
            height: 32,
            width: 32,
          ),
          SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                title: 'Saiful Bukhari',
                textColor: AppColors.black,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              Container(
                height: 16,
                padding: const EdgeInsets.symmetric(horizontal: 6),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Color(0xFFDEE1E2),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Center(
                  child: TextWidget(
                    title: 'Novice',
                    textColor: AppColors.textSecondColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
          Spacer(),
          CustomCircularButton(
            imageColor: imageColor,
              isImage: true,
              imageheight:20,
              imagewidth:20,
              vertical:0,
              horizontal:0,
              imagePath: imagePath,
              width: 36,
              height: 40,
              onPressFun: onTap,
              isSelected: isSelected),
        ],
      ),
    );
  }
}
