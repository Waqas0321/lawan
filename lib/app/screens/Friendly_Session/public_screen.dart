import 'package:flutter/material.dart';
import 'package:lawan/app/screens/Friendly_Session/Public_First_Screen.dart';

import 'Public_Second_Screen.dart';

class PublicScreen extends StatelessWidget {
  const PublicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PublicSecondScreen()
    );
  }
}


