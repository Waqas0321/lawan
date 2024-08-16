import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/colors.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabs;

  const CustomTabBar({
    super.key,
    required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xCCE5E6E5), borderRadius: BorderRadius.circular(200)),
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width / 65,
          bottom: MediaQuery.of(context).size.width / 65,
            left: MediaQuery.of(context).size.width / 65,
            right: MediaQuery.of(context).size.width / 65
        ),
        child: Center(
          child: TabBar(

            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            indicatorColor: AappColor.white,
            indicator: BoxDecoration(
              color: AappColor.white,
              borderRadius: BorderRadius.circular(200)
            ),

            dividerHeight: 1,
            labelStyle: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            tabs: tabs.map((tab) {
              return SizedBox(
                height: 50,
                child: Center(
                  child: Tab(
                    text: tab,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
