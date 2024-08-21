import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:lawan/app/screens/Session_Screen/Widgets/BottomNave_Container.dart';
import 'package:lawan/app/screens/Session_Screen/Widgets/DateDayContainer.dart';

import 'package:lawan/app/screens/Session_Screen/Widgets/Session_Header.dart';
import 'package:lawan/app/screens/Session_Screen/Widgets/calander.dart';
import 'Widgets/session_Container.dart';

class Sessionscreen extends StatefulWidget {
  const Sessionscreen({super.key});

  @override
  State<Sessionscreen> createState() => _SessionscreenState();
}

class _SessionscreenState extends State<Sessionscreen> {

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Color(0xFFF2F3F2),
      child: Padding(
        padding: EdgeInsets.only(
            top: Get.width * 0.02,
            left: Get.width * 0.03,
            right: Get.width * 0.03),
        child: Column(
          children: [
            SessionHeader(),
            CustomCalender(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                  child: Row(
                    children: [
                      Text(
                        '23 Jun',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),

                      ),
                      SizedBox(width: 16),
                      Text(
                        'Today',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 21,
                  child: Text(
                    'No Sessions',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                    ),

                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          DateDayTextContainer(),
                          SizedBox(height: 16),
                          SessionContainer(),
                          SizedBox(height: 8),
                          SessionContainer(),
                        ],

                      ),
                    );
                  },),
                ),
              ],
            ),
            SizedBox(height: 16),
            SessionContainer(),
            SizedBox(
              height: 8,
            ),
            SessionContainer(),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 24,
              child: Row(
                children: [
                  Text(
                    '24 Jun',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Tomorrow',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SessionContainer(),
            SizedBox(
              height: 8,
            ),
            SessionContainer(),
          ],
        ),
      ),
    );
  }
}

