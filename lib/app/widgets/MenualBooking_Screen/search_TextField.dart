import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key, required this.hintText,
    this.isThirdSheet = false,
  });
  final String hintText;
  final bool isThirdSheet;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.58,
      height: 44,
      padding:
      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              color:isThirdSheet? Color(0xFFACB3C0):Colors.black,
              fontSize: 14,
              fontFamily: 'Lufga',
              fontWeight: isThirdSheet?FontWeight.w400: FontWeight.w500,
            ),
          prefixIcon:  !isThirdSheet? Icon(Icons.search,size: 20,color: Color(0xff545F71),):null,
          suffixIcon: !isThirdSheet? SvgPicture.asset(Images.x,height: 16,width: 16,color: Color(0xff545F71),):null,

        ),
      ),
    );
  }
}