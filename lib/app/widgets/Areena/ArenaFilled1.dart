import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/widgets/Areena/custom_tabbar.dart';
import 'package:lawan/app/widgets/Areena/details_section.dart';
import 'package:lawan/app/widgets/Areena/hour_section.dart';
import 'package:lawan/app/widgets/Areena/rate_section.dart';

import '../../screens/HomeScreen/Widgets/circularContainer.dart';
import '../../utils/images.dart';
import '../../utils/text.dart';
import 'EditAlertBox.dart';
class AreenaFilled1 extends StatelessWidget {
  const AreenaFilled1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F3F2),
      body: Stack(
        children:[
          SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 16,right: 16, top: 2,bottom: 24 ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 44,
                            width: MediaQuery.of(context).size.width * 0.35 ,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(300)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    image: AssetImage(Images.ball),
                                    width: 32,
                                    height: 48,
                                  ),
                                  Text(
                                    Apptext.soccer,
                                    style:
                                    TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                                  ),
                                  Image(
                                    image: AssetImage(Images.chevron_down),
                                    height: 16,
                                    width: 16,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 44,
                            width: MediaQuery.of(context).size.width * 0.20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(300)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image(
                                    image: AssetImage(Images.avtar),
                                    height: 32,
                                    width: 32,
                                  ),
                                  Image(
                                    image: AssetImage(Images.chevron_down),
                                    height: 16,
                                    width: 16,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Arena',
                        style: TextStyle(
                          color: Color(0xFF545F71),
                          fontSize: 14,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: GestureDetector(
                                  onTap: (){
                                    showCustomEditAlertDialog(context,"Edit Arena Name",'MBPJ Sports Complex');
                                  },
                                  child: Image(image: AssetImage(Images.pencil),height: 20,width: 20,))),
                          SizedBox(width: 6,),
                          Expanded(
                              flex: 3,
                              child: CustomContainer(width: 178,height: 44,text: 'MBPJ Sports Complex',color: AappColor.black,textColor: AappColor.white,)),
                          SizedBox(width: 6,),
                          Expanded(
                              flex: 2,
                              child: CustomContainer(width: 178,height: 44,text: 'KLFA Court',color: AappColor.white,textColor: Color(0xFF545F71),)),
                        ],
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [


                          Expanded(
                              flex: 5,
                              child: CustomContainer(width: 100,height: 44,text: 'Sports Arena Mahkota Cheras',color: AappColor.white,textColor: AappColor.black,)),
                          SizedBox(width: 6,),
                          CustomContainer(width: 44,height: 44,icon: true,color: AappColor.black,textColor: AappColor.white,circular: true,),
                          Expanded(
                              flex: 1,
                              child: SizedBox(width: 6,)),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Court',
                        style: TextStyle(
                          color: Color(0xFF545F71),
                          fontSize: 14,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: GestureDetector(
                                  onTap: (){
                                    showCustomEditAlertDialog(context,"Edit Court Name",'1');
                                  },
                                  child: Image(image: AssetImage(Images.pencil),height: 20,width: 20,))),
                          CustomContainer(width: 44,height: 44,text: "1",color: AappColor.black,textColor: AappColor.white,circular: true,),
                          SizedBox(width: 18,),
                          CustomContainer(width: 44,height: 44,text: "2",color: AappColor.white,textColor: AappColor.black,circular: true,),
                          SizedBox(width: 13,),
                          CustomContainer(width: 44,height: 44,text: "3",color: AappColor.white,textColor: AappColor.black,circular: true,),
                          SizedBox(width: 13,),
                          CustomContainer(width: 44,height: 44,icon: true,color: AappColor.black,textColor: AappColor.white,circular: true,),
                          Expanded(
                              flex: 5,
                              child: SizedBox(width: 8,)),


                        ],
                      )

                    ],),
                  SizedBox(height: 24,),
                  Column(
                    children: [
                      Container(
                        height: Get.height,

                        color: Colors.transparent,
                        child: DefaultTabController(length: 3, child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomTabBar(tabs: ["Details", 'Hour', 'Rate']),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  DetailsSction(),
                                  HourSection(),
                                  RateSection()
                                ],
                              ),
                            )
                          ],
                        )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: Get.width/2 -75,
          bottom: 23,
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
                      image: "assets/Images/fi_690839.png",
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
                      text: "Arena",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),)
        ]
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key, required this.width, required this.height, this.text = '', required this.color, required this.textColor, this.circular = false, this.icon = false,
  });
  final double width;
  final double height;
  final String text;
  final Color color;
  final Color textColor;
  final bool circular;
  final bool icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius:circular? BorderRadius.circular(100) :BorderRadius.circular(32),
          ),
      ),
      child: Center(
        child:icon? Icon(Icons.add,size: 20,color: Colors.white,) :Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontFamily: 'Lufga',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
