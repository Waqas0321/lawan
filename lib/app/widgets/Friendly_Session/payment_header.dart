import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/widgets/text_widget.dart';

class PaymentDashboard extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight;
  final String paymentText;
  final String amount;
  final String transactionId;

  PaymentDashboard({
    this.appBarHeight = 150.0, // Default height if not specified
     this.paymentText="",
     this.amount="100",
     this.transactionId="NMC ID",
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xFF002873),
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              title: paymentText,
              fontSize: 15,
              textColor: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        TextWidget(
                          title: '\$',  // Dollar sign
                          fontSize: 15,
                          textColor: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(width:5.w),
                        TextWidget(
                          title: amount,
                          fontSize: 28,
                          textColor: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),

                  ],
                ),
                Spacer(),
                TextWidget(
                  title: transactionId,
                  fontSize: 15,
                  textColor: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(8),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);
}

