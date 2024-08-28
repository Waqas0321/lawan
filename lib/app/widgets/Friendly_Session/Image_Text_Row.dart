import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/colors.dart';
import '../text_widget.dart';

class ImageTextRow extends StatelessWidget {
  const ImageTextRow({
    super.key,
    required this.imagePath,
    required this.text,
  });

  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          imagePath,
          color: AppColors.mid_grey,
          height: 16,
          width: 16,
        ),
        SizedBox(
          width: 6,
        ),
        TextWidget(
          title: text,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          textAlign: TextAlign.center,
          textColor: AppColors.textSecondColor,
        )
      ],
    );
  }
}