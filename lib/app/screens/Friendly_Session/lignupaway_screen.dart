import 'package:flutter/material.dart';
class LignUpAwayScreen extends StatefulWidget {
  const LignUpAwayScreen({super.key});

  @override
  State<LignUpAwayScreen> createState() => _LignUpAwayScreenState();
}

class _LignUpAwayScreenState extends State<LignUpAwayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("Away"),
      ),
    );
  }
}
