import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/screens/AddMenualBooking_Screen/Controller/MenualBooking_Controller.dart';
import '../../widgets/Session_Screen/DateDayContainer.dart';
import '../../widgets/Session_Screen/Session_Header.dart';
import '../../widgets/Session_Screen/calander.dart';
import '../../widgets/Session_Screen/session_Container.dart';
import '../HomeScreen/Widgets/homeScreenHeader.dart';
class Menualbooking extends StatelessWidget {
   Menualbooking({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MenualBookinController>();
    return Container(
      height:MediaQuery.of(context).size.height,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              ScreenHeader(),
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
              Container(
                child: Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: Get.width,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
