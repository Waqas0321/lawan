import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/text_widget.dart';

class CustomShadowButton extends StatelessWidget {
  const CustomShadowButton({
    super.key,
    this.width = 169,
    this.withCounterBox = false,
  });
  final double width;
  final bool withCounterBox;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 44,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0xa614eac5),
                blurRadius: 18,
                offset: Offset(0, 5),
                spreadRadius: -10,
              ),
              BoxShadow(
                color: Color(0x8b2c8170),
                blurRadius: 32,
                offset: Offset(0, 25),
                spreadRadius: -8,
              ),
              BoxShadow(
                color: Color(0x542c8170),
                blurRadius: 42,
                offset: Offset(5, 50),
                spreadRadius: -8,
              ),
              BoxShadow(
                color: Color(0x422c8170),
                blurRadius: 44,
                offset: Offset(5, 60),
                spreadRadius: -8,
              ),
            ],
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                // Start from top center
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff0C1B22),
                  Color(0xff44D8BE),
                ])),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Images.play,
                color: Colors.white,
                height: 16,
                width: 16,
              ),
              const SizedBox(width: 2),
              const Text(
                'Create a session',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w500,
                  height: 0.11,
                ),
              ),
              withCounterBox
                  ? const SizedBox(width: 8)
                  : const SizedBox(
                      width: 0,
                    ),
              withCounterBox
                  ? Container(
                      width: 34,
                      height: 16,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: const TextWidget(
                        title: '+13',
                        textAlign: TextAlign.center,
                        textColor: Color(0xFF0C1B22),
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                      ),
                    )
                  : const SizedBox(
                      width: 0,
                    )
            ],
          ),
        ));
  }
}
