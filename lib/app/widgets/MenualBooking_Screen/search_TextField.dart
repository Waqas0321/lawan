import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

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
            hintText: 'PJ',
            hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Lufga',
              fontWeight: FontWeight.w500,
            ),
          prefixIcon:  Icon(Icons.search,size: 20,color: Color(0xff545F71),),
          suffixIcon: SvgPicture.asset(Images.x,height: 16,width: 16,color: Color(0xff545F71),),

        ),
      ),
    );
  }
}