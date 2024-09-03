import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/Session_Screen/timeZone_containers.dart';
import 'package:lawan/app/widgets/bottom_sheet/share_bottom_sheet.dart';
import 'Bottom_Buttons.dart';
import 'MenuButton.dart';

class SessionBottomSheetContainer extends StatefulWidget {
  const SessionBottomSheetContainer({super.key});

  @override
  State<SessionBottomSheetContainer> createState() => _SessionBottomSheetContainerState();
}

class _SessionBottomSheetContainerState extends State<SessionBottomSheetContainer> {

  @override
  Widget build(BuildContext context) {
    return acrylicAny(
      blurlevel: 4,
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        width: 377,
        height: 637,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 16,
              height: 556,
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              decoration: ShapeDecoration(
                color: Color(0xB2F2F3F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
              ),
              child: Stack(
                children:[
                  Column(
                    children: [
                      Container(
                        width: 177,
                        height: 20,
                        padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                        decoration: ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.00, -1.00),
                            end: Alignment(0, 1),
                            colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(80),
                              bottomRight: Radius.circular(80),
                            ),
                          ),
                        ),
                        child: Center(
                            child: Text(
                              'MBPJ Sports Complex',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Lufga',
                                  fontWeight: FontWeight.w500,
                                  height: 0.08,
                                  decoration: TextDecoration.none),
                            )),
                      ),
                      SizedBox(height: 12),
                      Container(
                        width: 165.18,
                        height: 165.18,
                        padding: const EdgeInsets.all(12),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.24),
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            Images.QRCode,
                            height: 141.18,
                            width: 141.18,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Images.areena,
                            height: 16,
                            width: 16,
                            color: Color(0xff545F71),
                          ),
                          SizedBox(width: 2),
                          Text(
                            '3',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Lufga',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 67,
                        height: 16,
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFF23A891),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Complete',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Lufga',
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
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
                                Image(
                                  image: AssetImage(Images.avatar),
                                  height: 32,
                                  width: 32,
                                ),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jese Leos',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Lufga',
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Container(
                                      width: 38,
                                      height: 16,
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 6),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                            color: Color(0xFFDEE1E2),
                                          ),
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Host',
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
                                  padding:  EdgeInsets.all(8),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
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
                                SizedBox(width: 3),
                                MenuButton()
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Column(
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
                      SizedBox(height: 16),
                    ],
                  ),
                  Positioned(
                    top: 13,
                      right: 0,
                      child: GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: BottomButtons(
                            height: 42,
                            width: 42,
                            image: Images.x, onTap: () {  },)))
                ]
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 16,
              height: 81,
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
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
                  BottomButtons(image: Images.trash, onTap: () {  },),
                  SizedBox(
                    width: 16,
                  ),
                  BottomButtons(image: Images.upload, onTap: () {
                    Get.back();
                    Get.bottomSheet(const ShareBottomSheet(),
                      isScrollControlled: true);
                  },),
                  SizedBox(
                    width: 16,
                  ),
                  BottomButtons(image: Images.pencil, onTap: () {  },),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: BottomButtons(
                          isExpanded: true, image: Images.users_group_outline, onTap: () {  },)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}