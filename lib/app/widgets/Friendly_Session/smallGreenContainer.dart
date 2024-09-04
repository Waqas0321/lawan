import 'package:flutter/cupertino.dart';

import '../../utils/colors.dart';
import '../text_widget.dart';

class smallGreenContainer extends StatelessWidget {
  const smallGreenContainer({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 79,
      height: 16,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFF23A891),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Center(
        child: TextWidget(
          title: text,
          textColor: AppColors.white,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}