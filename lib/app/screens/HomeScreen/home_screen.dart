import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/screens/HomeScreen/Widgets/homeScreen_Body.dart';
import 'package:lawan/app/utils/images.dart';

import '../../utils/ScreenDimensions.dart';
import '../../utils/colors.dart';
import '../../widgets/Areena/AddArena1.dart';
import '../../widgets/Areena/circularContainer.dart';
import 'Widgets/homeScreenHeader.dart';

class HomeScreen extends StatelessWidget {
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
    return Scaffold(
        backgroundColor: const Color(0xFFF2F3F2),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.8), // Start near the bottom
              end: Alignment(0.0, 1.2), // End at the bottom edge
              colors: [
                Colors.black.withOpacity(0.0), // Fully transparent color
                Colors.black.withOpacity(0.4), // Slightly visible gradient
              ],
            ),
          ),

          child: Stack(
            children: [
              SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.023,
                        left: MediaQuery.of(context).size.width * 0.023,
                        right: MediaQuery.of(context).size.width * 0.023),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ScreenHeader(),
                        SizedBox(height:MediaQuery.of(context).size.height*0.01),
                        ScreenBody(),
                        SizedBox(
                          height: 19,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: Get.width/3.9,
                bottom: 16,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xCCE5E6E5),
                      borderRadius: BorderRadius.circular(80)),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CircularContainer(
                              image: Images.play,
                              color: Colors.white,
                              text: "Session",
                            ),
                          ),
                          SizedBox(
                            width: 6,
                            height: 0,
                          ),
                          Expanded(
                            child: CircularContainer(
                              image: Images.layerImage,
                              color: Colors.black,
                              text: "Arena",
                              textColor: Colors.white,
                              imageHeight: 24,
                              imageWidth: 24,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                            height: 0,
                          ),
                          Expanded(
                            child: CircularContainer(
                              image: "assets/Images/fi_3446795.png",
                              color: Colors.white,
                              text: "Sales",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),)
            ]

          ),
        ));
  }
}
