import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/screens/share_invite/widgets/gridview_items.dart';
import 'package:lawan/app/screens/share_invite/widgets/profile_card.dart';
import 'package:lawan/app/screens/share_invite/widgets/userinfo_row.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/Areena/areenaButton.dart';
import 'package:lawan/app/widgets/container/circular_container.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../utils/responsive_utils.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 12),
      height: MediaQuery.of(context).size.height * 0.85,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xffb9bbb9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x19000000),
            offset: Offset(0, -0.50),
            spreadRadius: 0,
          )
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(9),
                    decoration: const ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ))),
                    child: const TextWidget(
                      title: "MBPJ Sports Complex",
                      textColor: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(Responsive.customHeight(17), 0),
                    child: CircularContainer(
                      padding: 10,
                      svgPath: Images.close,
                      onTap: () {
                        Get.back();
                      },
                      borderColor: Colors.white,
                    ),
                  ),
                  SvgPicture.asset(Images.qrCode1),
                  SizedBox(
                    height: Responsive.h2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Images.card,
                        colorFilter: ColorFilter.mode(
                            Color(0xff545F71), BlendMode.srcIn),
                      ),
                      SizedBox(
                        width: Responsive.h1,
                      ),
                      const TextWidget(
                        title: "3",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h2,
                  ),
                  ProfileCard(
                    showIcons: false,
                    borderColor: Color(0xFF545F71),
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  const UserinfoRow(),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  const GridviewItems(),
                  SizedBox(
                    height: Responsive.h2,
                  ),
                ],
              ),
            ),
            // Spacer(),
            Container(
              padding: const EdgeInsets.all(12),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      columnWithTwoWidget(Images.link, "Copy Link"),
                      columnWithTwoWidget(Images.upload, "Share Via.."),
                      columnWithTwoWidget(Images.whatsapp, "Whatsapp",
                          showImageOnly: true),
                      columnWithTwoWidget(Images.messages, "Messages",
                          showImageOnly: true),
                      columnWithTwoWidget(Images.telegram, "Telegram",
                          showImageOnly: true),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CircularContainer(
                            borderColor: const Color(0xFFDEE1E2),
                            svgPath: Images.chevron_left,
                            onTap: () {
                              Get.back();
                            }),
                      ),
                      SizedBox(
                        width: Responsive.h1,
                      ),
                      Expanded(
                        flex: 7,
                        child: CustomAreenaButton(
                            text: "Send Via Chat",
                            color: Colors.black,
                            showIcon: true,
                            borderColor: Colors.transparent,
                            textColor: Colors.white,
                            imagePath: Images.chat,
                            imageColor: Colors.white,
                            onTap: () {}),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget columnWithTwoWidget(String svgPath, String title,
      {bool showImageOnly = false}) {
    return Column(
      children: [
        showImageOnly
            ? SvgPicture.asset(svgPath)
            : CircularContainer(
                svgPath: svgPath,
                onTap: () {},
                borderColor: const Color(0xFFDEE1E2),
              ),
        SizedBox(
          height: Responsive.h1,
        ),
        TextWidget(
          title: title,
          textColor: const Color(0xFF545F71),
          fontSize: 12,
          textOverflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
