import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawan/app/widgets/Areena/TimeSlotHomeDropDown.dart';
import '../../../utils/images.dart';

class ScreenHeader extends StatefulWidget {
  ScreenHeader({
    super.key,
  });

  @override
  State<ScreenHeader> createState() => _ScreenHeaderState();
}

class _ScreenHeaderState extends State<ScreenHeader> {
  final List<String> weeksRate = [
    'Soccer',
    'Futsal',
  ];
  String selectedDate = '';

  // Currently selected time slot
  String _selectedTimeSlot = 'Soccer';

  void _onTimeSlotChanged(String newValue) {
    setState(() {
      _selectedTimeSlot = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TimeSlotHome(
              timeSlots: weeksRate,
              selectedTimeSlot: _selectedTimeSlot,
              onChanged: _onTimeSlotChanged,
              isImage: false,
              isWidth: MediaQuery.of(context).size.width * 0.31,
              image: "⚽",
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.19,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(300)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Images.avtar,
                    height: 32,
                    width: 40,
                  ),
                  SvgPicture.asset(
                    Images.chevron_down,
                    height: 16,
                    width: 16,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.004,
                  ),
                ],
              ),
            ),
          ],
        ),
        IntrinsicHeight(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'List your arena',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Lufga',
                    fontWeight: FontWeight.w600,
                    height: 1,
                    letterSpacing: -0.60,
                  ),
                ),
                TextSpan(
                  text: ' with Lawan, attract and inspire Pahlawans!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Lufga',
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    letterSpacing: -0.60,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
