import 'package:flutter/material.dart';

import '../../../utils/images.dart';
import '../../../widgets/container/invite_share_container.dart';

class GridviewItems extends StatelessWidget {
  const GridviewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.95,
      ),
      itemCount: 4, // Four items to be displayed in the grid
      itemBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return const InviteShareGridContainer(
              iconPath: Images.calendar,
              title: "Date",
              subtitle: "Tue, 25 Sep 2024",
              showAdditionalText: false,
            );
          case 1:
            return const InviteShareGridContainer(
              iconPath: Images.time,
              title: "Time",
              subtitle: "10:00 AM - 12:00 PM",
              additionalText: "1 hr",
              showAdditionalText: true,
            );
          case 2:
            return const InviteShareGridContainer(
              iconPath: Images.location_marker,
              title: "Location",
              subtitle: "Petaling Jaya, Selangor",
              additionalText: "5 miles away",
              showAdditionalText: false, // Hide additional text
            );
          case 3:
            return const InviteShareGridContainer(
              iconPath: Images.currency_dollar,
              title: "Price",
              subtitle: "RM20/pax",
              showAdditionalText: false,
            );
          default:
            return const SizedBox(); // Default case to avoid any unexpected error
        }
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
