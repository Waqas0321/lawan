import 'package:flutter/material.dart';
import 'package:lawan/app/screens/HomeScreen/Widgets/homeScreen_Body.dart';
import 'package:lawan/app/utils/appSizes.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/utils/text.dart';
import '../../widgets/Areena/AddArena1.dart';
import '../../widgets/Areena/circularContainer.dart';
import 'Widgets/homeScreenHeader.dart';

class HomeScreen extends StatelessWidget {
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AddAreena1();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffDDDDDB),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.023,
                  left: MediaQuery.of(context).size.width * 0.023,
                  right: MediaQuery.of(context).size.width * 0.023),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScreenHeader(),
                  SizedBox(height: AppSizes.spaceBTWSections / 2.5),
                  ScreenBody(),
                  SizedBox(
                    height: AppSizes.spaceBTWSections,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 70,
                    decoration: BoxDecoration(
                        color: const Color(0xffB9B9B9),
                        borderRadius: BorderRadius.circular(80)),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: CircularContainer(
                                image: Images.play,
                                color: Colors.white,
                                text: Apptext.session,
                              ),
                            ),
                            SizedBox(
                              width: AppSizes.spaceBTWItems,
                            ),
                            const Expanded(
                              child: CircularContainer(
                                image: Images.arena_image,
                                color: Colors.black,
                                text: Apptext.arena,
                                textColor: Colors.white,
                                imageHeight: 24,
                                imageWidth: 24,
                              ),
                            ),
                            SizedBox(
                              width: AppSizes.spaceBTWItems,
                            ),
                            const Expanded(
                              child: CircularContainer(
                                image: Images.sales_image,
                                color: Colors.white,
                                text: Apptext.sales,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
