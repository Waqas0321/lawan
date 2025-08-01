import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/Areena/custom-Arena-textform.dart';

import '../../screens/HomeScreen/Widgets/circularContainer.dart';
import '../../utils/ScreenDimensions.dart';
import '../../utils/text.dart';
import 'ar-in-out-button.dart';
class DetailsSction extends StatefulWidget {
  DetailsSction({super.key});

  @override
  State<DetailsSction> createState() => _DetailsSctionState();
}

class _DetailsSctionState extends State<DetailsSction> {
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
    return Material(
      color: Colors.transparent,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16,),
            Row(
              children: [
                Container(
                  width: 160,
                  height: 120,
                  padding: const EdgeInsets.all(24),
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(Images.add_Image),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFE0E0E0)),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),

                ),
                SizedBox(width: 16,),
                Container(
                  width: 160,
                  height: 120,
                  padding: const EdgeInsets.all(24),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Images.gallery),
                      // Image(image: AssetImage(Images.picture), height: 24,width: 24,),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: 149,
                        child: Text(
                          'Add Picture',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFACB3C0),
                            fontSize: 14,
                            fontFamily: 'Lufga',
                            fontWeight: FontWeight.w400,
                            height:1,
                          ),
                        ),

                      ),

                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 12,),
            CustomTextFormField(
              onTap: () {

              },
                fontWeight:FontWeight.w500,
                color:AppColors.black,
                hintText: 'Petaling Jaya, Selangor', icon: Images.location),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.02),
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
                height: MediaQuery.of(context).size.height * 0.005),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ArenaINOutButton(
                  borderColor:Color(0xFFDEE1E2),
                  height:
                  MediaQuery.of(context).size.height * 0.05,
                  text: 'Indoor',

                  isSelected: _selectedButtonIndoor,
                  onPressed: () {
                    _onButtonPressINOutdoor("Indoor");
                  },
                ),
                SizedBox(
                    width:
                    MediaQuery.of(context).size.width * 0.02),
                ArenaINOutButton(
                    borderColor:Color(0xFFDEE1E2),

                    height:
                    MediaQuery.of(context).size.height * 0.05,
                    text: 'Outdoor',
                    isSelected: _selectedButtonOutdoor,
                    onPressed: () =>
                        _onButtonPressINOutdoor("Outdoor")),
                const Expanded(child: SizedBox(width: 70)),
              ],
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.02),
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
                ArenaINOutButton(
                  borderColor:Color(0xFFDEE1E2),

                  height:
                  MediaQuery.of(context).size.height * 0.05,
                  text: 'Court Turf',
                  isSelected: _selectedCourtButtonTruff,
                  onPressed: () {
                    _onButtonPressCourt("Truf");
                  },
                ),
                SizedBox(width: 6),
                ArenaINOutButton(
                  borderColor:Color(0xFFDEE1E2),
                  height:
                  MediaQuery.of(context).size.height * 0.05,

                  text: 'Court Grass',
                  isSelected: _selectedCourtButtonGrass,
                  onPressed: () => _onButtonPressCourt("Grass"),
                ),
                SizedBox(
                    width:
                    MediaQuery.of(context).size.width * 0.02),
                ArenaINOutButton(
                  borderColor:Color(0xFFDEE1E2),
                  height:
                  MediaQuery.of(context).size.height * 0.05,

                  text: 'Cement',
                  isSelected: _selectedCourtButtonCement,
                  onPressed: () => _onButtonPressCourt("Cement"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
