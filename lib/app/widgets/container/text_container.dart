import 'package:flutter/material.dart';
import 'package:lawan/app/widgets/text_widget.dart';

class TextContainer extends StatelessWidget {
  final double padding;
  final String text;
  const TextContainer({super.key, this.padding = 5, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff23a991), borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(padding),
      child: TextWidget(
        title: text,
        textColor: Colors.white,
        fontSize: 10,
      ),
    );
  }
}
