import 'package:flutter/material.dart';

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
              width: 123,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(300)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage(Images.add),
                      width: 32,
                      height: 48,
                    ),
                    Text(
                      "Soccer",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Image(
                      image: AssetImage(Images.game),
                      height: 16,
                      width: 16,
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 44,
              width: 68,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(300)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage(Images.mainImage),
                      height: 32,
                      width: 32,
                    ),
                    Image(
                      image: AssetImage("Images.down_Shevron"),
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
          padding: EdgeInsets.all(8.0),
          child: Center(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "    List your arena ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      )),
                  TextSpan(
                      text: "with Lawan, \n attract and inspire Pahlawans!",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      )),
                ]),
              )),
        ),
      ],
    );
  }
}