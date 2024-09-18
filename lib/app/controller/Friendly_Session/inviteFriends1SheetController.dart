import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/Friendly_Session/inviteFriends2Sheet.dart';

class InviteFriendsOneSheetController extends GetxController{
  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return InviteFriendsTwoSheet();
      },
    );
  }
}