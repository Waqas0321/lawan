import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../utils/images.dart';
import 'Session_Header.dart';

class CustomCalender extends StatefulWidget {
  const CustomCalender({super.key});

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  DateTime _focusedDay = DateTime.now();
  String _selectedMonth = '${DateTime.now().month}';
  bool _isCalendarExpanded = false;

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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      int currentMonth = int.parse(_selectedMonth);
                      if (currentMonth > 1) {
                        _selectedMonth = '${currentMonth - 1}';
                        _focusedDay =
                            DateTime(DateTime.now().year, currentMonth - 1, DateTime.now().day);
                      } else {
                        _selectedMonth = "12";
                        _focusedDay = DateTime(DateTime.now().year - 1, 1, 1);
                      }
                    });
                  },
                  child: CircularArrowsContainer(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 16,
                        color: Color(0xff545F71),
                      ))),
              SizedBox(width: 3),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      int currentMonth = int.parse(_selectedMonth);
                      if (currentMonth < 12) {
                        _selectedMonth = '${currentMonth + 1}';
                        _focusedDay =
                            DateTime(DateTime.now().year, currentMonth + 1, DateTime.now().day);
                      } else {
                        _selectedMonth = "1";
                        _focusedDay = DateTime(DateTime.now().year + 1, 1, 1);
                      }
                    });
                  },
                  child: CircularArrowsContainer(
                      icon: Icon(Icons.arrow_forward_ios,
                          size: 16, color: Color(0xff545F71)))),
              SizedBox(width: 16),
              Expanded(
                child: Container(
                  width: 193,
                  height: 45,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFE0E0E0)),
                        borderRadius: BorderRadius.circular(80),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x0C000000),
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        )
                      ]),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: Image.asset(
                        Images.chevron_sort, // Ensure this path is correct
                        width: 20,
                        height: 20,
                        color: Colors.white,
                      ),
                      dropdownColor: Colors.black,
                      value: monthsName[int.parse(_selectedMonth) - 1],
                      onChanged: (value) {
                        setState(() {
                          _selectedMonth = '${monthsName.indexOf(value!) + 1}';
                          _focusedDay = DateTime(DateTime.now().year,
                              monthsName.indexOf(value) + 1, 1);
                        });
                      },
                      items: monthsName.map((month) {
                        return DropdownMenuItem(
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_today_outlined,
                                color: Color(0xffACB4C0),
                                size: 16,
                              ),
                              SizedBox(width: 8),
                              Text(
                                month,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Lufga',
                                  fontWeight: FontWeight.w500,
                                  height: 0.05,
                                ),
                              ),
                            ],
                          ),
                          value: month,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Container(
                height: 44,
                width: 44,
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          TableCalendar(
            calendarFormat: _isCalendarExpanded? CalendarFormat.month:CalendarFormat.week,
            startingDayOfWeek: StartingDayOfWeek.monday,
            firstDay: DateTime(2020, 10, 16),
            lastDay: DateTime(2030, 3, 14),
             focusedDay: _focusedDay,
            onDaySelected: (selectedDay, focusedDay) {
              print('Day selected: $selectedDay');
              setState(() {
                _focusedDay = selectedDay;
                _selectedMonth = '${selectedDay.month}';

              });
            },

            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, day, events) {
                if (day == _focusedDay) {
                  return Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                child: Center(
                        child: Text(
                          _focusedDay.day.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                ),
                  );
                }
                else{
                  return null;
                }
              },
              todayBuilder: (context, day, focusedDay) {
                if(focusedDay != _focusedDay){
                  return Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        _focusedDay.day.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                }else{
                   print(focusedDay);
                }


              },
            ),

            headerVisible: false,
            calendarStyle: CalendarStyle(


              todayDecoration: BoxDecoration(
              ),
              todayTextStyle: TextStyle(
              ),
              weekendTextStyle: TextStyle(
                color: Color(0xFF545F71),
                fontSize: 12,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
            daysOfWeekHeight: 50,
            rowHeight:50,
          ),
           // TableCalendar(
           //   startingDayOfWeek: StartingDayOfWeek.monday,
           //   calendarFormat: CalendarFormat.week,
           //   firstDay: DateTime(2020, 10, 16),
           //   lastDay: DateTime(2030, 3, 14),
           //   focusedDay: _focusedDay,
           //   onDaySelected: (selectedDay, focusedDay) {
           //     print('Day selected: $selectedDay');
           //     setState(() {
           //       _focusedDay = selectedDay;
           //       _selectedMonth = '${selectedDay.month}';
           //
           //     });
           //   },
           //
           //   calendarBuilders: CalendarBuilders(
           //     markerBuilder: (context, day, events) {
           //       if (day == _focusedDay) {
           //         return Container(
           //           width: 40,
           //           height: 40,
           //           padding: const EdgeInsets.symmetric(horizontal: 9),
           //           decoration: ShapeDecoration(
           //             color: Colors.black,
           //             shape: RoundedRectangleBorder(
           //               borderRadius: BorderRadius.circular(16),
           //             ),
           //           ),
           //           child: Center(
           //             child: Text(
           //               _focusedDay.day.toString(),
           //               textAlign: TextAlign.center,
           //               style: TextStyle(
           //                 color: Colors.white,
           //                 fontSize: 14,
           //                 fontFamily: 'Inter',
           //                 fontWeight: FontWeight.w500,
           //               ),
           //             ),
           //           ),
           //         );
           //       }
           //       else{
           //         return null;
           //       }
           //     },
           //     todayBuilder: (context, day, focusedDay) {
           //       if(focusedDay != _focusedDay){
           //         return Container(
           //           width: 40,
           //           height: 40,
           //           padding: const EdgeInsets.symmetric(horizontal: 9),
           //           decoration: ShapeDecoration(
           //             color: Colors.black,
           //             shape: RoundedRectangleBorder(
           //               borderRadius: BorderRadius.circular(16),
           //             ),
           //           ),
           //           child: Center(
           //             child: Text(
           //               _focusedDay.day.toString(),
           //               textAlign: TextAlign.center,
           //               style: TextStyle(
           //                 color: Colors.white,
           //                 fontSize: 14,
           //                 fontFamily: 'Inter',
           //                 fontWeight: FontWeight.w500,
           //               ),
           //             ),
           //           ),
           //         );
           //       }else{
           //         print(focusedDay);
           //       }
           //
           //
           //     },
           //   ),
           //
           //   headerVisible: false,
           //   calendarStyle: CalendarStyle(
           //
           //
           //     todayDecoration: BoxDecoration(
           //     ),
           //     todayTextStyle: TextStyle(
           //     ),
           //     weekendTextStyle: TextStyle(
           //       color: Color(0xFF545F71),
           //       fontSize: 12,
           //       fontFamily: 'Lufga',
           //       fontWeight: FontWeight.w400,
           //       height: 0.12,
           //     ),
           //   ),
           //   daysOfWeekHeight: 50,
           //   rowHeight:50,
           // ),
          SizedBox(height: 16,),
          GestureDetector(
            onTap: () {
              setState(() {
                _isCalendarExpanded = !_isCalendarExpanded;
              });
            },
            child: Container(
              width: 40,
              height: 6,
              decoration: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CalanderText extends StatelessWidget {
  const CalanderText({
    super.key,
    required this.text,
    this.isDate = false,
  });

  final String text;
  final bool isDate;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: isDate ? Colors.black : Color(0xFF545F71),
        fontSize: isDate ? 14 : 12,
        fontFamily: isDate ? 'Inter' : 'Lufga',
        fontWeight: isDate ? FontWeight.w500 : FontWeight.w400,
      ),
    );
  }
}
