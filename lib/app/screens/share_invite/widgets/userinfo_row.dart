import 'package:flutter/material.dart';

import '../../../utils/responsive_utils.dart';
import '../../../widgets/container/text_container.dart';

class UserinfoRow extends StatelessWidget {
  const UserinfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TextContainer(text: "25 - 35 years"),
        SizedBox(
          width: Responsive.h2,
        ),
        const TextContainer(text: "Male & Female"),
        SizedBox(
          width: Responsive.h2,
        ),
        const TextContainer(text: "English & Malay"),
      ],
    );
  }
}
