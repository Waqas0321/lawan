import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawan/app/screens/Session_Screen/Widgets/Session_Header.dart';
import 'package:lawan/app/screens/Session_Screen/Widgets/calander.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../utils/images.dart';
import '../HomeScreen/Widgets/Table_Calender.dart';
import 'Widgets/Session_timeSlot.dart';
class Sessionscreen extends StatefulWidget {
  const Sessionscreen({super.key});

  @override
  State<Sessionscreen> createState() => _SessionscreenState();
}

class _SessionscreenState extends State<Sessionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SessionHeader(),
                CustomCalender()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


