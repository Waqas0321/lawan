import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/widgets/Friendly_Session/Friendly_BottomSheet.dart';

import '../../widgets/Friendly_Session/session_created_BottomSheet.dart';

class SessionCreatedController extends GetxController{
  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return FriendlyBottomSheet();
      },
    );
  }
}