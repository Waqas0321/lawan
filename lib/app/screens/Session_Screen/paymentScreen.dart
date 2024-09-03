import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/paymentScren/paymentScreen.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/widgets/Areena/ar-in-out-button.dart';
import 'package:lawan/app/widgets/Areena/circularContainer.dart';
import 'package:lawan/app/widgets/Friendly_Session/payment_header.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../utils/images.dart';
import '../../widgets/Areena/areenaButton.dart';
import '../../widgets/Friendly_Session/paymentGrid.dart';

class Paymentscreen extends GetView<PaymentScreenController> {
  @override
  Widget build(BuildContext context) {
    final PaymentScreenController paymentController =
        Get.find<PaymentScreenController>();

    return SafeArea(
        maintainBottomViewPadding: true,
        top: false,
        bottom: false,
        child: Obx(() => Scaffold(
              backgroundColor: Colors.white,
              appBar: PaymentDashboard(
                  paymentText: "You'r Paying",
                  amount: "100",
                  transactionId: "Acme INC"),
              body: Column(
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircularContainer(
                              height: 40,
                              color: AppColors.gainsboro,
                              image: Images.add),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                title: "Contact",
                                fontSize: 15,
                                textColor: AppColors.mid_grey,
                                fontWeight: FontWeight.w600,
                              ),
                              TextWidget(
                                title: "malical.bust@hit-pay.com",
                                fontSize: 17,
                                textColor: AppColors.dark_grey,
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                          Spacer(),
                          SvgPicture.asset(Images.chevron_down)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircularContainer(
                                height: 40,
                                color: AppColors.gainsboro,
                                image: Images.add),
                            TextWidget(
                              title: "Payment",
                              fontSize: 17,
                              textColor: AppColors.dark_grey,
                              fontWeight: FontWeight.w800,
                            ),
                            Spacer(),
                            TextWidget(title: paymentController.propers.value),
                            InkWell(
                              onTap: () {
                                if (paymentController.isexpandable.value ==
                                    true) {
                                  paymentController.isexpandable.value = false;
                                } else {
                                  paymentController.isexpandable.value = true;
                                }
                                ;
                                print(paymentController.isexpandable.value);
                              },
                              child: SvgPicture.asset(Images.chevron_down),
                            ),
                          ],
                        ),
                        ExpandableGridView(
                          paymentScreenController: paymentController,
                          imagePaths: [
                            Images.areena, // Add your image assets
                            Images.location,
                            Images.user,
                            Images.user,
                            Images.user,
                            Images.user,
                          ],
                          textItems: [
                            'Stripe',
                            'Razor Pay',
                            'E-Wallets',
                            'Online\n Bankinng',
                            "OTC\n payment",
                            "BNNPL"
                          ],
                        ),
                      ],
                    ),
                  ),
                  CustomAreenaButton(
                    text: 'Charge \$100.00',
                    width: Get.width,
                    color: AppColors.blue,
                    borderColor: Colors.white,
                    textColor: AppColors.white,
                    borderRadius: 10,
                    onTap: () {},
                  )
                ],
              ),
            )));
  }
}
