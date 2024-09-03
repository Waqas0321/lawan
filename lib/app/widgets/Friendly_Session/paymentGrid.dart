import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/paymentScren/paymentScreen.dart';
import 'package:lawan/app/utils/colors.dart';

class ExpandableGridView extends StatelessWidget {
  PaymentScreenController paymentScreenController;
  final List<String> imagePaths; // Add image paths
  final List<String> textItems; // Add text items

  ExpandableGridView({
    Key? key,
    required this.paymentScreenController,
    required this.imagePaths,
    required this.textItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      child: Obx(() => paymentScreenController.isexpandable.value
          ? Container(
              height: 280, // Set height for GridView
              child: GridView.builder(
                padding:EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 9 / 4),
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  if (index < 2) {
                    return GridTile(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Border radius
                          border: Border.all(
                            color:AppColors.grey3, // Border color
                            width: 1.0, // Border width
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            imagePaths[index],
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return GridTile(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10), // Border radius
                          border: Border.all(
                            color:AppColors.grey3, // Border color
                            width: 1.0, // Border width
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              imagePaths[index],
                              width: 50.0,
                              height: 50.0,
                            ),
                            SizedBox(height: 8),
                            Text(
                              textItems[index], // Replace with your text
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            )
          : SizedBox.shrink()),
    );
  }
}
