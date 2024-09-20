import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Custom_Circular_Button.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../widgets/Friendly_Session/FrindlyContainer.dart';
import '../../widgets/Friendly_Session/chathistory_container.dart';

class LignUpHomeScreen extends StatefulWidget {
  const LignUpHomeScreen({super.key});

  @override
  State<LignUpHomeScreen> createState() => _LignUpHomeScreenState();
}

class _LignUpHomeScreenState extends State<LignUpHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return FrindlySessionContainer(
                      borderColor: AppColors.white,
                      onTap: () {},
                      isSelected: false,
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  return ChatHistoryContainer();
                },
              ),
            )
          ],
        ));
  }
}
