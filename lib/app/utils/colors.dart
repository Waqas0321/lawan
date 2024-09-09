import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color gainsboro = Color(0xffF2F3F2);
  static const Color white = Color(0xffFFFFFF);
  static const Color alertcolor=Color(0xB2F2F3F2);

  static const Color black = Color(0xff000000);
  static const Color bluee = Color(0xff2A65F8);
  static const Color blue=Color(0xff0FF002873);
  static const Color silver = Color(0xffEEEEEE);
  static const Color dark_grey = Color(0xff545F71);
  static const Color mid_grey = Color(0xffACB4C0);
  static const Color bottombox = Color(0xCCE5E6E5);
  static const Color greenColor = Color(0xff57CC86);
  static const Color deepGreenColor = Color(0xFF23A891);
  static const Color borderColor = Color(0xFFE0E0E0);
  static const Color brand2 = Color(0xff23A991);
  static const Color Grey2 = Color(0xFFE0E0E0);
  static const Color Grey1 = Color(0xEDF2F3F2);
  static const Color grey3 = Color(0xffDEE1E3);
  static const Color txtColor = Color(0xFF545F71);
  static const Color containerTextColor = Color(0xFFACB3C0);
  static const Color red=Color(0xff0ffF05B5B);
  static const Color shadowColor=Color(0x19000000);
  static const Color textSecondColor=Color(0xFF545F71);
  static const Color hRBTNBorder=Color(0xFFDEE1E2);
  static final BoxDecoration gradientDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: const Alignment(0.0, 0.8), // Start near the bottom
      end: const Alignment(0.0, 1.0), // End at the bottom edge
      colors: [
        Colors.black.withOpacity(0.0), // Fully transparent color
        Colors.black.withOpacity(0.7), // Slightly visible gradient
      ],
    ),
  );

}
