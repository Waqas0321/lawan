import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  RxString selectedItem = "Arena".obs;
  void changeSelection(String newSelection) {
    selectedItem.value = newSelection;
  }
}
