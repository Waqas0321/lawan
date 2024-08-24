import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lawan/app/bindings/app_bindings.dart';
import 'package:lawan/app/screens/AddMenualBooking_Screen/MenualBooking.dart';
import 'package:lawan/app/screens/HomeScreen/home_screen.dart';
import 'package:lawan/app/screens/Session_Screen/SessionScreen.dart';
void main() {

  runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => ScreenUtilInit(
          designSize: Size(375, 812), // Design size for scaling
          builder: (context, child) => MyApp(),
        ),
      ),
      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Switch Demo',
      initialBinding: InitialBindings(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

void showCustomAlertDialogssss(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        content: Sessionscreen(),
      );
    },
  );
}
