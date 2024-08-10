import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_sizer/adaptive_sizer.dart';
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
      isScrollControlled: true, // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AddAreena1();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffDDDDDD),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   ScreenHeader(),
                  ScreenBody(),
                  SizedBox(height: 8,),
                  Container(
                    width: 205,
                    height: 68,
                    decoration: BoxDecoration(
                        color: Color(0xffB9B9B9),
                        borderRadius: BorderRadius.circular(80)
                    ),
                    child: Center(
                      child: Padding(
                        padding:  EdgeInsets.all(3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircularContainer(
                              image: "assets/Images/play.png",
                              color: Colors.white,
                              text: "Session",
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircularContainer(
                              image: "assets/Images/fi_690839.png",
                              color: Colors.black,
                              text: "Arena",
                              textColor: Colors.white,
                              imageHeight: 24,
                              imageWidth: 24,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircularContainer(
                              image: "assets/Images/fi_3446795.png",
                              color: Colors.white,
                              text: "Arena",
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}




