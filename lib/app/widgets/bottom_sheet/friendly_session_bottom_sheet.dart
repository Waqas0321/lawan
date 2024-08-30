import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import 'package:lawan/app/widgets/Areena/areenaButton.dart';
import 'package:lawan/app/widgets/Friendly_Session/column_button.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/List_Container.dart';
import 'package:lawan/app/widgets/container/invite_share_container.dart';
import 'package:lawan/app/widgets/container/text_container.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../container/circular_container.dart';

class FriendlySessionBottomSheet extends StatelessWidget {
  const FriendlySessionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.customHeight(94),
      decoration: const BoxDecoration(
        color: Color(0xB2F2F3F2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        title: "⚽   Friendly",
                        fontSize: 20,
                      ),
                      CircularContainer(
                        svgPath: Images.close,
                        onTap: () {
                          Get.back();
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h2,
                  ),
                  ListContainer(
                    isBottomSheet: true,
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  ColumnButton(
                    showBlack: true,
                    upperText: "Sesssion starting in",
                    lowerText: "2 days 2 hours 6 mins 3 sec ",
                    onTap: () {},
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Leading Avatar
                        CircleAvatar(
                          backgroundImage: AssetImage(Images.avatar),
                          radius: 30,
                        ),
                        SizedBox(width: 12), // Space between avatar and text

                        // Title and Subtitle Column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                title: "Ali Qazwini",
                                fontWeight: FontWeight.bold, // Optional styling
                              ),
                              SizedBox(
                                  height:
                                      4), // Space between title and subtitle
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: TextWidget(
                                  title: "Arena Owner",
                                  fontSize: 11,
                                  textColor: Color(0xFF545F71),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: Responsive.h1,
                        ),
                        Row(
                          children: [
                            CircularContainer(
                              padding: 10,
                              svgPath: Images.chat,
                              onTap: () {},
                              borderColor: Colors.grey,
                            ),
                            SizedBox(
                                width: Responsive.h1), // Space between icons
                            CircularContainer(
                              padding: 10,
                              svgPath: Images.menu,
                              borderColor: Colors.grey,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextContainer(text: "25 - 35 years"),
                      SizedBox(
                        width: Responsive.h2,
                      ),
                      TextContainer(text: "Male & Female"),
                      SizedBox(
                        width: Responsive.h2,
                      ),
                      TextContainer(text: "English & Malay"),
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: 4, // Four items to be displayed in the grid
                    itemBuilder: (BuildContext context, int index) {
                      switch (index) {
                        case 0:
                          return InviteShareGridContainer(
                            iconPath: Images.calendar,
                            title: "Date",
                            subtitle: "Tue, 25 Sep 2024",
                            showAdditionalText: false,
                          );
                        case 1:
                          return InviteShareGridContainer(
                            iconPath: Images.time,
                            title: "Time",
                            subtitle: "10:00 AM - 12:00 PM",
                            additionalText: "1 hr",
                            showAdditionalText: true,
                          );
                        case 2:
                          return InviteShareGridContainer(
                            iconPath: Images.location_marker,
                            title: "Location",
                            subtitle: "Central Park, NYC",
                            additionalText: "5 miles away",
                            showAdditionalText: false, // Hide additional text
                          );
                        case 3:
                          return InviteShareGridContainer(
                            iconPath: Images.currency_dollar,
                            title: "Price",
                            subtitle: "RM20/pax",
                            showAdditionalText: false,
                          );
                        default:
                          return SizedBox(); // Default case to avoid any unexpected error
                      }
                    },
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircularContainer(
                      svgPath: Images.pencil,
                      onTap: () {},
                      borderColor: Colors.grey,
                    ),
                    CircularContainer(
                      svgPath: Images.upload,
                      onTap: () {},
                      borderColor: Colors.grey,
                    ),
                    CircularContainer(
                      svgPath: Images.calendar,
                      onTap: () {},
                      borderColor: Colors.grey,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(14),
                      child: Row(
                        children: [
                          SvgPicture.asset(Images.users_group_outline),
                          SizedBox(
                            width: Responsive.h2,
                          ),
                          TextWidget(
                            title: "Line-Up",
                            textColor: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
