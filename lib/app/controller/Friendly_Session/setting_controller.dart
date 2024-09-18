import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/widgets/Friendly_Session/inviteFriends1Sheet.dart';
import 'package:lawan/app/widgets/Friendly_Session/session_created_BottomSheet.dart';

class SettingController extends GetxController{




  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return SessionCreated();
      },
    );
  }
  void openBottomSheetInvits(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return InviteFriendsOneSheet();
      },
    );
  }
}