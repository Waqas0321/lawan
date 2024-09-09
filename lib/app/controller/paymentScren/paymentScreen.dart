import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/Friendly_Session/session_created_BottomSheet.dart';

class PaymentScreenController extends GetxController {
  RxBool isexpandable = false.obs;
  RxString propers="".obs;
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
}
