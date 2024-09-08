import 'package:flutter/material.dart';
class DateDayTextContainer extends StatelessWidget {
  const DateDayTextContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '24 Sep',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Lufga',
              fontWeight: FontWeight.w500,
              height: 0.09,
            ),
          ),
          SizedBox(width: 16),
          Text(
            'Mon, Tomorrow',
            style: TextStyle(
              color: Color(0xFF545F71),
              fontSize: 14,
              fontFamily: 'Lufga',
              fontWeight: FontWeight.w400,
              height: 0.11,
            ),
          ),
        ],
      ),
    );
  }
}