import 'dart:ui';

import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/text.dart';
import 'Add-Arena-Container.dart';
class customHeaderCount extends StatelessWidget {
  customHeaderCount({
    super.key, required this.thisCount, });
  final String thisCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.06),
          Expanded(
            child: CustomCard(
              count: '1',
              text: Apptext.details,
              color:thisCount =="1"? AappColor.brand2: AappColor.Grey1,
              linecolor:AappColor.white,
              countcolor:thisCount=="1"? AappColor.white: AappColor.dark_grey,
              textcolor: thisCount == "1" ?AappColor.brand2:AappColor.dark_grey,
              fontWeight: thisCount == "1"?FontWeight.w500: FontWeight.w400, padding: 2,
            ),
          ),
          Expanded(
            child: CustomCard(
              count: '2',
              text: Apptext.hour,
              color:thisCount =="2"? AappColor.brand2: AappColor.Grey1,
              countcolor:thisCount=="2"? AappColor.white: AappColor.dark_grey,
              textcolor: thisCount == "2" ?AappColor.brand2:AappColor.dark_grey,
              fontWeight: thisCount == "2"?FontWeight.w500: FontWeight.w400, padding: 10, linecolor:AappColor.white,

            ),
          ),
          Expanded(
            child: CustomCard(
              count: '3',
              text: Apptext.rate,
              color:thisCount =="3"? AappColor.brand2: AappColor.Grey1,
              linecolor: Colors.transparent,
              countcolor:thisCount=="3"? AappColor.white: AappColor.dark_grey,
              textcolor: thisCount == "3" ?AappColor.brand2:AappColor.dark_grey,
              fontWeight: thisCount == "3"?FontWeight.w500: FontWeight.w400, padding: 6,
            ),
          )
        ],
      ),
    );
  }
}