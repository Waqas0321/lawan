import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/bindings/app_bindings.dart';
import 'package:lawan/app/controller/Session_Screen/SessionScreen_Controller.dart';
import '../../widgets/Session_Screen/BottomNave_Container.dart';
import '../../widgets/Session_Screen/DateDayContainer.dart';
import '../../widgets/Session_Screen/Expandable_calander.dart';
import '../../widgets/Session_Screen/session_Container.dart';
import '../HomeScreen/Widgets/homeScreenHeader.dart';

class Sessionscreen extends StatefulWidget {
  const Sessionscreen({super.key});

  @override
  State<Sessionscreen> createState() => _SessionscreenState();
}

class _SessionscreenState extends State<Sessionscreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SessionScreenController>();
    return Container(
        height: MediaQuery.of(context).size.height,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.only(left: 1, right: 1),
              child: Column(
                children: [
                  ScreenHeader(
                    isTextVisible: false,
                  ),
                  ExpandableCustomCalender(),
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
                                eyeOnTap: () {
                                  // controller.openBottomSheet(context);
                                },
                              ),
                              SizedBox(height: 8),
                              SessionContainer(
                                eyeOnTap: () {
                                   controller.openBottomSheet(context);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ),
          // )
        ));
  }
}
