import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../MenualBooking_Screen/Custom_Circular_Button.dart';
import '../text_widget.dart';

class ChatHistoryContainer extends StatelessWidget {
  const ChatHistoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      margin: EdgeInsets.symmetric(vertical: 4),
      height: 64,
      padding: const EdgeInsets.only(top: 8, left: 8, right: 12, bottom: 8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(
              Images.avatar,
            ),
            height: 48,
            width: 48,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                title: "Sarah Yahya",
                fontWeight: FontWeight.w500,
                fontSize: 12,
                textColor: AppColors.black,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    height: 16,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: ShapeDecoration(
                      color: AppColors.gainsboro,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            Images.user,
                            height: 12,
                            width: 12,
                          ),
                          TextWidget(
                            title: "GK",
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            textColor: AppColors.dark_grey,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  SvgPicture.asset(Images.capa)
                ],
              )
            ],
          ),
          Spacer(),
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
                  color: AppColors.hRBTNBorder,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: TextWidget(title: "Novice"),
          ),
          SizedBox(
            width: 12,
          ),
          CustomCircularButton(
            onPressFun: () {},
            isSelected: false,
            imagePath: Images.capa,
            isImage: true,
          )
        ],
      ),
    );
  }
}
