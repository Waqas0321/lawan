import 'package:flutter/material.dart';

import '../../widgets/MenualBooking_Screen/In_Out_DoorContainer.dart';
import '../../widgets/MenualBooking_Screen/Indoor_Header.dart';
import '../../widgets/MenualBooking_Screen/search_TextField.dart';
class OutdoorScreen extends StatelessWidget {
  const OutdoorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.013,
            ),
            IndoorHeader(),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [InOut_doorContainer( isOutdoor: true,), SizedBox(height: 8)],
                  );
                },
              ),
            )
          ],
        ));
  }
}
