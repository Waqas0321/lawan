import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/Friendly_Session/setting_controller.dart';
import 'package:lawan/app/screens/Session_Screen/paymentScreen.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/Areena/TimeSlotRow.dart';
import 'package:lawan/app/widgets/Friendly_Session/circularImageBox.dart';
import 'package:lawan/app/widgets/Session_Screen/Bottom_Buttons.dart';
import 'package:lawan/app/widgets/text_widget.dart';
import '../../utils/colors.dart';
import '../../utils/text.dart';
import '../Areena/TimeSlotAreena.dart';
import '../Areena/areenaButton.dart';
import '../Areena/custom_header_count.dart';

class FriendlySessionSetting extends StatefulWidget {
  const FriendlySessionSetting({super.key,

    this.fromInviteFriends = false});

  final bool fromInviteFriends;

  @override
  State<FriendlySessionSetting> createState() => _FriendlySessionSettingState();
}

class _FriendlySessionSettingState extends State<FriendlySessionSetting> {
  SettingController controller = Get.put(SettingController());
  bool _isSelectedAgeRange = false;
  bool _isSelectedConfigueSlots = false;
  final List<String> _timeSlots = [
    '25 Years',
    '30 Years',
    '35 Years',
    '40 Years'
  ];
  final List<String> _timeSlotsTwo = ['22', '23', '24', '25'];
  final List<String> _timeSlotsThree = [
    'Max',
    'Min',
  ];

// Currently selected time slot
  String _selectedTimeSlot = '25 Years';
  String _selectedTimeSlotTwo = '22';
  String _selectedTimeSlotThree = 'Max';

  void _onTimeSlotChanged(String newValue) {
    setState(() {
      _selectedTimeSlot = newValue;
    });
  }

  void _onTimeSlotChangedTwo(String newValue) {
    setState(() {
      _selectedTimeSlotTwo = newValue;
    });
  }

