import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../text_widget.dart';
import 'Custom_Circular_Button.dart';

class InOut_doorContainer extends StatefulWidget {
  const InOut_doorContainer({
    super.key, required this.isOutdoor,
  });
  final bool isOutdoor;

  @override
  State<InOut_doorContainer> createState() => _InOut_doorContainerState();
}

class _InOut_doorContainerState extends State<InOut_doorContainer> {
  late bool selected1 = false;
  late bool selected2 = true;
  late bool selected3 = false;
  void _onButtonPress(String text) {
    setState(() {
      switch (text) {
        case "1":
          selected1 = true;
          selected2 = false;
          selected3 = false;
          break;
        case "2":
          selected1 = false;
          selected2 = true;
          selected3 = false;

          break;
        case "3":
          selected1 = false;
          selected2 = false;
          selected3 = true;
          break;
        default:
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      height:widget.isOutdoor? 213:128,
      clipBehavior: Clip.antiAlias,
      decoration: widget.isOutdoor? ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ):ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 12, left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            height: 120,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.white),
              borderRadius: BorderRadius.circular(32),
              image: DecorationImage(
                image: AssetImage(Images.greenery),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.025,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.800000011920929),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(400),
                        bottomRight: Radius.circular(400),
                      ),
                    ),
                  ),
                  child: Center(
                    child: TextWidget(
                      title: 'MBPJ Sports Complex',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      textColor: AppColors.white,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.125,
                      height: MediaQuery.of(context).size.width * 0.04,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Center(
                        child: TextWidget(
                          title: '5.2km',
                          fontSize: 11,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.textSecondColor,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          Images.location_marker,
                          color: AppColors.white,
                          height: 16,
                          width: 16,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        TextWidget(
                          title: 'Petaling Jaya',
                          textAlign: TextAlign.right,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          textColor: AppColors.white,
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.125,
                      height: MediaQuery.of(context).size.width * 0.04,
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Center(
                        child: TextWidget(
                          title: 'Grass',
                          textAlign: TextAlign.center,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          widget.isOutdoor? Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Images.areena,height: 16,width: 16,color: Color(0xffACB4C0),),
                  SizedBox(width: 8),
                  TextWidget(
                    title: 'Choose Court',
                    textColor: AppColors.textSecondColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  )
                ],),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCircularButton(
                    isSelected: selected1,
                    onPressFun: () => _onButtonPress("1"),
                    text: '1',),
                  SizedBox(width: 12,),
                  CustomCircularButton(
                    isSelected: selected2,
                    onPressFun: () => _onButtonPress("2"),
                    text: '2',),
                  SizedBox(width: 12,),
                  CustomCircularButton(
                    isSelected: selected3,
                    onPressFun: () => _onButtonPress("3"),
                    text: '3',),
                ],)
            ],
          ): SizedBox(height: 0,)
        ],
      ),
    );
  }
}
