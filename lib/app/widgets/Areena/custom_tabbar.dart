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
      decoration: BoxDecoration(color: Color(0xFFDEE1E2), borderRadius: BorderRadius.circular(200)),
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width / 110,
          bottom: MediaQuery.of(context).size.width / 100,
            left: MediaQuery.of(context).size.width / 100,
            right: MediaQuery.of(context).size.width / 100
        ),
        child: Center(
          child: TabBar(

            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            indicatorColor: AappColor.black,
            indicator: BoxDecoration(
              color: AappColor.white,
              borderRadius: BorderRadius.circular(200)
            ),

            dividerHeight: 1,
            unselectedLabelColor:AappColor.dark_grey,
            labelStyle:TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Lufga',
            fontWeight: FontWeight.w500,
            letterSpacing: -0.28,
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
