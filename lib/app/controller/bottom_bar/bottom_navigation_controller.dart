import 'package:get/get.dart';
import 'package:lawan/app/utils/images.dart';

class BottomNavigationController extends GetxController {
  RxString selectedItem = "Arena".obs;
  final List<String> imagePaths = [
    Images.play,
    Images.areena,
    Images.sales,
  ];

  final List<String> titles = ["Session", "Arena", "Sales"];
  void changeSelection(String newSelection) {
    selectedItem.value = newSelection;
  }
}
