import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/MenualBooking_Screen/List_Container.dart';
import '../../widgets/MenualBooking_Screen/Indoor_Header.dart';
class IndoorScreen extends StatelessWidget {
  IndoorScreen({super.key});
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
              Container(
                height:370,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [ListContainer(
                          selectedProperty: true,
                          isOutdoor: false,), SizedBox(height: 4)],
                      );
                    },
                  ),
                ),
              )
            ],
          )),
    );
  }
}



