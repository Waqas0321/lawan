import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';

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
  String _selectedButton = 'Indoor';

void _onButtonPressed(String buttonText) {
  setState(() {
    _selectedButton = buttonText; // Update the selected button
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
            Text(
              'Add Arena Details',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'Add photos, name and location',
              style: TextStyle(
                color: Color(0xFF545F71),
                fontSize: 12,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
              ),
            ),
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
                      Icon(Icons.image, size: 24,),
                      SizedBox(height: 8,),
                      Text(
                        'Add Picture',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFACB3C0),
                          fontSize: 14,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                        ),
                      ),
        
                    ],
                  ),
                ),
        
              ],
            ),
            SizedBox(height: 16,),
            Container(
              height: 44,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Petaling Jaya, Selangor',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.location_on,size: 16,color:AappColor.mid_grey,)
                ],
              ),
            ),
            SizedBox(height: 16,),
            Text(
              'Arena Type',
              style: TextStyle(
                color: Color(0xFF545F71),
                fontSize: 14,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 16,),
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
                SizedBox(width: 6),
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
            SizedBox(height: 16,),
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
                SizedBox(width: 6),
                Expanded(
                  child: ArenaINOutButton(
        
                    text: 'Court Grass',
                    isSelected: _selectedButton == 'Court Grass',
                    onPressed: () => _onButtonPressed('Court Grass'),
                  ),
                ),
                SizedBox(width: 16),
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
              height: 32,
            ),

          ],
        ),
      ),
    );
  }
}
