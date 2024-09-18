import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../MenualBooking_Screen/Custom_Circular_Button.dart';
import '../text_widget.dart';

class InviteFriendsListContainer extends StatelessWidget {
  const InviteFriendsListContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(Images.avatar),
                height: 48,
                width: 48,
              ),
              SizedBox(
                width: 8,
              ),

              Expanded(
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        title: "Sarah Yahya",
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        textColor: AppColors.black,
                      ),
                      SizedBox(height: 6,),
                      Row(
                        children: [
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
                          ),
                          Spacer(),
                          TextWidget(
                            title: "Prefer a",
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            textColor: AppColors.dark_grey,
                          ),
                          SizedBox(width: 12,),
                          Container(
                            height: 16,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
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
                              child: Row(
                                children: [
                                  SvgPicture.asset(Images.user,height: 12,width: 12,),
                                  TextWidget(
                                    title: 'GK',
                                    textColor: AppColors.textSecondColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16,),
              CustomCircularButton(onPressFun: () {

              }, isSelected: false,
                isImage: true,
                imagePath: Images.x,
              )
            ],
          ),
          SizedBox(height: 8,),
          Divider(color: Colors.white,thickness: 0.5,)
        ],
      ),
    );
  }
}