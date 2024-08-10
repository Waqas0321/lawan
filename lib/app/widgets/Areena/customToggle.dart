import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final double width;
  final double height;
  final Color activeColor;
  final Color inactiveColor;
  final Color activeTrackColor;
  final Color inactiveTrackColor;
  final Color borderColor;
  final double borderWidth;
  final Color thumbBorderColor;
  final double thumbBorderWidth;

  CustomSwitch({
    required this.value,
    required this.onChanged,
    this.width = 80.0,
    this.height = 40.0,
    required this.activeColor,
    required this.inactiveColor,
    required this.activeTrackColor,
    required this.inactiveTrackColor,
    this.borderColor = Colors.transparent,
    this.borderWidth = 2,
    this.thumbBorderColor = Colors.transparent,
    this.thumbBorderWidth = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height / 2),
          color: value ? activeTrackColor : inactiveTrackColor,
          border: Border.all(color: borderColor, width: borderWidth), // Border for the track
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: Duration(milliseconds: 200),
              alignment: value ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: height,
                height: height,
                margin:EdgeInsets.only(top: 2,bottom:2),
                decoration: BoxDecoration(
                  color: value ? activeColor : inactiveColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
