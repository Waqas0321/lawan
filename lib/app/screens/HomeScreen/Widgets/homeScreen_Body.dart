import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/screens/HomeScreen/home_screen.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';

import '../../../widgets/Areena/AddArena1.dart';

class ScreenBody extends StatelessWidget {
  ScreenBody({
    super.key,
  });

  final images = Images();
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AddAreena1();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 155,
          width: MediaQuery.of(context).size.width,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Seamless experience ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Lufga',
                            fontWeight: FontWeight.w600,
                            height: 0.11,
                          ),
                        ),
                        TextSpan(
                          text: 'for your customers',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Lufga',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Image(
                  image: AssetImage(Images.user_friendly),
                  height: 64,
                  width: 64,
                  color: AappColor.brand2,
                ),
                Text("in creating and sharing sessions with friends.",
                    style: TextStyle(
                        fontSize: 12,
                        color: AappColor.dark_grey,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lufga"))
              ],
            ),
          ),
        ),
        SizedBox(height: 19),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 143,
                width: 172.5,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(
                          Images.multi_devices,
                        ),
                        color: AappColor.brand2,
                        height: 64,
                        width: 64,
                      ),
                      Text(
                        "Online visibility",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Lufga"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Container(
                height: 143,
                width: 172.5,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 11),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Earn income',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Lufga',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ' by listing as many arena that you own',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Lufga',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Positioned(
                        height: 57,
                        width: MediaQuery.of(context).size.width * 0.46,
                        top: 78,
                        child: Column(
                          children: [
                            Expanded(
                              child: Image(
                                image: AssetImage(
                                  Images.dollar_signs,
                                ),
                                color: AappColor.brand2,
                                height: 57,
                                fit: BoxFit.contain,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 19),
        InkWell(
          onTap: () {
            _openBottomSheet(context);
          },
          child: Container(
            height: 275,
            width: MediaQuery.of(context).size.width,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            child: Center(
              child: Stack(
                children: [
                  Image(
                    image: AssetImage(Images.vector),
                    width: 150,
                    height: 204.38,
                  ),
                  Positioned(
                    top: 90,
                    left: 63,
                    child: Icon(
                      CupertinoIcons.add_circled_solid,
                      color: Colors.white,
                    ),
                    height: 24,
                    width: 24,
                  ),
                  Positioned(
                      top: 120,
                      left: 40,
                      child: Text(
                        "Add Arena",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: "Lufga"),
                      ))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
