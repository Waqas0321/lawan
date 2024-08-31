import 'package:flutter/material.dart';

import '../../../utils/images.dart';
import '../../../utils/responsive_utils.dart';
import '../../../widgets/container/circular_container.dart';
import '../../../widgets/text_widget.dart';

class ProfileCard extends StatelessWidget {
  final bool showIcons;
  final bool showBorder;
  final Color backgroundColor;
  final Color borderColor;
  final Color titleColor;
  final Color subtitleColor;
  final Color iconBorderColor;
  final Color subtitleBackground;

  const ProfileCard({
    super.key,
    this.showIcons = true,
    this.showBorder = false,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.grey,
    this.titleColor = Colors.black,
    this.subtitleBackground = Colors.transparent,
    this.subtitleColor = const Color(0xFF545F71),
    this.iconBorderColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: backgroundColor,
        border:
            Border.all(color: showBorder ? borderColor : Colors.transparent),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Leading Avatar
          const CircleAvatar(
            backgroundImage: AssetImage(Images.avatar),
            radius: 30,
          ),
          const SizedBox(width: 12), // Space between avatar and text

          // Title and Subtitle Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  title: "Ali Qazwini",
                  fontWeight: FontWeight.bold, // Optional styling
                  textColor: titleColor, // Customizable title color
                ),
                const SizedBox(height: 4), // Space between title and subtitle
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: subtitleBackground,
                    border: Border.all(color: borderColor),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextWidget(
                    title: "Arena Owner",
                    fontSize: 11,
                    textColor: subtitleColor, // Customizable subtitle color
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            width: Responsive.h1,
          ),
          if (showIcons)
            Row(
              children: [
                CircularContainer(
                  padding: 10,
                  svgPath: Images.chat,
                  onTap: () {},
                  borderColor:
                      iconBorderColor, // Customizable icon border color
                ),
                SizedBox(width: Responsive.h1), // Space between icons
                CircularContainer(
                  padding: 10,
                  svgPath: Images.menu,
                  borderColor:
                      iconBorderColor, // Customizable icon border color
                  onTap: () {},
                ),
              ],
            ),
        ],
      ),
    );
  }
}
