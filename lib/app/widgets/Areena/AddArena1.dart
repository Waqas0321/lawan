import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/text.dart';
import 'package:lawan/app/widgets/Areena/ar-in-out-button.dart';
import 'package:lawan/app/widgets/Areena/areenaButton.dart';

import '../../utils/ScreenDimensions.dart';
import '../../utils/images.dart';
import 'Add-Arena-Container.dart';
import 'AddAreena2.dart';
import 'custom-Arena-textform.dart';

class AddAreena1 extends StatefulWidget {
  @override
  State<AddAreena1> createState() => _AddAreena1State();
}

class _AddAreena1State extends State<AddAreena1> {
  String _selectedButton = 'Indoor'; // Track the selected button

  void _onButtonPressed(String buttonText) {
    setState(() {
      _selectedButton = buttonText; // Update the selected button
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width:MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/1.2,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: AappColor.gainsboro,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 0,
                  offset: Offset(0, -0.50),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 13, right: 13, bottom: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        CustomDetailRow(
                          containerColor: AappColor.bluee,
                          textColor: AappColor.bluee,
                          countColor: Colors.white,
                          countText: "1",
                          detailText: "Details",
                          padding:30,
                        ),
                        CustomDetailRow(
                          containerColor: AappColor.white,
                          textColor: AappColor.mid_grey,
                          countColor: AappColor.mid_grey,
                          countText: "2",
                          detailText: "Hour",
                          textpadding: 5,
                          padding:30,

                        ),
                        CustomDetailRow(
                          containerColor: AappColor.white,
                          textColor: AappColor.mid_grey,
                          countColor: AappColor.mid_grey,
                          countText: "3",
                          detailText: "Rate",
                          textpadding: 5,
                          showline: true,
                        ),
                      ],
                    ),
                    SizedBox(height:12,),
                    Text(
                      Apptext.add_arena_details,
                      style: TextStyle(
                        color: AappColor.black,
                        fontSize: 16,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      Apptext.add_photos_name_and_location,
                      style: TextStyle(
                        color: AappColor.mid_grey,
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: Get.width * 0.4,
                      height: 120,
                      padding: const EdgeInsets.all(24),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFE9EAF0)),
                          borderRadius: BorderRadius.circular(32),

                        ),
                      ),

                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Image.asset(Images.gallery),
                          ),
                          SizedBox(height: 12),
                          Text(
                            Apptext.add_picture,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AappColor.mid_grey,
                              fontSize: 14,
                              fontFamily: 'Lufga',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomTextFormField(
                        hintText: Apptext.location, icon: Images.location),
                    SizedBox(
                      height: 12,
                    ),
                    CustomTextFormField(
                      hintText: Apptext.enter_arena_name,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomTextFormField(
                      hintText: Apptext.enter_court_name,
                      text: Apptext.optional,
                    ),
                    SizedBox(height: 22),
                    Text(
                      Apptext.arena_type,
                      style: TextStyle(
                        color: Color(0xFF545F71),
                        fontSize: 14,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ArenaINOutButton(
                            text: 'Indoor',
                            isSelected: _selectedButton == 'Indoor',
                            onPressed: () => _onButtonPressed('Indoor'),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: ArenaINOutButton(
                            text: 'Outdoor',
                            isSelected: _selectedButton == 'Outdoor',
                            onPressed: () => _onButtonPressed('Outdoor'),
                          ),
                        ),
                        Expanded(child: SizedBox(width: 70)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      Apptext.flooring,
                      style: TextStyle(
                        color: Color(0xFF545F71),
                        fontSize: 14,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: ScreenDimensions(context).height2Percent,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ArenaINOutButton(
                            text: 'Court Turf',
                            isSelected: _selectedButton == 'Court Turf',
                            onPressed: () => _onButtonPressed('Court Turf'),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: ArenaINOutButton(
                            text: 'Court Grass',
                            isSelected: _selectedButton == 'Court Grass',
                            onPressed: () => _onButtonPressed('Court Grass'),
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: ArenaINOutButton(
                            text: 'Cement',
                            isSelected: _selectedButton == 'Cement',
                            onPressed: () => _onButtonPressed('Cement'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomAreenaButton(
                            text: Apptext.cancel,
                            color: AappColor.white,
                            borderColor: Color(0xFFE9EAF0),
                            textColor: Colors.black,
                            onTap: () {
                              Get.back();
                            },
                          ),
                        ),
                        SizedBox(
                          width: ScreenDimensions(context).width1Percent,
                        ),
                        Expanded(
                          child: CustomAreenaButton(
                            text: Apptext.next,
                            color: AappColor.black,
                            borderColor: Color(0xFFE9EAF0),
                            textColor: AappColor.white,
                            onTap: () async {
                              Navigator.pop(context);
                              _openBottomSheet(context);
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled:
          true, // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AddAreena2();
      },
    );
  }
}

class CustomDetailRow extends StatelessWidget {
  final Color containerColor;
  final Color textColor;
  final Color countColor;
  final String countText;
  final String detailText;
  final double containerHeight;
  final double containerWidth;
  final double spacing;
  final double textpadding;
  final double padding;

  final bool showline;
  CustomDetailRow({
    required this.containerColor,
    required this.textColor,
    required this.countColor,
    required this.countText,
    required this.detailText,
    this.containerHeight = 40.0,
    this.containerWidth = 30.0,
    this.spacing = 16.0,
    this.textpadding = 2,
    this.padding = 2,

    this.showline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                color: containerColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
              child: Center(
                child: Text(
                  countText,
                  style: TextStyle(color: countColor),
                ),
              ),
            ),
            SizedBox(width: padding,),
            if (!showline) Image.asset(Images.line),
            SizedBox(width: padding,),

          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: textpadding),
          child: Text(
            detailText,
            style: TextStyle(color: textColor),
          ),
        ),
      ],
    );
  }
}
