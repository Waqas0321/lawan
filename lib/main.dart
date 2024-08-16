import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lawan/app/screens/HomeScreen/home_screen.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/widgets/Areena/ArenaFilled1.dart';

import 'app/screens/book_Session/sessionList.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CustomSwitch(
          value: _isSwitched,
          onChanged: (bool value) {
            setState(() {
              _isSwitched = value;
            });
          },
          width: 40,
          height: 24,
          activeColor: Colors.white,
          inactiveColor: AappColor.mid_grey,
          activeTrackColor: AappColor.black,
          inactiveTrackColor: AappColor.white,
          borderColor: AappColor.mid_grey, // Border color for the track
          borderWidth: 2.0, // Border width for the track
          thumbBorderColor: Colors.red, // Border color for the thumb
          thumbBorderWidth: 5.0, // Border width for the thumb
        ),
      ),
    );
  }
}

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
          border: Border.all(
              color: borderColor, width: borderWidth), // Border for the track
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: Duration(milliseconds: 200),
              alignment: value ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: height,
                height: height,
                margin:
                    EdgeInsets.only(top: 1.5,bottom: 1.5,), // Adjust thumb margin to control padding
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
