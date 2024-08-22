import 'package:flutter/material.dart';
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
                decoration: ,
              )
            ],
          )
        ],
      ),
    );
  }
}
