
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Menual_BottomSheet1.dart';

import '../../widgets/Session_Screen/BottomNave_Container.dart';

class MenualBookinController extends GetxController{

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return MenualBottomsheet1();
      },
    );
  }

}