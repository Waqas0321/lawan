import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/bindings/app_bindings.dart';
import 'package:lawan/app/controller/Session_Screen/SessionScreen_Controller.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/widgets/text_widget.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../screens/AddMenualBooking_Screen/MenualBooking.dart';
import '../../utils/images.dart';
import 'Session_Header.dart';

class ExpandableCustomCalender extends StatefulWidget {
  const ExpandableCustomCalender({
    super.key,
    this.isSecondDessign = false,
  });

  final bool isSecondDessign;

  @override
  State<ExpandableCustomCalender> createState() =>
      _ExpandableCustomCalenderState();
}

class _ExpandableCustomCalenderState extends State<ExpandableCustomCalender> {
  DateTime _focusedDay = DateTime.now();
  String _selectedMonth = '${DateTime.now().month}';
  bool _isCalendarExpanded = false;
final controller=Get.find<SessionScreenController>();
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
          widget.isSecondDessign
              ? Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 193,
                        height: 45,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFE0E0E0)),
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
                              Images
                                  .chevron_sort, // Ensure this path is correct
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
                            dropdownColor: Colors.black,
                            value: monthsName[int.parse(_selectedMonth) - 1],
                            onChanged: (value) {
                              setState(() {
                                _selectedMonth =
                                    '${monthsName.indexOf(value!) + 1}';
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
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            int currentMonth = int.parse(_selectedMonth);
                            if (currentMonth > 1) {
                              _selectedMonth = '${currentMonth - 1}';
                              _focusedDay = DateTime(DateTime.now().year,
                                  currentMonth - 1, DateTime.now().day);
                            } else {
                              _selectedMonth = "12";
                              _focusedDay =
                                  DateTime(DateTime.now().year - 1, 1, 1);
                            }
                          });
                        },
                        child: CircularArrowsContainer(
                            icon: SvgPicture.asset(Images.chevron_left))),
                    SizedBox(width: 3),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            int currentMonth = int.parse(_selectedMonth);
                            if (currentMonth < 12) {
                              _selectedMonth = '${currentMonth + 1}';
                              _focusedDay = DateTime(DateTime.now().year,
                                  currentMonth + 1, DateTime.now().day);
                            } else {
                              _selectedMonth = "1";
                              _focusedDay =
                                  DateTime(DateTime.now().year + 1, 1, 1);
                            }
                          });
                        },
                        child: CircularArrowsContainer(
                            icon: SvgPicture.asset(Images. chevron_left,
                                color: Color(0xff545F71)))),
                    widget.isSecondDessign
                        ? SizedBox(
                            width: 0,
                          )
                        : SizedBox(width: 16),
                    !widget.isSecondDessign
                        ? Container(
                            height: 44,
                            width: 44,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
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
                          )
                        : SizedBox(
                            width: 0,
                          ),
                  ],
                )
              : Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            int currentMonth = int.parse(_selectedMonth);
                            if (currentMonth > 1) {
                              _selectedMonth = '${currentMonth - 1}';
                              _focusedDay = DateTime(DateTime.now().year,
                                  currentMonth - 1, DateTime.now().day);
                            } else {
                              _selectedMonth = "12";
                              _focusedDay =
                                  DateTime(DateTime.now().year - 1, 1, 1);
                            }
                          });
                        },
                        child: CircularArrowsContainer(
                            icon: SvgPicture.asset(
                          Images.chevron_left,
                          color: Color(0xff545F71),
                        ))),
                    SizedBox(width: 3),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            int currentMonth = int.parse(_selectedMonth);
                            if (currentMonth < 12) {
                              _selectedMonth = '${currentMonth + 1}';
                              _focusedDay = DateTime(DateTime.now().year,
                                  currentMonth + 1, DateTime.now().day);
                            } else {
                              _selectedMonth = "1";
                              _focusedDay =
                                  DateTime(DateTime.now().year + 1, 1, 1);
                            }
                          });
                        },
                        child: CircularArrowsContainer(
                            icon: SvgPicture.asset(Images.chevron_right,
                                color: Color(0xff545F71)))),
                    SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        width: 193,
                        height: 45,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        decoration: ShapeDecoration(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1, color: Color(0xFFE0E0E0)),
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
                            icon: SvgPicture.asset(
                              Images.dropdown, // Ensure this path is correct
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
                            dropdownColor: Colors.black,
                            value: monthsName[int.parse(_selectedMonth) - 1],
                            onChanged: (value) {
                              setState(() {
                                _selectedMonth =
                                    '${monthsName.indexOf(value!) + 1}';
                                _focusedDay = DateTime(DateTime.now().year,
                                    monthsName.indexOf(value) + 1, 1);
                              });
                            },
                            items: monthsName.map((month) {
                              return DropdownMenuItem(
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      Images.calendar,
                                      color: Color(0xffACB4C0),
                                      // size: 16,
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
                    InkWell(
                      onTap:(){
                        controller.openBottomSheet(context);
                      },
                      child:Container(
                        height: 44,
                        width: 44,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
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
                          child: SvgPicture.asset(
                            Images.plus,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
          SizedBox(height: 16),
          TableCalendar(
            calendarFormat: _isCalendarExpanded
                ? CalendarFormat.month
                : CalendarFormat.week,
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
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Center(
                      child: TextWidget(
                        title: _focusedDay.day.toString(),
                        textAlign: TextAlign.center,
                        textColor: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                } else {
                  return null;
                }
              },
              todayBuilder: (context, day, focusedDay) {
                if (focusedDay != _focusedDay) {
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
                } else {
                  return null;
                }
              },
            ),
            headerVisible: false,
            calendarStyle: CalendarStyle(
              defaultTextStyle: TextStyle(),
              todayTextStyle: TextStyle(),
              defaultDecoration: widget.isSecondDessign
                  ? BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16))
                  : BoxDecoration(),
              weekendDecoration: widget.isSecondDessign
                  ? BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16))
                  : BoxDecoration(),
              todayDecoration: widget.isSecondDessign
                  ? BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(16))
                  : BoxDecoration(),
              weekendTextStyle: TextStyle(
                color: Color(0xFF545F71),
                fontSize: 14,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
                height: 0.12,
              ),
            ),
            daysOfWeekHeight: 50,
            rowHeight: 50,
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
          SizedBox(
            height: 16,
          ),
          widget.isSecondDessign
              ? SizedBox()
              : GestureDetector(
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
