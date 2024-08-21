import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/images.dart';

class BottomnaveContainer extends StatelessWidget {
  const BottomnaveContainer({super.key});

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
              padding: const EdgeInsets.only(left: 16, right: 16, ),
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
                                Images.dots_vertical_outline,
                                height: 16,
                                width: 16,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 1.9),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return BottomContainer();
                      },
                    ),
                  ),

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
                      child:
                          BottomButtons(isExpanded: true, image: Images.users_group_outline)),
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
        color: isExpanded? Colors.black: Colors.transparent,
        shape: RoundedRectangleBorder(
          side:isExpanded?BorderSide() : BorderSide(width: 1, color: Color(0xFFDEE1E2)),
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(image,color:isExpanded? Color(0xffACB4C0): Color(0xff545F71),height: 16,width: 16,),
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
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 180,
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
                  Images.clock,
                  height: 16,
                  width: 16,
                  color: Color(0xff545F71),
                ),
                Text(
                  'Time',
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
                '9:00 AM - 11:00 AM',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Lufga',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.none),
              ),
            ),
            SizedBox(height: 4),
            Container(
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
          ],
        ),
      ),
    );
  }
}
