import 'dart:ui';

import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/text.dart';
import 'package:lawan/app/widgets/Areena/Areena1.5.dart';
import 'package:lawan/app/widgets/Areena/ar-in-out-button.dart';
import 'package:lawan/app/widgets/Areena/areenaButton.dart';
import '../../utils/ScreenDimensions.dart';
import '../../utils/images.dart';
import '../../utils/validator.dart';
import 'AddAreena2.dart';
import 'custom-Arena-textform.dart';
import 'custom_header_count.dart';

class AddAreena1 extends StatefulWidget {
  @override
  State<AddAreena1> createState() => _AddAreena1State();
}

class _AddAreena1State extends State<AddAreena1> {
  // Track the selected button
  late bool _selectedButtonIndoor = true;
  late bool _selectedButtonOutdoor = false;
  late bool _selectedCourtButtonTruff = true;
  late bool _selectedCourtButtonGrass = false;
  late bool _selectedCourtButtonCement = false;
  void _onButtonPressINOutdoor(String text) {
    setState(() {
      switch (text) {
        case "Indoor":
          _selectedButtonIndoor = true;
          _selectedButtonOutdoor = false;
          break;
        case "Outdoor":
          _selectedButtonOutdoor = true;
          _selectedButtonIndoor = false;
          break;
        default:
          break;
      }
    });
  }

