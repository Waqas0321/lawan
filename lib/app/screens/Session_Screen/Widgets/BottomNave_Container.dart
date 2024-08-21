import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/Areena/ArenaFilled1.dart';

class BottomnaveContainer extends StatefulWidget {
  const BottomnaveContainer({super.key});

  @override
  State<BottomnaveContainer> createState() => _BottomnaveContainerState();
}

class _BottomnaveContainerState extends State<BottomnaveContainer> {
  final List<String> DropDownItems = ['Call', 'Message', "Chat"];

  @override
  Widget build(BuildContext context) {
    return acrylicAny(
      blurlevel: 4,
      child: Container(
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
              child: Column(
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
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.079,
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
                              padding: const EdgeInsets.all(12),
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
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(width: 3),
                            Container(
                                width: 155,
                                height: 42,
                                padding: const EdgeInsets.all(12),
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFFDEE1E2)),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Center(
                                    child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    icon: SvgPicture.asset(
                                      Images.dots_vertical_outline,
                                      width: 12,
                                      height: 12,
                                      color: Colors.black,
                                    ),
                                    onChanged: (String? newValue) {
                                      // Handle the selected value here
                                      print(newValue);
                                    },
                                    // Set to null to prevent the button's value from changing
                                    items: [
                                      DropdownMenuItem(
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              Images.phone_outline,
                                              height: 16,
                                              width: 16,
                                              color: Color(0xff545F71),
                                            ),
                                            SizedBox(width: 4,),
                                            Text(
                                              'Call',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Lufga',
                                                fontWeight: FontWeight.w500,
                                                height: 0.07,
                                              ),
                                            ),
                                          ],
                                        ),
                                        value: 'call',
                                      ),
                                      DropdownMenuItem(
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              Images.identification,
                                              height: 16,
                                              width: 16,
                                              color: Color(0xff545F71),
                                            ),
                                            SizedBox(width: 4,),
                                            Text(
                                              'Identification',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontFamily: 'Lufga',
                                                fontWeight: FontWeight.w500,
                                                height: 0.07,
                                              ),
                                            ),
                                          ],
                                        ),
                                        value: 'Identification',
                                      ),
                                    ],
                                    // onTap: () {
                                    //   showMenu(context: context,
                                    //       position: RelativeRect.fromLTRB(
                                    //           100, 100, 100, 100),
                                    //       items: [
                                    //         PopupMenuItem(
                                    //           child: Text('Item 1'),
                                    //           value: 'Item 1',
                                    //         ),
                                    //         PopupMenuItem(
                                    //           child: Text('Item 2'),
                                    //           value: 'Item 2',
                                    //         ),
                                    //
                                    //       ]
                                    //
                                    //   ).then((value) {
                                    //
                                    //   },);
                                    // }, // Empty list to prevent dropdown menu from showing
                                  ),
                                )))
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  // Expanded(
                  //   child: GridView.builder(
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2,
                  //         mainAxisSpacing: 8,
                  //         crossAxisSpacing: 8,
                  //         childAspectRatio: 1.9),
                  //     itemCount: 4,
                  //     itemBuilder: (context, index) {
                  //       return BottomContainer();
                  //     },
                  //   ),
                  // ),
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
                children: [
                  BottomButtons(image: Images.trash),
                  SizedBox(
                    width: 16,
                  ),
                  BottomButtons(image: Images.upload),
                  SizedBox(
                    width: 16,
                  ),
                  BottomButtons(image: Images.pencil),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: BottomButtons(
                          isExpanded: true, image: Images.users_group_outline)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    super.key,
    required this.image,
    this.isExpanded = false,
  });

  final String image;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 49,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: isExpanded ? Colors.black : Colors.transparent,
        shape: RoundedRectangleBorder(
          side: isExpanded
              ? BorderSide()
              : BorderSide(width: 1, color: Color(0xFFDEE1E2)),
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            color: isExpanded ? Color(0xffACB4C0) : Color(0xff545F71),
            height: 16,
            width: 16,
          ),
          isExpanded
              ? SizedBox(
                  width: 8,
                )
              : SizedBox(
                  width: 0,
                ),
          isExpanded
              ? Text(
                  'Line-Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none),
                )
              : SizedBox(
                  width: 0,
                )
        ],
      )),
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
    this.isFirst = false,
    this.isSecond = false,
    this.isFourth = false,
    required this.image,
    required this.text1,
    required this.text2,
  });

  final bool isFirst;
  final bool isSecond;
  final bool isFourth;
  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 165,
        height: 88,
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFDEE1E2)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  image,
                  height: 16,
                  width: 16,
                  color: Color(0xff545F71),
                ),
                SizedBox(width: 2),
                Text(
                  text1,
                  style: TextStyle(
                      color: Color(0xFF545F71),
                      fontSize: 12,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none),
                )
              ],
            ),
            SizedBox(height: 4),
            Expanded(
              child: Text(
                text2,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: isFourth ? 20 : 14,
                    fontFamily: 'Lufga',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none),
              ),
            ),
            SizedBox(height: 4),
            isSecond
                ? Container(
                    width: 37,
                    height: 16,
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
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
                      child: Text(
                        '2 hr',
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
                : SizedBox(
                    height: 1,
                  )
          ],
        ),
      ),
    );
  }
}
