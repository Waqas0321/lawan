import 'package:flutter/material.dart';
import 'package:lawan/app/utils/text.dart';
import 'package:lawan/app/widgets/TimeSlotHomeDropDown.dart';
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
    'Soccer2',
  ];

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
              isWidth: MediaQuery.of(context).size.width * 0.35,
              image: Image(
                image: AssetImage(Images.ball),
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.08,
              ),
            ),
            TimeSlotHome(
              timeSlots: weeksRate,
              selectedTimeSlot: _selectedTimeSlot,
              onChanged: _onTimeSlotChanged,
              isImage: false,
              isWidth: MediaQuery.of(context).size.width * 0.23,
              isText: false,
              image: Image(
                image: AssetImage(Images.avatar),
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.08,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 23, bottom: 20),
          child: Center(
              child: Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: Apptext.mainHeading1,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      fontFamily: "Lufga")),
              TextSpan(
                  text: Apptext.mainHeading2,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      fontFamily: "Lufga")),
            ]),
          )),
        ),
      ],
    );
  }
}
