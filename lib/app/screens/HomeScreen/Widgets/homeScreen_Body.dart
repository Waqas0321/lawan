import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/utils/appSizes.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/utils/text.dart';

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
              side: const BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child:  Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Expanded(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: Apptext.seamlessExperience1,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Lufga")),
                    TextSpan(
                        text: Apptext.seamlessExperience2,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Lufga"))
                  ])),
                ),
                SizedBox(
                  height: AppSizes.spaceBTWItems,
                ),
                const Image(image: AssetImage(Images.user_friendly),height: 64, width: 64,),
                const Text(Apptext.seamlessExperience3,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Lufga"))
              ],
            ),
          ),
        ),
        SizedBox(height: AppSizes.spaceBTWSections),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 143,
                width: 172.5,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: const Center(
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
            SizedBox(width: AppSizes.spaceBTWSections),
            Expanded(
              child: Container(
                height: 143,
                width: 172.5,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 11),
                  child: Stack(
                    children: [
                      const Positioned(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                                text: Apptext.earnIncome1,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600,fontFamily: "Lufga")),
                            TextSpan(
                                text: Apptext.by,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400,fontFamily: "Lufga")),
                            TextSpan(
                                text: Apptext.earnIncome2,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400,fontFamily: "Lufga")),
                          ])),
                        ),
                      ),
                      Positioned(
                        height: 57,
                        width: MediaQuery.of(context).size.width * 0.46,
                        top: 78,
                        child: const Column(
                          children: [
                            Expanded(
                              child: Image(
                                image: AssetImage(Images.dollar_signs),
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
        SizedBox(height: AppSizes.spaceBTWSections),
        Container(
          height: 275,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color(0xff2A65F8),
                Color(0xff193B92),
              ]),
              borderRadius: BorderRadius.circular(32)),
          child: const Center(
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
                  height: 24,
                  width: 24,
                  child: Icon(
                    CupertinoIcons.add_circled_solid,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                    top: 120,
                    left: 40,
                    child: Text(
                      Apptext.add_arena,
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
