import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/screens/share_invite/widgets/gridview_items.dart';
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
      height: Responsive.customHeight(87),
      decoration: const BoxDecoration(
        color: Color(0xB2F2F3F2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
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
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                        ))),
                    child: const TextWidget(
                      title: "MBPJ Sports Complex",
                      textColor: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: Responsive.h1,
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
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  SvgPicture.asset(Images.QRCode),
                  SizedBox(
                    height: Responsive.h2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Images.card,
                        colorFilter: const ColorFilter.mode(
                            Colors.black, BlendMode.srcIn),
                      ),
                      SizedBox(
                        width: Responsive.h1,
                      ),
                      const TextWidget(
                        title: "3",
                        fontSize: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h2,
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
            Container(
              padding: EdgeInsets.all(12),
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
                  SizedBox(
                    width: Responsive.h1,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CircularContainer(
                            borderColor: Color(0xFFDEE1E2),
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
                borderColor: Color(0xFFDEE1E2),
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
