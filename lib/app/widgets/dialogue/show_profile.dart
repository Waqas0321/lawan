import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/screens/share_invite/widgets/profile_card.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/Areena/areenaButton.dart';
import 'package:lawan/app/widgets/container/circular_container.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../utils/responsive_utils.dart';

class ShowProfileBottomSheet extends StatelessWidget {
  const ShowProfileBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: Responsive.customHeight(8),
        left: 10,
        right: 10,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 7),
            height: Responsive.customHeight(85),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              gradient: const LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, -0.5),
                colors: [
                  Color(0xff4c5e61),
                  Color(0xff92b3b0),
                  Color(0xfff2f3f2),
                ],
              ),
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(14),
            //   gradient: const LinearGradient(
            //     begin: Alignment(0.00, -1.00),
            //     end: Alignment(0, 1),
            //     colors: [
            //       Color(0xCC0C1B22), // Start color
            //       Color(0x0044D8BE), // Gradient color at 30%
            //       Color(0xfff2f3f2), // White color for the remaining 70%
            //     ],
            //     stops: [0.0, 0.12, 0.13], // Defines the stops for each color
            //   ),
            // ),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularContainer(svgPath: Images.bell, onTap: () {}),
                        CircularContainer(
                            svgPath: Images.chevron_up,
                            onTap: () {
                              Get.back();
                            })
                      ],
                    ),
                    Transform.translate(
                      offset: const Offset(0, -45),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(Images.avatar1),
                                radius: 30,
                              ),
                              Transform.translate(
                                offset: const Offset(0, 13),
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                      border: Border.all(
                                          color: const Color(0xFFDEE1E2),
                                          width: 2)),
                                  child: const TextWidget(
                                    title: "Novice",
                                    textColor: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: Responsive.h2,
                          ),
                          const TextWidget(title: "Jese Leos"),
                          SizedBox(
                            height: Responsive.h1,
                          ),
                          SvgPicture.asset(Images.fiveStar),
                          SizedBox(height: Responsive.h1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(Images.flag),
                              SizedBox(
                                width: Responsive.h1,
                              ),
                              const TextWidget(
                                title: "Gombak, Kuala Lumpur",
                                fontSize: 12,
                                textColor: Color(0xFF545F71),
                              ),
                              SizedBox(
                                width: Responsive.h1,
                              ),
                              SvgPicture.asset(Images.female),
                            ],
                          ),
                          SizedBox(
                            height: Responsive.h2,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomAreenaButton(
                                  text: "Settings",
                                  color: Colors.black,
                                  imageColor: Colors.white,
                                  height: 56,
                                  borderColor: Colors.transparent,
                                  textColor: Colors.white,
                                  showIcon: true,
                                  imagePath: Images.setting,
                                  onTap: () {},
                                ),
                              ),
                              SizedBox(
                                width: Responsive.h2,
                              ),
                              Expanded(
                                child: CustomAreenaButton(
                                  text: "Profile",
                                  imageColor: Colors.white,
                                  height: 56,
                                  color: Colors.black,
                                  borderColor: Colors.transparent,
                                  textColor: Colors.white,
                                  showIcon: true,
                                  imagePath: Images.user,
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Responsive.h2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: Responsive.h3,
                              ),
                              SvgPicture.asset(Images.user_plus),
                              SizedBox(
                                width: Responsive.h1,
                              ),
                              const TextWidget(
                                title: "Find Friends",
                                fontSize: 14,
                              ),
                              const Spacer(),
                              SvgPicture.asset(Images.request),
                              SizedBox(
                                width: Responsive.h1,
                              ),
                              const TextWidget(
                                title: "Friend Request",
                                fontSize: 14,
                              ),
                              SizedBox(
                                width: Responsive.h3,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Responsive.h1,
                          ),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (itemBuilder, index) {
                              return const ProfileCard(
                                subtitleBackground: Colors.white,
                                showBorder: true,
                                borderColor: Color(0xFFDEE1E2),
                                secondImagePath: Images.plusOutline,
                                backgroundColor: Colors.transparent,
                                iconBorderColor: Color(0xFFDEE1E2),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                height: Responsive.h1,
                              );
                            },
                          ),
                          SizedBox(
                            height: Responsive.h1,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: columnButton(
                                      Images.referee, "Referee Mode")),
                              SizedBox(
                                width: Responsive.h2,
                              ),
                              Expanded(
                                  child:
                                      columnButton(Images.card, "Admin Mode")),
                            ],
                          ),
                          SizedBox(
                            height: Responsive.h1,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: Colors.transparent,
                                border:
                                    Border.all(color: const Color(0xFFDEE1E2))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(Images.headset),
                                const TextWidget(title: "Give Feedback")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Transform.translate(
              offset: Offset(0, Responsive.h3),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
                child: SvgPicture.asset(Images.qr),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget columnButton(String svgPath, String title) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(14)),
      child: Column(
        children: [
          SvgPicture.asset(
            svgPath,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            width: 20,
          ),
          SizedBox(
            height: Responsive.h1,
          ),
          TextWidget(
            title: title,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
