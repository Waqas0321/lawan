import 'package:flutter/material.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/List_Container.dart';

import '../../widgets/Friendly_Session/FrindlyContainer.dart';
import '../../widgets/Friendly_Session/Session_Row.dart';
import '../../widgets/Friendly_Session/user_container.dart';

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
                return const ListContainer(
                  showButton: true,
                  isFriendlySession: true,
                );
              })
        ],
      ),
    );
  }
}
