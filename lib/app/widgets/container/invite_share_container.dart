import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import 'package:lawan/app/widgets/text_widget.dart';

class InviteShareGridContainer extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subtitle;
  final String? additionalText;
  final bool showAdditionalText;

  const InviteShareGridContainer({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    this.additionalText,
    this.showAdditionalText = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      padding: const EdgeInsets.only(left: 10,right: 7,top:10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Colors.white, width: 0.6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(iconPath),
              SizedBox(width: Responsive.h1),
              TextWidget(
                title: title,
                textColor: const Color(0xFF545F71),
                fontSize: 12,
              ),
            ],
          ),
          SizedBox(height: Responsive.h1),
          TextWidget(
            title: subtitle,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.start,
          ),
          if (showAdditionalText && additionalText != null) ...[
            Container(
              padding: const EdgeInsets.only(left: 13, right: 13, top: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white),
              ),
              child: TextWidget(
                title: additionalText!,
                fontSize: 11,
                textColor: const Color(0xFF545F71),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
