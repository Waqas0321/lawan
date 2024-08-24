import 'package:get/get.dart';

class HeaderController extends GetxController {
  var selectedTimeSlot = 'Soccer'.obs;

  void onTimeSlotChanged(String newValue) {
    selectedTimeSlot.value = newValue;
  }
}
