import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/screens/HomeScreen/Widgets/homeScreen_Body.dart';
import 'package:lawan/app/utils/images.dart';
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
        body: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.transparent.withOpacity(0.001), // Simulate brightness
            BlendMode.colorBurn,
          ),          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.0, 0.8), // Start near the bottom
                end: Alignment(0.0, 1), // End at the bottom edge
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
                          top: MediaQuery.of(context).size.width * 0.02,
                          left: MediaQuery.of(context).size.width * 0.03,
                          right: MediaQuery.of(context).size.width * 0.03),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ScreenHeader(),
                          SizedBox(height:MediaQuery.of(context).size.height*0.01),
                          ScreenBody(),

                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: Get.width/3.9,
                  bottom: 20,
                  child: Container(
                    margin:EdgeInsets.only(bottom:10),
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 70,
                    padding: const EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      color: Color(0xCCE5E6E5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CircularContainer(
                              image: Images.play,
                              color: Colors.white,
                              imageHeight:15,
                              text: "Session",
                              imageWidth: 15,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                            height: 0,
                          ),
                          Expanded(
                            child: CircularContainer(
                              image:Images. areena,
                              color: Colors.black,
                              text: "Arena",
                              textColor: Colors.white,
                              imageHeight: 15,
                              imageWidth: 15,
                            ),
                          ),
                          SizedBox(
                            width: 6,
                            height: 0,
                          ),
                          Expanded(
                            child: Container(
                              width: 63,
                              height: 60,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: CircleBorder(),
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   SvgPicture.asset(
                                      Images.sales,
                                      height: 15,
                                      width: 15,
                                      color:Colors.black,
                                    ),
                                    Text(
                                        "Sales",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Lufga',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                          letterSpacing: -0.24,
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),)
              ]
          
            ),
          ),
        ));
  }
}
