import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/utils/images.dart';

class ScreenBody extends StatelessWidget {
  ScreenBody({
    super.key,
  });

  final images = Images();

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
                Expanded(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "Seamless experience",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Lufga")),
                    TextSpan(
                        text: " for your customers",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Lufga"))
                  ])),
                ),
                SizedBox(
                  height: 4,
                ),
                Image(image: AssetImage(Images.user_friendly),height: 64, width: 64,),
                Text("in creating and sharing sessions with friends.",
                    style: TextStyle(
                        fontSize: 12,
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
                        image: AssetImage(Images.multi_devices),
                        height: 64,
                        width: 64,
                      ),
                      Text(
                        "Online visibility",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400,fontFamily: "Lufga"),
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
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: "     Earn income",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600,fontFamily: "Lufga")),
                            TextSpan(
                                text: " by",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400,fontFamily: "Lufga")),
                            TextSpan(
                                text: "\n     listing as many arena that you own",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400,fontFamily: "Lufga")),
                          ])),
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
                                image: AssetImage("assets/Images/dollars_images.png"),
                                height: 57,
                                width: 168,
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
        Container(
          height: 275,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff2A65F8),
                Color(0xff193B92),
              ]),
              borderRadius: BorderRadius.circular(32)),
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
                          fontFamily: "Lufga"
                      ),
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
