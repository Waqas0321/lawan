import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/List_Container.dart';
import 'package:lawan/app/widgets/bottom_sheet/friendly_session_bottom_sheet.dart';
import '../../widgets/Friendly_Session/FrindlyContainer.dart';
import '../../widgets/Friendly_Session/Session_Row.dart';

class ShareInvitePublicScreen extends StatelessWidget {
  const ShareInvitePublicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: Responsive.h2,
          ),
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const FrindlySessionContainer();
                },
              ),
            ),
          ),
          SizedBox(
            height: Responsive.h2,
          ),
          const SessionsRow(),
          ListView.builder(
              physics: ScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (itemBuilder, index) {
                return ListContainer(
                  showButton: true,
                  isFriendlySession: true,
                  onTap: () {
                    Get.bottomSheet(FriendlySessionBottomSheet(),
                        isScrollControlled: true);
                  },
                );
              })
        ],
      ),
    );
  }
}
