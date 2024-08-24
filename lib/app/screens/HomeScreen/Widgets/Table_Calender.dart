import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TableCalenderScreen extends StatefulWidget {
  const TableCalenderScreen({super.key});

  @override
  State<TableCalenderScreen> createState() => _TableCalenderScreenState();
}

class _TableCalenderScreenState extends State<TableCalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 100,
          child: TableCalendar(
            // Use TableCalendar with a capital 'C'
            firstDay: DateTime(2020, 10, 16),
            lastDay: DateTime(2030, 3, 14),
            focusedDay: DateTime.now(),
          )),
    );
  }
}
