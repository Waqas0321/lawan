import 'package:get/get.dart';
import 'package:lawan/app/controller/bottom_bar/bottom_navigation_controller.dart';
import 'package:lawan/app/screens/AddMenualBooking_Screen/Controller/MenualBooking_Controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavigationController(), permanent: true);
    Get.put(MenualBookinController());
    Get.lazyPut(()=>MenualBookinController());
  }
}
