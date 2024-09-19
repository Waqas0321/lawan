import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/widgets/Friendly_Session/inviteFriendsSheet_header.dart';
import '../../controller/Friendly_Session/inviteFriends3SheetController.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../MenualBooking_Screen/Custom_Circular_Button.dart';
import '../text_widget.dart';
import 'FrindlyContainer.dart';
import 'circularImageBox.dart';
import 'inviteFriends2Sheet.dart';
import 'inviteFriends_ListContainer.dart';

class InviteFriendsThreeSheet extends StatefulWidget {
  InviteFriendsThreeSheet({super.key});

  @override
  State<InviteFriendsThreeSheet> createState() =>
      _InviteFriendsThreeSheetState();
}

class _InviteFriendsThreeSheetState extends State<InviteFriendsThreeSheet> {
  InviteFriendsThreeSheetController _controller =
      Get.put(InviteFriendsThreeSheetController());

  bool showAll = false;

  List<ImageProvider> memberImages = [
    AssetImage(Images.avatar),
    AssetImage(Images.avatar2),

    // Add more images here...
  ];

  @override
  Widget build(BuildContext context) {
    return acrylicAny(
      blurlevel: 10,
      child: Container(
        height: Get.height * 0.85,
        width: MediaQuery.of(context).size.width - 16,
        margin: EdgeInsets.only(bottom: 25),
        padding: EdgeInsets.all(16),
        decoration: ShapeDecoration(
            color: AppColors.alertcolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            shadows: [
              BoxShadow(
                color: AppColors.shadowColor,
                blurRadius: 0,
                offset: Offset(0, -0.50),
              )
            ]),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InviteFriendsSheetHeader(),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: Get.height * 0.301,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InviteFriendsListContainer();
                  },
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    title: "Recent people",
                    textColor: AppColors.dark_grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return FrindlySessionContainer(
                          onTap: () {},
                          isSelected: true,
                          imagePath: Images.check,
                          imageColor: AppColors.white,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      CustomCircularButton(
                        onPressFun: () {
                          Get.back();
                        },
                        isSelected: false,
                        isImage: true,
                        imagePath: Images.chevron_left,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: CustomCircularButton(
                          onPressFun: () {
                            _controller.openBottomSheet(context);
                          },
                          isSelected: true,
                          height: 49,
                          width: 125,
                          text: "Add",
                          rightIcon: true,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        child: Wrap(
                          spacing: -10,
                          children: [
                            CircularImageBox(
                              imagePath: Images.avatar,
                            ),
                            CircularImageBox(
                              imagePath: Images.avatar2,
                            ),
                            CircularImageBox(
                              imagePath: Images.avatar3,
                            ),
                            if (!showAll)
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showAll = true;
                                  });
                                },
                                child: Container(
                                    height: 44,
                                    width: 44,
                                    decoration: ShapeDecoration(
                                      color: AppColors.black,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 1, color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(999),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "+${memberImages.length}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 8,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ) // Muestra el número de miembros ocultos
                                    ),
                              ),
                            if (showAll)
                              ...memberImages.map((image) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        showAll = false;
                                      });
                                    },
                                    child: SizedBox(
                                      height: 44,
                                      width: 44,
                                      child:
                                          CircleAvatar(backgroundImage: image),
                                    ),
                                  )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


