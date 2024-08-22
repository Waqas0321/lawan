import 'package:get/get.dart';
import 'package:lawan/app/controller/bottom_bar/bottom_navigation_controller.dart';

import '../controller/sales/sales_controller.dart';
import 'package:lawan/app/controller/manual/MenualBooking_Controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavigationController(), permanent: true);
    Get.lazyPut(()=>MenualBookinController());
    Get.put(SalesController());
    Get.put(MenualBookinController());
  }
}
