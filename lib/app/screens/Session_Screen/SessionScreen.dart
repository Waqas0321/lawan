import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawan/app/screens/Session_Screen/Widgets/DateDayContainer.dart';
import 'package:lawan/app/screens/Session_Screen/Widgets/Session_Header.dart';
import 'package:lawan/app/screens/Session_Screen/Widgets/calander.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../utils/images.dart';
import '../HomeScreen/Widgets/Table_Calender.dart';
import 'Widgets/Session_timeSlot.dart';
import 'Widgets/session_Container.dart';
class Sessionscreen extends StatefulWidget {
  const Sessionscreen({super.key});

  @override
  State<Sessionscreen> createState() => _SessionscreenState();
}

class _SessionscreenState extends State<Sessionscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F3F2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16,right: 16),
          child: Column(
            children: [
              SessionHeader(),
              CustomCalender(),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                    child: Row(
                      children: [
                        Text(
                          '23 Jun',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Lufga',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Sun, Today',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Lufga',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 21,
                    child: Text(
                      'No Sessions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        SizedBox(height: 16),
                        DateDayTextContainer(),
                        SizedBox(height: 16),
                        SessionContainer(),
                        SizedBox(height: 8),
                        SessionContainer(),
                      ],
                    ),
                  );
                },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





