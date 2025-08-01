import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/widgets/Friendly_Session/Friendly_Session_Setting.dart';

class InviteFriendsThreeSheetController extends GetxController{
  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return FriendlySessionSetting(fromInviteFriends: true,);
      },
    );
  }
}