import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/images.dart';
import '../../../widgets/Areena/TimeSlotHomeDropDown.dart';

class SalesHeader extends StatefulWidget {
  SalesHeader({super.key});

  @override
  State<SalesHeader> createState() => _SalesHeaderState();
}

class _SalesHeaderState extends State<SalesHeader> {
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
            height: 16,
          ),
        ),
      ],
    );
  }
}
