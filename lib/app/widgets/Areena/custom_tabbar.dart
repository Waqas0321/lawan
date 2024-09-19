import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/colors.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabs;
  final List<String?>? svgIcons;  // SVG paths from calling class
  final Color color;

  const CustomTabBar({
    super.key,
    required this.tabs,
    this.svgIcons, // SVG paths are optional
    this.color = AppColors.hRBTNBorder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(200)),
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width / 110,
          bottom: MediaQuery.of(context).size.width / 100,
          left: MediaQuery.of(context).size.width / 100,
          right: MediaQuery.of(context).size.width / 100,
        ),
        child: Center(
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            indicatorColor: AppColors.black,
            indicator: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(200),
            ),
            dividerHeight: 1,
            unselectedLabelColor: AppColors.dark_grey,
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Lufga',
              fontWeight: FontWeight.w500,
              letterSpacing: -0.28,
            ),
            tabs: List.generate(tabs.length, (index) {
              return SizedBox(
                height: 50,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (svgIcons != null && svgIcons![index] != null)
                        SvgPicture.asset(
                          svgIcons![index]!,
                          height: 16,
                          width: 16,
                          color: AppColors.dark_grey, // Customize color if needed
                        ),
                      if (svgIcons != null && svgIcons![index] != null) SizedBox(width: 8), // Spacing between icon and text
                      Tab(
                        text: tabs[index],
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
