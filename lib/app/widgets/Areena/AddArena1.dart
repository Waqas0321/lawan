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
import 'custom_header_count.dart';

class AddAreena1 extends StatefulWidget {
  @override
  State<AddAreena1> createState() => _AddAreena1State();
}

class _AddAreena1State extends State<AddAreena1> {
  String _selectedButton = 'Indoor'; // Track the selected button
  late bool _selectedButtonIndoor = true;
  late bool _selectedButtonOutdoor = false;
  late bool _selectedCourtButtonTruff = true;
  late bool _selectedCourtButtonGrass = false;
  late bool _selectedCourtButtonCement = false;

  void _onButtonPressINOutdoor( String text){
    setState(() {
      switch (text) {
        case "Indoor":
          _selectedButtonIndoor = true;
          _selectedButtonOutdoor = false;
          break;
        case "Outdoor":
          _selectedButtonOutdoor = true;
          _selectedButtonIndoor = false;
          break;
        default:
          break;
      }
    });
  }
  void _onButtonPressCourt( String text){
    setState(() {
      switch (text) {
        case "Truf":
          _selectedCourtButtonTruff = true;
          _selectedCourtButtonGrass = false;
          _selectedCourtButtonCement = false;
          break;
        case "Grass":
          _selectedCourtButtonTruff = false;
          _selectedCourtButtonGrass = true;
          _selectedCourtButtonCement = false;
          break;
        case "Cement":
          _selectedCourtButtonTruff = false;
          _selectedCourtButtonGrass = false;
          _selectedCourtButtonCement = true;
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Get.width + 20,
            margin:EdgeInsets.all(8),
            height: 735,
            decoration: ShapeDecoration(
              color: AappColor.Grey1,
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
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 13,right: 13,bottom: 13),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 13,),
                    Expanded(
                      child: customHeaderCount(
                        thisCount: "1",
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
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
                        color: AappColor.dark_grey,
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: Get.width * 0.4,
                      height: 120,
                      padding: const EdgeInsets.all(24),
                      decoration: ShapeDecoration(
                        color: AappColor.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: AappColor.white),
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
                            child: Image.asset(Images.gallery,color:AappColor.mid_grey,),
                          ),
                          SizedBox(height: 8),
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
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomTextFormField(
                        hintText: Apptext.location, icon: Images.location),
                    SizedBox(
                      height: 8,
                    ),
                    CustomTextFormField(
                      hintText: Apptext.enter_arena_name,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomTextFormField(
                      hintText: Apptext.enter_court_name,
                      text: Apptext.optional,
                    ),

                    SizedBox(height: 20),
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
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ArenaINOutButton(
                            text: 'Indoor',
                            isSelected: _selectedButtonIndoor,
                            onPressed: (){
                              _onButtonPressINOutdoor("Indoor");
                            },
                          ),
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: ArenaINOutButton(
                            text: 'Outdoor',
                            isSelected: _selectedButtonOutdoor,
                            onPressed: () => _onButtonPressINOutdoor("Outdoor")
                          ),
                        ),
                        Expanded(child: SizedBox(width: 70)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
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
                            isSelected: _selectedCourtButtonTruff,
                            onPressed: () {
                              _onButtonPressCourt("Truf");

                            },
                          ),
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: ArenaINOutButton(
                            text: 'Court Grass',
                            isSelected: _selectedCourtButtonGrass,
                            onPressed: () => _onButtonPressCourt("Grass"),
                          ),
                        ),
                        SizedBox(width: 6),
                        Expanded(
                          child: ArenaINOutButton(
                            text: 'Cement',
                            isSelected: _selectedCourtButtonCement,
                            onPressed: () => _onButtonPressCourt("Cement"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.center,
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: CustomAreenaButton(
                            text: Apptext.cancel,
                            color: AappColor.white,
                            borderColor: Color(0xFFE9EAF0),
                            textColor: Colors.black, onTap: () {
                            Get.back();
                          },
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: CustomAreenaButton(
                            text: Apptext.next,
                            color: AappColor.black,
                            borderColor: Color(0xFFE9EAF0),
                            textColor:AappColor.white, onTap: () async{
                               Navigator.pop(context);
                               _openBottomSheet(context);
                          },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,)
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
      isScrollControlled: true, // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AddAreena2();
      },
    );
  }

}
