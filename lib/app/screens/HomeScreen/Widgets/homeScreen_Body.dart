import 'package:adaptive_sizer/adaptive_sizer.dart';
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
    final screenSize = MediaQuery.of(context).size;

    // Define container height based on screen size
    double containerHeight;
    double leftPosition;
    double topPosition;
    if (screenSize.height <= 667) {
      containerHeight = 100.h; // Short container for small devices
      leftPosition = 50;
      topPosition = 90;
    } else if (screenSize.height <= 844) {
      containerHeight = 210.h; // Medium container for medium devices
      leftPosition = 39;
      topPosition = 80;
    } else {
      containerHeight = 150.h; // Tall container for large devices
      leftPosition = 40;
      topPosition = 60;
    }

    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.19,
          width: MediaQuery.of(context).size.width,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text.rich(
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Image(
                image: AssetImage(
                  Images.user_friendly,
                ),
                fit: BoxFit.cover,
                height: 64,
                width: 64,
                color: AappColor.brand2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text("in creating and sharing sessions with friends.",
                  style: TextStyle(
                      fontSize: 12,
                      color: AappColor.dark_grey,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Lufga"))
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.19,
                width: MediaQuery.of(context).size.width * 0.23,
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
                      SizedBox(height: screenSize.height * 0.03),
                      Text(
                        "Online visibility",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
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
                height: MediaQuery.of(context).size.height * 0.19,
                width: MediaQuery.of(context).size.width * 0.23,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 30),
                  child: Column(
                    children: [
                      Text.rich(
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
                              text: ' by \n listing as many arena that you own',
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
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
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: screenSize.height * 0.02),
        InkWell(
          onTap: () {
            _openBottomSheet(context);
          },
          child: Container(
            height: containerHeight,
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
                    width: 150.w,
                    height: 204.38.h,
                  ),
                  Positioned(
                    top: topPosition,
                    left: leftPosition,
                    child: Column(
                      children: [
                        Image.asset(Images.add),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.005,
                        ),
                        Text(
                          "Add Arena",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontFamily: "Lufga"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
