import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/manual/MenualBooking_Controller.dart';
import '../../controller/bottom_bar/bottom_navigation_controller.dart';
import '../../widgets/Session_Screen/DateDayContainer.dart';
import '../../widgets/Session_Screen/Expandable_calander.dart';
import '../../widgets/Session_Screen/session_Container.dart';
import '../HomeScreen/Widgets/homeScreenHeader.dart';

class MenualBookingScreen extends StatelessWidget {
  final bottomcontroller = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MenualBookinController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ScreenHeader(
            isTextVisible: false,
          ),
          ExpandableCustomCalender(),
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
                      SizedBox(height: 32),
                      DateDayTextContainer(),
                      SessionContainer(
                          eyeOnTap: () => controller.openBottomSheet(context)),
                      SizedBox(height: 8),
                      SessionContainer(
                          eyeOnTap: () => controller.openBottomSheet(context)),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
