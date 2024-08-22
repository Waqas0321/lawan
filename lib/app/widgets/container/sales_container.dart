import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import 'package:lawan/app/widgets/text_widget.dart';

class SalesContainer extends StatelessWidget {
  const SalesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              TextWidget(
                title: "+RM20",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                textColor: Color(0xFF23A891),
              ),
              SizedBox(
                height: Responsive.h1,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Color(0xffd99125)),
                child: TextWidget(
                  title: "Ongoing",
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: Responsive.h1,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: Responsive.h1,
                    ),
                    TextWidget(
                      title: "Rxm12",
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: Responsive.h1,
                    ),
                    Container(
                      width: Responsive.h10,
                      height: 2,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: Responsive.h1,
                    ),
                    TextWidget(
                      title: "Rxm12",
                      textColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
