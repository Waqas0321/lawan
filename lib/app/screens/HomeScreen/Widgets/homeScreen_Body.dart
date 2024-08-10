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
          height: 151,
          width: 361,
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
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Seamless experience",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                  TextSpan(
                      text: " for your customers",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
                ])),
                SizedBox(
                  height: 10,
                ),
                Image(image: AssetImage("assets/Images/user-friendly.png")),
                Text("in creating and sharing sessions with friends.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 141,
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
                        image: AssetImage("assets/Images/multi-devices.png"),
                        height: 64,
                        width: 64,
                      ),
                      Text(
                        "Online visibility",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Container(
                height: 141,
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
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "Earn income ",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600)),
                          TextSpan(
                              text: "by listing as many arena that you own",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400)),
                        ])),
                      ),
                      Positioned(
                        height: 57,
                        width: 168,
                        top: 82,
                        child: Image(
                          image: AssetImage("assets/Images/dollar signs.png"),
                          height: 57,
                          width: 168,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Container(
          height: 260,
          width: 361,
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
                  image: AssetImage("assets/Images/Vector.png"),
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
                          color: Colors.white),
                    ))
              ],
            ),
          ),
        )
      ],
    );
  }
}