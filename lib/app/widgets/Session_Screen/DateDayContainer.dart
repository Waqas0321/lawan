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
            '24 Jun',
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
              color: Colors.black,
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