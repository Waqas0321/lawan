import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../Areena/custom-Arena-textform.dart';
import '../MenualBooking_Screen/Custom_Circular_Button.dart';
import '../richtext.dart';
import '../text_widget.dart';

class InviteFriendsSheetHeader extends StatelessWidget {
  const InviteFriendsSheetHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Images.user_plus,
              height: 20,
              width: 20,
            ),
            SizedBox(
              width: 6,
            ),
            TextWidget(
              title: "Invite Friend(s)",
              textColor: AppColors.black,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
            Spacer(),
            CustomCircularButton(
              onPressFun: () {},
              isSelected: false,
              imagePath: Images.x,
              isImage: true,
            )
          ],
        ),
        SizedBox(
          height: 16,
        ),
        CustomTextFormField(
          iconColor: AppColors.black,
          icon: Images.search,
          hintText: "Search or add name/email",
          onTap: () {},
          prefixIcon: true,
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 68,
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: AppColors.hRBTNBorder),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.info_outlined,
                  color: AppColors.white,
                  size: 18,
                ),
                SizedBox(
                  width: 12,
                ),
                TextWidget(
                  title:
                  "Complete your booking to send an invite to \n the session and start playing together!",
                  textAlign: TextAlign.start,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.dark_grey,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 12,),
        CustomRichText(
          firstText: "Invitation will expire in",
          firstSize: 12,
          press: () {},
          firstTextColor: AppColors.dark_grey,
          firstTextFontWeight: FontWeight.w400,
          secondText: '2 days 2 hours 6 mins 3 sec ',
          secondSize: 12,
          secondTextColor: AppColors.black,
          secondTextFontWeight: FontWeight.w600,
        )
      ],
    );
  }
}