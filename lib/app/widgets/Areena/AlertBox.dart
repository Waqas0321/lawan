import 'package:flutter/material.dart';
import 'package:lawan/app/utils/colors.dart';

import '../../utils/images.dart';
import 'areenaButton.dart';

void showCustomAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        child: Container(
          width: 361,
          height: 270,
          padding: const EdgeInsets.only(
            top: 24,
            left: 16,
            right: 16,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Arena Added Successfully!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              Image.asset(
                Images.frame1,
                color: AappColor.bluee, // Replace with your color if needed
              ),
              SizedBox(height: 8),
              Text(
                'You can now start earning from this arena',
                style: TextStyle(
                  color:AappColor.mid_grey,
                  fontSize: 12,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 24),
              CustomAreenaButton(
                width: 329,
                height: 49,
                text: "Add more",
                color: Colors.white,
                borderColor:AappColor.gainsboro,
                textColor:AappColor.black,
                onTap: () {},
              ),
              SizedBox(height: 8),
              CustomAreenaButton(
                width: 329,
                height: 49,
                text: "Done",
                color: Colors.black,
                borderColor: Color(0xFFE9EAF0),
                textColor: Colors.white,
                onTap: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
