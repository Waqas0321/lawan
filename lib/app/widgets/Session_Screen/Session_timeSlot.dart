import 'package:flutter/material.dart';

class TimeSlotSession extends StatefulWidget {
  const TimeSlotSession({
    super.key, this.onChanged,
  });
  final Function(String?)? onChanged;


  @override
  State<TimeSlotSession> createState() => _TimeSlotSessionState();
}

class _TimeSlotSessionState extends State<TimeSlotSession> {
  DateTime _focusedDay = DateTime.now();
  String _selectedMonth = '${DateTime.now().month}';

  final List<String> monthsName = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.48,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            // side: BorderSide(width: 1, color: Color(0xFFE9EAF0)),
            borderRadius: BorderRadius.circular(80),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            value: monthsName[int.parse(_selectedMonth) - 1],
            onChanged: widget.onChanged,
            items: monthsName.map((month) {
              return DropdownMenuItem(
                child: Text(month),
                value: month,
              );
            }).toList(),

          ),

        ),
      ),
    );
  }
}