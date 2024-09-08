import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';

class MenualBookigTextField extends StatelessWidget {
  const MenualBookigTextField({
    super.key,
    required this.hintText,
    this.isThirdSheet = false,
    this.isPrefixIcon = false,
    this.preFixIconImagePath = Images.search,
    this.preFixIconImageWith = 20,
    this.preFixIconImageHeight = 20,
    this.preFixIconColor = AppColors.dark_grey,
  });

  final String hintText;
  final bool isThirdSheet;
  final bool isPrefixIcon;
  final String preFixIconImagePath;
  final double preFixIconImageWith;
  final double preFixIconImageHeight;
  final Color preFixIconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.58,
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: TextFormField(
        textAlign: TextAlign.start,
        cursorColor: AppColors.brand2,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'Lufga',
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          contentPadding:EdgeInsets.only(bottom: 10,left:10),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: isThirdSheet ? Color(0xFFACB3C0) : Colors.black,
            fontSize: 14,
            fontFamily: 'Lufga',
            fontWeight: isThirdSheet ? FontWeight.w400 : FontWeight.w500,
          ),
          prefixIcon: isPrefixIcon
              ? SvgPicture.asset(
                  preFixIconImagePath,
                  height: preFixIconImageHeight,
                  width: preFixIconImageWith,
                  color: preFixIconColor,
                )
              : null,
          suffixIcon: !isThirdSheet
              ? SvgPicture.asset(
                  Images.x,
                  height: 16,
                  width: 16,
                  color: Color(0xff545F71),
                )
              : null,
        ),
      ),
    );
  }
}
