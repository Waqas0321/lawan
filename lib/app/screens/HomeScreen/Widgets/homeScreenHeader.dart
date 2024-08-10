import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:lawan/app/utils/text.dart';

import '../../../utils/images.dart';

class ScreenHeader extends StatelessWidget {
  ScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
              child: Padding(
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
                      Apptext.scrore,
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
        const Padding(
          padding: EdgeInsets.only(top: 23,bottom: 20),
          child: Center(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "    List your arena ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        fontFamily: "Lufga"
                      )),
                  TextSpan(
                      text: "with Lawan, \n attract and inspire Pahlawans!",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                          fontFamily: "Lufga"
                      )),
                ]),
              )),
        ),
      ],
    );
  }
}