import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawan/app/screens/HomeScreen/home_screen.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';

import '../../../widgets/Areena/AddArena1.dart';
import '../../../widgets/Areena/AlertBox.dart';

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

    double containerHeight;
    double leftPosition;
    double topPosition;

    if (screenSize.height <= 667) {
      // Small devices (e.g., iPhone SE, older Androids)
      containerHeight = 100.h;
      leftPosition = 40;
      topPosition = 30;
    } else if (screenSize.height > 667 && screenSize.height <= 812) {
      // Medium devices (e.g., iPhone 11/12 Mini, Pixel 4a)
      containerHeight = 210.h;
      leftPosition = 45;
      topPosition = 85;
    } else if (screenSize.height > 812 && screenSize.height <= 896) {
      // Large devices (e.g., iPhone XR, iPhone 11, Pixel 4)
      containerHeight = 225.h;
      leftPosition = 38;
      topPosition = 85;
    } else if (screenSize.height > 896 && screenSize.height <= 1000) {
      // Extra-large devices (e.g., iPhone 12 Pro Max, Pixel 5)
      containerHeight = 250.h;
      leftPosition = 35;
      topPosition = 80;
    } else {
      // Very large devices (e.g., iPad, large Android tablets)
      containerHeight = 350.h;
      leftPosition = 30;
      topPosition = 70;
    }

    return Column(
      children: [
        IntrinsicHeight(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.005,
          ),
        ),
        // Text(MediaQuery.of(context).size.height.toStringAsFixed(3)),
        Container(
          height: MediaQuery.of(context).size.height * 0.16,
          width: MediaQuery.of(context).size.width,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Column(
            children: [
              IntrinsicHeight(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
              ),
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
              // Text(MediaQuery.of(context).size.height.toStringAsFixed(2)),

              SvgPicture.asset(
                Images.user_friendly,
                fit: BoxFit.cover,
                height: 64,
                width: 64,
                color: AappColor.brand2,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                'in creating and sharing sessions with friends.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF545F71),
                  fontSize: 12,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                  height: 0.12,
                ),
              ),
              // IntrinsicHeight(
              //   child: SizedBox(
              //     height: MediaQuery.of(context).size.height * 0.005,
              //   ),
              // ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.18,
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: SvgPicture.asset(
                          Images.multi_devices,
                          color: AappColor.brand2,
                          height: 64,
                          width: 64,
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.01),
                      Text(
                        'Online visibility',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.18,
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
                      SizedBox(
                        width: 140.50,
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
                                  height: 0.11,
                                ),
                              ),
                              TextSpan(
                                text: ' by listing as many arena that you own',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Lufga',
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Expanded(
                        child: SvgPicture.asset(
                          Images.dollar_signs,
                          color: AappColor.brand2,
                          // height: 57,
                          // fit: BoxFit.cover,
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
            margin:EdgeInsets.only(left:1),
            decoration: ShapeDecoration(
              image:DecorationImage(
                image:AssetImage(Images.vector,),
              ),
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            child: Padding(
              padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Images.add,height:35,width:30,fit:BoxFit.contain,),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.009,
                  ),
                  Text(
                    'Add Arena',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
  void showCustomAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent, // Make the background transparent
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32), // Custom border radius
          ),
          contentPadding: EdgeInsets.zero, // Remove default padding
          content: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xB2F2F3F2), // Custom background color
                    borderRadius: BorderRadius.circular(32), // Match the border radius
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 0,
                        offset: Offset(0, -0.50),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Step 1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Add Arena Details',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Add photos, name, and location',
                        style: TextStyle(
                          color: Color(0xFF545F71),
                          fontSize: 12,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.14,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(width: 1, color: Colors.white),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.photo, color: Color(0xFF545F71)),
                            SizedBox(height: 8),
                            Text(
                              'Add Picture',
                              style: TextStyle(
                                color: Color(0xFF545F71),
                                fontSize: 12,
                                fontFamily: 'Lufga',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Close the dialog
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

}
