import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lawan/app/utils/colors.dart';


import '../../utils/images.dart';
import '../Areena/TimeSlotHomeDropDown.dart';

class CircularArrowsContainer extends StatelessWidget {
  const CircularArrowsContainer({
    super.key, required this.icon,
  });
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color:AppColors.grey3),
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Center(child: icon),
    );
  }
}
