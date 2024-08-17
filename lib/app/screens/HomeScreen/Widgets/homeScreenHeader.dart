import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/utils/text.dart';
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
              isWidth: MediaQuery.of(context).size.width * 0.34,
              image: Image(
                image: const AssetImage(Images.ball),
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.08,
              ),
            ),
            Container(
              height: 44,
              width: MediaQuery.of(context).size.width * 0.20,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(300)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage(Images.avtar),
                      height: 32,
                      width: 32,
                    ),
                    Image(
                      image: AssetImage(Images.chevron_down),
                      height: 16,
                      width: 16,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
         Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01,),
          child: const Center(
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