  void _onTimeSlotChangedThree(String newValue) {
    setState(() {
      _selectedTimeSlotThree = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return acrylicAny(
      blurlevel: 10,
      child: Container(
          height:_isSelectedAgeRange && _isSelectedConfigueSlots?Get.height * 0.875: Get.height * 0.85,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customHeaderCount(
                      thisCount: "3",
                      text1: 'Slot',
                      text2: 'Arena',
                      text3: 'Setting',
                      text4: 'Pay',
                      hasFourth: true,
                    ),
                    SizedBox(height: 28),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            title: 'Session Setting',
                            textColor: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          TextWidget(
                            title: 'Configure session preferences',
                            textColor: AppColors.dark_grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(height: 16),
                          TextWidget(
                            title: 'Invite Friend(s)',
                            textColor: AppColors.dark_grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          widget.fromInviteFriends? Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              BottomButtons(
                                onTap: () {
                                },
                                image: Images.user_plus,
                                iconSize: 22,
                                iconColor: AppColors.dark_grey,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              SizedBox(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.72,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 15,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Container(
                                            child: Stack(children: [
                                          CircularImageBox(
                                            imagePath: Images.avatar2,
                                            width: 49,
                                            height: 49,
                                          ),
                                          Positioned(
                                            right: 0,
                                              child: Container(
                                            height: 16,
                                            width: 16,
                                            decoration: BoxDecoration(
                                                color: AppColors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30))),
                                            child: Center(
                                                child: SvgPicture.asset(
                                              Images.x,
                                              height: 9.6,
                                              width: 9.6,
                                            )),
                                          ))
                                        ])));
                                  },
                                ),
                              ),
                            ],
                          ): BottomButtons(
                            onTap: () {
                              controller.openBottomSheetInvits(context);
                            },
                            image: Images.user_plus,
                            iconSize: 22,
                            iconColor: AppColors.dark_grey,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextWidget(
                                title: "Gender",
                                textColor: AppColors.dark_grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              Spacer(),
                              BottomButtons(
                                onTap: () {},
                                chooseIconColor: true,
                                iconColor: Colors.white,
                                isExpanded: true,
                                text: 'Male',
                                image: Images.male,
                                height: 44,
                                width: 88,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              BottomButtons(
                                onTap: () {},
                                chooseIconColor: true,
                                iconColor: Colors.white,
                                isExpanded: true,
                                text: 'Female',
                                image: Images.female_icon,
                                height: 44,
                                width: 102,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextWidget(
                                title: "Language",
                                textColor: AppColors.textSecondColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                              Spacer(),
                              BottomButtons(
                                onTap: () {},
                                chooseIconColor: true,
                                isExpanded: true,
                                text: 'English',
                                image: Images.english_flag,
                                height: 44,
                                width: 102,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              BottomButtons(
                                onTap: () {},
                                chooseIconColor: true,
                                isExpanded: true,
                                text: 'Malay',
                                image: Images.malaysia_flag,
                                height: 44,
                                width: 102,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomSwitchTimeslotRow(
                            forFriendly: true,
                            leftText: "Age Range",
                            opentext: Apptext.Enable,
                            closetext: Apptext.Disable,
                            rightText: Apptext.Disable,
                            isSelected: _isSelectedAgeRange,
                            onChanged: (bool value) {
                              setState(() {
                                _isSelectedAgeRange = value;
                              });
                            },
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          _isSelectedAgeRange
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TimeSlot(
                                      isClock: false,
                                      timeSlots: _timeSlots,
                                      selectedTimeSlot: _selectedTimeSlot,
                                      onChanged: _onTimeSlotChanged,
                                      isImage: true,
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      'to',
                                      style: TextStyle(
                                        color: Color(0xFF545F71),
                                        fontSize: 14,
                                        fontFamily: 'Lufga',
                                        fontWeight: FontWeight.w400,
                                        height: 0.11,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    TimeSlot(
                                      isClock: false,
                                      timeSlots: _timeSlots,
                                      selectedTimeSlot: _selectedTimeSlot,
                                      onChanged: _onTimeSlotChanged,
                                      isImage: true,
                                    ),
                                  ],
                                )
                              : SizedBox(
                                  height: 0,
                                ),
                          SizedBox(
                            height: 16,
                          ),
                          CustomSwitchTimeslotRow(
                            forFriendly: true,
                            leftText: "Configure Slots",
                            closetext: Apptext.Disable,
                            opentext: Apptext.Enable,
                            rightText: Apptext.Disable,
                            isSelected: _isSelectedConfigueSlots,
                            onChanged: (bool value) {
                              setState(() {
                                _isSelectedConfigueSlots = value;
                              });
                            },
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          _isSelectedConfigueSlots
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    TimeSlot(
                                      timeSlots: _timeSlotsTwo,
                                      isClock: true,
                                      imagepath: Images.exclamation_outline,
                                      imagecolor: Color(0xff23A991),
                                      selectedTimeSlot: _selectedTimeSlotTwo,
                                      onChanged: _onTimeSlotChangedTwo,
                                      isImage: true,
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      'to',
                                      style: TextStyle(
                                        color: Color(0xFF545F71),
                                        fontSize: 14,
                                        fontFamily: 'Lufga',
                                        fontWeight: FontWeight.w400,
                                        height: 0.11,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    TimeSlot(
                                      textcolor: AppColors.grey3,
                                      isClock: false,
                                      imagepath: Images.exclamation_outline,
                                      imagecolor: Color(0xff23A991),
                                      timeSlots: _timeSlotsThree,
                                      selectedTimeSlot: _selectedTimeSlotThree,
                                      onChanged: _onTimeSlotChangedThree,
                                      isImage: false,
                                    ),
                                  ],
                                )
                              : SizedBox(
                                  height: 0,
                                ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 163.50,
                                height: 64,
                                padding: const EdgeInsets.all(12),
                                decoration: ShapeDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(0.00, -1.00),
                                    end: Alignment(0, 1),
                                    colors: [
                                      Color(0xFF0C1B22),
                                      Color(0xFF44D8BE)
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 20,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(),
                                      child: SvgPicture.asset(Images.tag),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: double.infinity,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.0),
                                                child: Text(
                                                  'Price to pay',
                                                  style: TextStyle(
                                                    color: Color(0xFFACB3C0),
                                                    fontSize: 12,
                                                    fontFamily: 'Lufga',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.08,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 4),
                                            Container(
                                              margin: EdgeInsets.only(left: 10),
                                              width: double.infinity,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'RM20',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 24,
                                                      fontFamily: 'Lufga',
                                                      fontWeight: FontWeight.w600,
                                                      letterSpacing: -0.72,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 4),
                                                  Text(
                                                    '/ pax',
                                                    style: TextStyle(
                                                      color: Color(0xFFDEE1E2),
                                                      fontSize: 12,
                                                      fontFamily: 'Lufga',
                                                      fontWeight: FontWeight.w400,
                                                      letterSpacing: -0.36,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                width: 163.50,
                                height: 64,
                                decoration: ShapeDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment(0.00, -1.00),
                                    end: Alignment(0, 1),
                                    colors: [
                                      Color(0xFF0C1B22),
                                      Color(0xFF44D8BE)
                                    ],
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                ),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Extra Player(s)',
                                        style: TextStyle(
                                          color: Color(0xFFACB3C0),
                                          fontSize: 12,
                                          fontFamily: 'Lufga',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        '0',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontFamily: 'Lufga',
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -0.72,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomAreenaButton(
                      text: Apptext.cancel,
                      color: null,
                      borderColor: Color(0xFFE9EAF0),
                      textColor: AppColors.black,
                      onTap: () {
                        Get.back();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomAreenaButton(
                      text: "Proceed to Pay",
                      color: AppColors.black,
                      borderColor: AppColors.black,
                      textColor: AppColors.white,
                      onTap: () {
                        Get.to(Paymentscreen());
                      },
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
