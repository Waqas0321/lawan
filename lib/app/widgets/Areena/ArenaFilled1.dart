import 'dart:ui';

import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/screens/HomeScreen/home_screen.dart';
import 'package:lawan/app/screens/Session_Screen/SessionScreen.dart';
import 'package:lawan/app/screens/sale/sale_main.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/text.dart';
import 'package:lawan/app/widgets/Areena/custom_tabbar.dart';
import 'package:lawan/app/widgets/Areena/details_section.dart';
import 'package:lawan/app/widgets/Areena/hour_section.dart';
import 'package:lawan/app/widgets/Areena/rate_section.dart';

import '../../../main.dart';
import '../../controller/bottom_bar/bottom_navigation_controller.dart';
import '../../screens/HomeScreen/Widgets/circularContainer.dart';
import '../../screens/HomeScreen/Widgets/homeScreenHeader.dart';
import '../../utils/images.dart';
import 'AddArena1.dart';
import 'AlertBox.dart';
import 'EditAlertBox.dart';
import 'TimeSlotHomeDropDown.dart';
import 'areenaButton.dart';
import 'custom_bottom_nav.dart';

class AreenaFilled1 extends StatefulWidget {
  const AreenaFilled1({super.key});

  @override
  State<AreenaFilled1> createState() => _AreenaFilled1State();
}

class _AreenaFilled1State extends State<AreenaFilled1> {
  final List<String> weeksRate = [
    'Soccer',
    'Futsal',
  ];

  // Currently selected time slot
  String _selectedTimeSlot = 'Soccer';

  void _onTimeSlotChanged(String newValue) {
    setState(() {
      _selectedTimeSlot = newValue;
    });
  }

