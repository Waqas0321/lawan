import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/utils/colors.dart';

import '../../utils/images.dart';
import '../../widgets/Areena/session/textFormfield.dart';

class SessionList extends StatelessWidget {
  const SessionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AappColor.white,
      body:Column(
        children: [
          SizedBox(height:MediaQuery.of(context).size.height/10,),
          CustomTextfield(
            initialValue: 'September',
            imagePath:Images.chevron_down,
            controller: TextEditingController(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          )

        ],
      ),
    );
  }
}
