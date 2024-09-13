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
              padding:EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return FrindlySessionContainer(
                    onTap: () {
                      Get.bottomSheet(FriendlySessionBottomSheet(),
                          isScrollControlled: true);
                    },
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: Responsive.h2,
          ),
          const SessionsRow(),
          SizedBox(
            height: Responsive.h2,
          ),
          ListView.separated(
            physics: const ScrollPhysics(),
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (itemBuilder, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 16,right:16),
                child: ListContainer(
                  showButton: true,
                  index: index,

                  isFriendlySession: true,
                  onTap: () {
                    Get.bottomSheet(const FriendlySessionBottomSheet(),
                        isScrollControlled: true);
                  },
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: Responsive.h2,
              );
            },
          )
        ],
      ),
    );
  }
}
