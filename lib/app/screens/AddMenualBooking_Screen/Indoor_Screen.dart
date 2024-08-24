import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/text_widget.dart';
import '../../widgets/MenualBooking_Screen/In_Out_DoorContainer.dart';
import '../../widgets/MenualBooking_Screen/Indoor_Header.dart';

class IndoorScreen extends StatelessWidget {
  const IndoorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: Material(
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
                      children: [InOut_doorContainer( isOutdoor: false,), SizedBox(height: 4)],
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}



