import 'package:flutter/material.dart';
class LignUpExtraScreen extends StatefulWidget {
  const LignUpExtraScreen({super.key});

  @override
  State<LignUpExtraScreen> createState() => _LignUpExtraScreenState();
}

class _LignUpExtraScreenState extends State<LignUpExtraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text("Extra"),
      ),
    );
  }
}
