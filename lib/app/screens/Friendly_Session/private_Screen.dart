import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/screens/Friendly_Session/Public_Third_Screen.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Custom_Circular_Button.dart';

import 'Public_Second_Screen.dart';
import '../../utils/colors.dart';
import '../../widgets/Areena/areenaButton.dart';
import '../../widgets/Friendly_Session/FrindlyContainer.dart';
import '../../widgets/Friendly_Session/custom_shadow_button.dart';
import '../../widgets/Friendly_Session/user_container.dart';
import '../../widgets/Session_Screen/Session_Header.dart';
import '../../widgets/text_widget.dart';

class PrivateScreen extends StatelessWidget {
  const PrivateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PublicThirdScreen(),
    );
  }
}




