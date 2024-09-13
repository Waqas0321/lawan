import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/Friendly_Session/session_created_Controller.dart';
import 'package:lawan/app/screens/friendly/friendly_bottom_nav.dart';
import 'package:lawan/app/widgets/Friendly_Session/smallGreenContainer.dart';
import 'package:lawan/app/widgets/text_widget.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../MenualBooking_Screen/List_Container.dart';
import '../Session_Screen/Bottom_Buttons.dart';
import '../Session_Screen/MenuButton.dart';
import '../Session_Screen/timeZone_containers.dart';

class SessionCreated extends StatelessWidget {
  SessionCreated({super.key});

  SessionCreatedController controller = Get.put(SessionCreatedController());

  @override
  Widget build(BuildContext context) {
    return acrylicAny(
      blurlevel: 5,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 16),
          width: 377,
          height: 730,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 16,
                height: 640,
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                decoration: const ShapeDecoration(
                  color: Color(0xB2F2F3F2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                ),
                child: Stack(children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          SvgPicture.asset(
                            Images.Pill,
                            height: 40,
                            width: 50,
                            fit: BoxFit.contain,
                          ),
                          GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: BottomButtons(
                                onTap: () {},
                                image: Images.x,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      const Center(
                          child: TextWidget(
                        title: 'Session Succesfully Created',
                        textColor: AppColors.textSecondColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
                      const SizedBox(height: 16),
                      ListContainer(
                        isSuccessFull: true,
                        isOutdoor: false,
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: Get.width,
                        height: 58,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextWidget(
                                title: 'Sesssion starting in',
                                textColor: AppColors.containerTextColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                textAlign: TextAlign.center,
                              ),
                              TextWidget(
                                title: '2 days 2 hours 6 mins 3 sec ',
                                textColor: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.078,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Image(
                                  image: AssetImage(Images.avatar),
                                  height: 32,
                                  width: 32,
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Jese Leos',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Lufga',
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Container(
                                      height: 16,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                            width: 1,
                                            strokeAlign:
                                                BorderSide.strokeAlignOutside,
                                            color: Color(0xFFDEE1E2),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Arena Owner',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF545F71),
                                            fontSize: 11,
                                            fontFamily: 'Lufga',
                                            fontWeight: FontWeight.w500,
                                            decoration: TextDecoration.none,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 36,
                                  height: 36,
                                  padding: const EdgeInsets.all(8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFFDEE1E2)),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    Images.chat,
                                    // height: 20,
                                    // width: 20,
                                  ),
                                ),
                                const SizedBox(width: 3),
                                const MenuButton()
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          smallGreenContainer(
                            text: '25 - 35 years',
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          smallGreenContainer(
                            text: "Male & Female",
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          smallGreenContainer(
                            text: 'English & Malay',
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Column(
                        children: [
                          Row(
                            children: [
                              BottomContainer(
                                image: Images.calendar,
                                text1: "Date",
                                text2: "Tue,  25 Sep 2024",
                              ),
                              SizedBox(width: 8),
                              BottomContainer(
                                isSecond: true,
                                image: Images.clock,
                                text1: "Time",
                                text2: "9:00 AM - 11:00 AM",
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              BottomContainer(
                                image: Images.location_marker,
                                text1: "Location",
                                text2: "Petaling Jaya,\n Selangor",
                              ),
                              SizedBox(width: 8),
                              BottomContainer(
                                isFourth: true,
                                image: Images.currency_dollar,
                                text1: "Price",
                                text2: "RM220",
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 16,
                height: 81,
                padding: const EdgeInsets.all(16),
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BottomButtons(
                      onTap: () {},
                      image: Images.pencil,
                      iconColor: AppColors.dark_grey,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    BottomButtons(
                      onTap: () {},
                      image: Images.upload,
                      iconColor: AppColors.dark_grey,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    BottomButtons(
                      onTap: () {},
                      image: Images.calendar,
                      iconColor: AppColors.dark_grey,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: BottomButtons(
                            onTap: () {
                              Get.to(FriendlyBottomNav(
                                bycreatedSession: true,
                              ));
                            },
                            isExpanded: true,
                            image: Images.users_group_outline)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
