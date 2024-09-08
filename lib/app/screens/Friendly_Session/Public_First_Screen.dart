import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/colors.dart';
import '../../widgets/Areena/areenaButton.dart';
import '../../widgets/Friendly_Session/Session_Row.dart';
import '../../widgets/Friendly_Session/custom_shadow_button.dart';
import '../../widgets/Friendly_Session/user_container.dart';
import '../../widgets/text_widget.dart';
class PublicFirstScreen extends StatelessWidget {
  const PublicFirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomAreenaButton(
                      showIcon: true,
                      text: "Find Friends",
                      color: AppColors.white,
                      borderColor: Color(0xFFDEE1E2),
                      textColor: AppColors.black,
                      onTap: () {},
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SessionsRow(),
                SizedBox(height: 16),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [
                        Color(0xFFF2F3F2),
                        Color(0xff170808)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 213.7,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Color(0xff170808)),
              child: Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Column(
                    children: [
                  Container(
                    height: 25,
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          spacing: -10,
                          children: [
                            CustomUserContainer(),
                            CustomUserContainer(),
                            CustomUserContainer(),
                            CustomUserContainer(),
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        TextWidget(
                          title: "VS",
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Wrap(
                          spacing: -10,
                          children: [
                            CustomUserContainer(),
                            CustomUserContainer(),
                            CustomUserContainer(),
                            CustomUserContainer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Column(
                    children: [
                      TextWidget(
                        title: 'No session available',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.w500,
                        textColor: AppColors.white,
                        fontSize: 16,
                      ),
                      TextWidget(
                        title: 'Create a session to start playing',
                        textAlign: TextAlign.center,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        textColor: Color(0xFFDEE1E2),
                      ),
                      SizedBox(height: 28),
                      CustomShadowButton(),
                    ],
                  )
                ]),
              ),
            ),
          )
        ]);
  }
}