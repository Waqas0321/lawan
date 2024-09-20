import 'package:flutter/material.dart';
class ChattingRoomScreen extends StatefulWidget {
  const ChattingRoomScreen({super.key});

  @override
  State<ChattingRoomScreen> createState() => _ChattingRoomScreenState();
}

class _ChattingRoomScreenState extends State<ChattingRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Chat Screen"),
          )
        ],
      ),
    );
  }
}
