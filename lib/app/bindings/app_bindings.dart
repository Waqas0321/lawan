import 'package:get/get.dart';
import 'package:lawan/app/controller/Friendly_Session/friendly_session_controller.dart';
import 'package:lawan/app/controller/bottom_bar/bottom_navigation_controller.dart';
import 'package:lawan/app/controller/friendly/freindly_bottom_nav_controller.dart';
import '../controller/Session_Screen/SessionScreen_Controller.dart';
import '../controller/sales/sales_controller.dart';
import 'package:lawan/app/controller/manual/MenualBooking_Controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavigationController(), permanent: true);
    Get.put(FriendlyBottomNavController(), permanent: true);

    Get.put(SalesController(), permanent: true);
    // Menual Booking
    Get.put(MenualBookinController());
    Get.put(SessionScreenController());
    Get.put(FriendlySessionController());
    Get.put(MenualBookinController(), permanent: true);
    Get.put(SessionScreenController(), permanent: true);
  }
}
