import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/images.dart';
class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: 36,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Color(0xFFDEE1E2)),
          borderRadius: BorderRadius.circular(100)
      ),
      child: Center(
        child: PopupMenuButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          offset: Offset(30, -140),
          icon: SvgPicture.asset(
              Images.dots_vertical_outline),
          clipBehavior: Clip.antiAlias,
          itemBuilder: (context) => [
            PopupMenuItem(
              child: Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                width: 250,
                height: 16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          Images.phone_outline,
                          height: 16,
                          width: 16,
                          color: Color(0xff545F71),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Call',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Lufga',
                            fontWeight: FontWeight.w500,
                            height: 1,
                          ),
                        ),

                      ],
                    ),


                  ],
                ),
              ),
              value: 'Call',
            ),

            PopupMenuItem(
              child: Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(8),
                width: 250,
                height: 65,

                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Images.identification,
                            height: 16,
                            width: 16,
                            color: Color(0xff545F71),
                          ),
                          SizedBox(width: 4,),
                          Text(
                            'Identification',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Lufga',
                              fontWeight: FontWeight.w500,
                              height: 0.07,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4)
                    ],
                  ),
                ),
              ),
              value: 'Identification',
            ),
          ],
          onSelected: (value) {
            // Handle menu item selection
            print(value);
            if (value == 'Call') {

            } else if (value == 'Identification') {
              // Handle menu item 2 selection
            }
          },
        ),
      ),
    );
  }
}