  @override
  void initState() {
    // Use addPostFrameCallback to show the alert after the widget is fully initialized
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showCustomAlertDialog(
          context,
          "Arena Added Successfully!",
          "You can now start earning from this arena",
          true,
          "Add Another Court",
          "Done");
    });
    // TODO: implement initState
    super.initState();
  }

  // void _openBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isDismissible: true,
  //     enableDrag: true,
  //     isScrollControlled: true,
  //     // Allows the bottom sheet to use full screen height
  //     backgroundColor: Colors.transparent,
  //     builder: (BuildContext context) {
  //       return AddAreena1();
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final controller = Get.find<BottomNavigationController>();

    return Scaffold(
      backgroundColor: const Color(0xFFF2F3F2),
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0.0, 0.8), // Start near the bottom
              end: const Alignment(0.0, 1), // End at the bottom edge
              colors: [
                Colors.black.withOpacity(0.0), // Fully transparent color
                Colors.black.withOpacity(0.4), // Slightly visible gradient
              ],
            ),
          ),
          child: Stack(alignment: AlignmentDirectional.topCenter, children: [
            Obx(() {
              if (controller.selectedItem.value == "Arena") {
                return SafeArea(
                  bottom: false,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // InkWell(
                              //   onTap: () {
                              //     // _openBottomSheet(context);
                              //     showCustomAlertDialog(
                              //         context, "Arena Added Successfully!", "You can now start earning from this arena", true, "Add Another Court", "Done");
                              //   },
                              //   child: Text("Test the Alert"),
                              // ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     TimeSlotHome(
                              //       timeSlots: weeksRate,
                              //       selectedTimeSlot: _selectedTimeSlot,
                              //       onChanged: _onTimeSlotChanged,
                              //       isImage: false,
                              //       isWidth: MediaQuery.of(context).size.width *
                              //           0.30,
                              //       image: "⚽",
                              //     ),
                              //     Container(
                              //       height: 44,
                              //       width: MediaQuery.of(context).size.width *
                              //           0.16,
                              //       decoration: BoxDecoration(
                              //           color: Colors.white,
                              //           borderRadius:
                              //               BorderRadius.circular(300)),
                              //       child: Padding(
                              //         padding: EdgeInsets.only(left: 2),
                              //         child: Row(
                              //           mainAxisAlignment:
                              //               MainAxisAlignment.spaceBetween,
                              //           children: [
                              //             Image(
                              //               image: AssetImage(Images.avtar),
                              //               height: 38,
                              //               width: 34,
                              //               fit: BoxFit.contain,
                              //             ),
                              //             SvgPicture.asset(
                              //               Images.chevron_down,
                              //               height: 16,
                              //               width: 16,
                              //             ),
                              //             SizedBox(
                              //               width: 1,
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              ScreenHeader(
                                isTextVisible: false,
                              ),
                              SizedBox(
                                height: screenheight * 0.005,
                              ),
                              // SvgPicture.asset(Images.sales),
                              // Text("data"),
                              InkWell(
                                onTap: () {
                                  showCustomAlertDialog(
                                      context,
                                      "Arena Added Successfully!",
                                      "You can now start earning from this arena",
                                      true,
                                      "Add Another Court",
                                      "Done");
                                },
                                child: Text("bottomCheck"),
                              ),
                              const SizedBox(
                                width: 361,
                                child: Text(
                                  'Arena',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Lufga',
                                    fontWeight: FontWeight.w500,
                                    height: 1.3,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenheight * 00.009,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: GestureDetector(
                                          onTap: () {
                                            showCustomEditAlertDialog(
                                              "Edit Arena Name",
                                              'MBPJ Sports Complex',
                                              isConfirmed: false,
                                              () {
                                                Get.back();
                                                showCustomEditAlertDialog(
                                                    "Edit Arena Name",
                                                    'MBPJ Sports Complex',
                                                    isConfirmed: true,
                                                    () {},
                                                    titleText: Apptext
                                                        .Proceed_with_applying_the_changes,
                                                    updateButtonText:
                                                        Apptext.Delete,
                                                    updateButtonBorderColor:
                                                        AppColors.red,
                                                    updateButtonColor: null,
                                                    updateButtonTextColor:
                                                        AppColors.red);
                                              },
                                            );
                                          },
                                          child: SvgPicture.asset(
                                            Images.pencil,
                                            height: 20,
                                            width: 20,
                                            fit: BoxFit.scaleDown,
                                          ))),
                                  // SizedBox(width: 12),
                                  const Expanded(
                                      flex: 7,
                                      child: CustomContainer(
                                        width: 178,
                                        height: 44,
                                        text: 'MBPJ Sports Complex',
                                        color: AppColors.black,
                                        textColor: AppColors.white,
                                      )),
                                  const SizedBox(width: 12),
                                  const Expanded(
                                      flex: 4,
                                      child: CustomContainer(
                                        width: 178,
                                        height: 44,
                                        text: 'KLFA Court',
                                        color: AppColors.white,
                                        textColor: AppColors.dark_grey,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: screenheight * 0.02,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex: 5,
                                      child: CustomContainer(
                                        width: 100,
                                        height: 44,
                                        text: 'Sports Arena Mahkota Cheras',
                                        color: AppColors.white,
                                        textColor: AppColors.dark_grey,
                                      )),
                                  SizedBox(width: 12),
                                  CustomContainer(
                                    width: 44,
                                    height: 44,
                                    text: "1",
                                    icon: true,
                                    image: Images.plus,
                                    imageColor: AppColors.white,
                                    color: AppColors.black,
                                    textColor: AppColors.black,
                                    circular: true,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        width: 6,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: screenheight * 0.02,
                              ),
                              const Text(
                                'Court',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Lufga',
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                ),
                              ),
                              SizedBox(
                                height: screenheight * 0.01,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      flex: 3,
                                      child: GestureDetector(
                                          onTap: () {
                                            showCustomEditAlertDialog(
                                                "Edit Court Name", '1', () {});
                                          },
                                          child: SvgPicture.asset(
                                            Images.pencil,
                                            height: 20,
                                            width: 20,
                                          ))),
                                  const CustomContainer(
                                    width: 44,
                                    height: 44,
                                    text: "1",
                                    color: AppColors.black,
                                    textColor: AppColors.white,
                                    circular: true,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const CustomContainer(
                                    width: 44,
                                    height: 44,
                                    text: "2",
                                    color: AppColors.white,
                                    textColor: AppColors.dark_grey,
                                    circular: true,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const CustomContainer(
                                    width: 44,
                                    height: 44,
                                    text: "3",
                                    color: AppColors.white,
                                    textColor: AppColors.dark_grey,
                                    circular: true,
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const CustomContainer(
                                    width: 44,
                                    height: 44,
                                    text: "1",
                                    icon: true,
                                    image: Images.plus,
                                    imageColor: AppColors.white,
                                    color: AppColors.black,
                                    textColor: AppColors.black,
                                    circular: true,
                                  ),
                                  const Expanded(
                                      flex: 5,
                                      child: SizedBox(
                                        width: 8,
                                      )),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 1.7,
                                // color: const Color(0xFFF2F3F2),
                                child: DefaultTabController(
                                    length: 3,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const CustomTabBar(
                                            tabs: ["Details", 'Hour', 'Rate']),
                                        Expanded(
                                          child: TabBarView(
                                            children: [
                                              DetailsSction(),
                                              const HourSection(),
                                              const RateSection()
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              } else if (controller.selectedItem.value == "Sales") {
                return SaleMain();
              } else {
                return Sessionscreen(); // Return an empty widget if none of the conditions match
              }
            }),
            Obx(
              () => CustomBottomNavigation(
                iconSize: 20,
                spacing: 6,
                widthFactor: 0.52,
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                  height: 1,
                  letterSpacing: -0.24,
                ),
                selectedItem: controller.selectedItem.value,
                imagePath: controller.imagePaths,
                title: controller.titles,
                onItemSelected: (newValue) {
                  controller.changeSelection(newValue);
                },
              ),
            )
          ])),
    );
  }

  void showCustomAlertDialog(
    BuildContext context,
    final String text1,
    final String text2,
    final bool image,
    final String buttonText1,
    final String buttonText2,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:
              Colors.transparent, // Make the background transparent
          contentPadding: EdgeInsets.zero, // Remove default padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32), // Custom border radius
          ),
          content: acrylicAny(
              child: Container(
                width: MediaQuery.of(context).size.width *
                    0.85, // Adjust width here
                decoration: BoxDecoration(
                  color: const Color(0xB2F2F3F2), // Custom background color
                  borderRadius:
                      BorderRadius.circular(32), // Match the border radius
                  boxShadow: [
                    const BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 0,
                      offset: Offset(0, -0.50),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Text(
                      text1,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w500,
                        height: 0.09,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    image
                        ? SvgPicture.asset(
                            Images.frame1,
                            // color: AppColors.bluee, // Replace with your color if needed
                          )
                        : const SizedBox(height: 4),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                    Text(
                      text2,
                      style: const TextStyle(
                        color: Color(0xFF545F71),
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        fontWeight: FontWeight.w400,
                        height: 0.12,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    CustomAreenaButton(
                      width: double.infinity,
                      height: 49,
                      text: buttonText1,
                      color: null,
                      borderColor: AppColors.borderColor,
                      textColor: AppColors.black,
                      onTap: () {
                        Get.to(HomeScreen());
                      },
                    ),
                    const SizedBox(height: 8),
                    CustomAreenaButton(
                      width: double.infinity,
                      height: 49,
                      text: buttonText2,
                      color: Colors.black,
                      borderColor: AppColors.black,
                      textColor: Colors.white,
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
              ),
              blurlevel: 10),
        );
      },
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.width,
      required this.height,
      this.text = '',
      this.color,
      required this.textColor,
      this.circular = false,
      this.icon = false,
      this.image = Images.areena,
      this.imageColor = Colors.black});
  final double width;
  final double height;
  final String text;
  final Color? color;
  final Color textColor;
  final bool circular;
  final bool icon;
  final String image;
  final Color imageColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: AppColors.white),
          borderRadius:
              circular ? BorderRadius.circular(100) : BorderRadius.circular(32),
        ),
      ),
      child: Center(
        child: icon
            ? SvgPicture.asset(
                image,
                height: 20,
                width: 20,
                color: imageColor,
              )
            : Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                ),
              ),
      ),
    );
  }
}
