import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawan/app/screens/HomeScreen/Widgets/Table_Calender.dart';
import 'package:lawan/app/screens/Session_Screen/Widgets/Session_timeSlot.dart';
import 'package:lawan/app/widgets/Areena/TimeSlotTwoAreena.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../utils/images.dart';
import '../../../widgets/Areena/TimeSlotHomeDropDown.dart';

class SessionHeader extends StatefulWidget {
  SessionHeader({super.key});

  @override
  State<SessionHeader> createState() => _SessionHeaderState();
}

class _SessionHeaderState extends State<SessionHeader> {
  void _onTimeSlotChanged(String newValue) {
    setState(() {
      _selectedTimeSlot = newValue;
      // Update the _focusedDay variable based on the selected time slot
      if (_selectedTimeSlot == 'Soccer') {
        _focusedDay = DateTime.now();
      } else if (_selectedTimeSlot == 'Futsal') {
        _focusedDay = DateTime.now().add(Duration(days: 1));
      }
    });
  }

  DateTime _focusedDay = DateTime.now();
  final List<String> weeksRate = [
    'Soccer',
    'Futsal',
  ];
  // Currently selected time slot
  String _selectedTimeSlot = 'Soccer';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TimeSlotHome(
              color: Color(0xFFE5E7EB),
              timeSlots: weeksRate,
              selectedTimeSlot: _selectedTimeSlot,
              onChanged: _onTimeSlotChanged,
              isImage: false,
              isWidth: MediaQuery.of(context).size.width * 0.35,
              image: "⚽",
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.19,
              decoration: BoxDecoration(
                  color: Color(0xFFE5E7EB),
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
            height: 16,
          ),
        ),
      ],
    );
  }
}

class CircularArrowsContainer extends StatelessWidget {
  const CircularArrowsContainer({
    super.key, required this.icon,
  });
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFDEE1E2)),
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Center(child: icon),
    );
  }
}
