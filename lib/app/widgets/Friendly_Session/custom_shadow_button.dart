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
    decoration: ShapeDecoration(
    gradient: LinearGradient(
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: [Color(0xFF0C1B22), Color(0xFF44D8BE)],
    ),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(80),
    )),
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
                      child:Text(
                        '+13',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0C1B22),
                          fontSize: 11,
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.50,
                        ),
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
