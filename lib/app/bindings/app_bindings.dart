import 'package:get/get.dart';
import 'package:lawan/app/controller/bottom_bar/bottom_navigation_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(BottomNavigationController(), permanent: true);
  }
}