  void _onButtonPressCourt(String text) {
    setState(() {
      switch (text) {
        case "Truf":
          _selectedCourtButtonTruff = true;
          _selectedCourtButtonGrass = false;
          _selectedCourtButtonCement = false;
          break;
        case "Grass":
          _selectedCourtButtonTruff = false;
          _selectedCourtButtonGrass = true;
          _selectedCourtButtonCement = false;
          break;
        case "Cement":
          _selectedCourtButtonTruff = false;
          _selectedCourtButtonGrass = false;
          _selectedCourtButtonCement = true;
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: Validator.globalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 25),
                child: acrylicAny(
                  blurlevel: 6,
                  child: Container(
                    // width: MediaQuery.of(context).size.width - 16,
                    height: MediaQuery.of(context).size.height * 0.89,
                    decoration: ShapeDecoration(
                      color: Color(0xB2F2F3F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 0,
                          offset: Offset(0, -0.50),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customHeaderCount(
                              thisCount: "1",
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.028,
                            ),
                            SizedBox(
                              width: 345,
                              child: Text(
                                'Add Arena Details',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Lufga',
                                  fontWeight: FontWeight.w600,
                                  height: 1.3,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 345,
                              child: Text(
                                'Add photos, name and location',
                                style: TextStyle(
                                  color: Color(0xFF545F71),
                                  fontSize: 12,
                                  fontFamily: 'Lufga',
                                  fontWeight: FontWeight.w400,
                                  height: 2,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Container(
                              width: Get.width * 0.45,
                              height: MediaQuery.of(context).size.height * 0.15,
                              padding: const EdgeInsets.all(24),
                              decoration: ShapeDecoration(
                                color: AppColors.white,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: AppColors.white),
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(),
                                    child: SvgPicture.asset(
                                      Images.gallery,
                                      color: AppColors.mid_grey,
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.015),
                                  SizedBox(
                                    width: 149,
                                    child: Text(
                                      'Add Picture',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFACB3C0),
                                        fontSize: 14,
                                        fontFamily: 'Lufga',
                                        fontWeight: FontWeight.w400,
                                        height: 0.11,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            CustomTextFormField(onTap: () {
                              _openBottomSheetMap(context);
                            },
                                hintText: Apptext.location,
                                validator: (value) {
                                  return Validator.customValidator(
                                    value: value,
                                    fieldName: Apptext.location,
                                    minLength:
                                        4, // Ensure the username is at least 4 characters long
                                    hasNoSpaces:
                                        true, // Ensure the username does not contain spaces
                                    isRequired:
                                        true, // Ensure the field is not empty
                                  );
                                },
                                icon: Images.location),
                            const SizedBox(
                              height: 12,
                            ),
                            CustomTextFormField(onTap: () {

                            },
                              validator: (value) {
                                return Validator.customValidator(
                                  value: value,
                                  fieldName: Apptext.enter_arena_name,
                                  minLength:
                                      4, // Ensure the username is at least 4 characters long
                                  hasNoSpaces:
                                      true, // Ensure the username does not contain spaces
                                  isRequired:
                                      true, // Ensure the field is not empty
                                );
                              },
                              hintText: Apptext.enter_arena_name,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            CustomTextFormField(
                              onTap: () {

                              },
                              validator: (value) {
                                return Validator.customValidator(
                                  value: value,
                                  fieldName: Apptext.enter_court_name,
                                  minLength:
                                      4, // Ensure the username is at least 4 characters long
                                  hasNoSpaces:
                                      true, // Ensure the username does not contain spaces
                                  isRequired:
                                      true, // Ensure the field is not empty
                                );
                              },
                              hintText: Apptext.enter_court_name,
                              text: Apptext.optional,
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02),
                            Text(
                              Apptext.arena_type,
                              style: TextStyle(
                                color: Color(0xFF545F71),
                                fontSize: 14,
                                fontFamily: 'Lufga',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.005),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ArenaINOutButton(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  text: 'Indoor',
                                  isSelected: _selectedButtonIndoor,
                                  onPressed: () {
                                    _onButtonPressINOutdoor("Indoor");
                                  },
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03),
                                ArenaINOutButton(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  text: 'Outdoor',
                                  isSelected: _selectedButtonOutdoor,
                                  onPressed: () {
                                    _onButtonPressINOutdoor("Outdoor");
                                  },
                                ),
                                const Expanded(child: SizedBox(width: 70)),
                              ],
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02),
                            Text(
                              Apptext.flooring,
                              style: TextStyle(
                                color: Color(0xFF545F71),
                                fontSize: 14,
                                fontFamily: 'Lufga',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: ScreenDimensions(context).height2Percent,
                            ),
                            Row(
                              children: [
                                ArenaINOutButton(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  text: 'Court Turf',
                                  isSelected: _selectedCourtButtonTruff,
                                  onPressed: () {
                                    _onButtonPressCourt("Truf");
                                  },
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03),
                                ArenaINOutButton(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  text: 'Court Grass',
                                  isSelected: _selectedCourtButtonGrass,
                                  onPressed: () => _onButtonPressCourt("Grass"),
                                ),
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03),
                                ArenaINOutButton(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  text: 'Cement',
                                  isSelected: _selectedCourtButtonCement,
                                  onPressed: () =>
                                      _onButtonPressCourt("Cement"),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: CustomAreenaButton(
                                    text: Apptext.cancel,
                                    color: null,
                                    borderColor: Color(0xFFE9EAF0),
                                    textColor: Colors.black,
                                    showIcon: false,
                                    onTap: () {
                                      Get.back();
                                    },
                                  ),
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                  child: CustomAreenaButton(
                                    text: Apptext.next,
                                    color: AppColors.black,
                                    showBorder: false,
                                    borderColor: Color(0xFFE9EAF0),
                                    textColor: AppColors.white,
                                    showIcon: false,
                                    onTap: () async {
                                      // Validate the form
                                      bool isValid = Validator
                                              .globalKey.currentState
                                              ?.validate() ??
                                          false;

                                      if (isValid) {
                                        // Form is valid
                                        print("Form is valid");
                                        Get.back();
                                        // Perform any asynchronous operations if needed
                                        await _openBottomSheet(context);

                                        // Navigate to the next screen or perform other actions
                                        Get.back(); // This will pop the current route
                                        // Example: Navigate to the next screen
                                        // Get.to(NextScreen());
                                      } else {
                                        // Form is invalid
                                        print('Form is invalid');
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                            /*SizedBox(
                              height: 20,
                            )*/
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Future<void> _openBottomSheet(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled:
          true, // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AddAreena2();
      },
    );
  }
  Future<void> _openBottomSheetMap(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled:
      true, // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AreenaMapScreen();
      },
    );
  }
}
