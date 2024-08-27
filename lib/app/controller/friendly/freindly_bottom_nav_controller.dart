import 'package:get/get.dart';

import '../../utils/images.dart';

class FriendlyBottomNavController extends GetxController {
  RxString selectedItem = "Friendly".obs;

  final List<String> imagePaths = [
    Images.friendly,
    Images.ranked,
    Images.club,
    Images.top,
    Images.stories,
  ];

  final List<String> titles = ["Friendly", "Ranked", "Club", "Top", "Stories"];

  void changeSelection(String newSelection) {
    selectedItem.value = newSelection;
  }
}
