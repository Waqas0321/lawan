import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/sales/sales_controller.dart';
import 'package:lawan/app/utils/responsive_utils.dart';
import 'package:lawan/app/widgets/text_widget.dart';
import '../../utils/images.dart';

class SalesContainer extends StatelessWidget {
  final SalesController salesController;
  const SalesContainer({super.key, required this.salesController});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 8,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (itemBuilder, index) {
        return Container(
          padding: const EdgeInsets.all(5),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const TextWidget(
                    title: "+RM20",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    textColor: Color(0xFF23A891),
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  Obx(
                    () => Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color(0xffd99125)),
                      child: TextWidget(
                        title: salesController.tabBarIndex.value == 2
                            ? "Completed"
                            : "Ongoing",
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xFFDEE1E2)),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: Responsive.h1,
                        ),
                        const TextWidget(
                          title: "Rxm12",
                          textColor: Colors.black,
                        ),
                        SizedBox(
                          height: Responsive.h1,
                        ),
                        Container(
                          width: Responsive.h10,
                          height: 1,
                          color: const Color(0xFFDEE1E2),
                        ),
                        SizedBox(
                          height: Responsive.h1,
                        ),
                        const TextWidget(
                          title: "Rxm12",
                          textColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 1.5,
                height: Responsive.customHeight(20),
                color: const Color(0xFFDEE1E2),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(Images.avatar),
                      ),
                      SizedBox(
                        width: Responsive.h1,
                      ),
                      const TextWidget(
                        title: "Ali Qazwini",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Images.card),
                      SizedBox(width: Responsive.h1),
                      const TextWidget(
                        title: "1",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  const TextWidget(
                    title: "MBPJ Sports Complex",
                    fontSize: 14,
                    textColor: Color(0xFF545F71),
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        color: Color(0xFF545F71),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextWidget(
                        title: "Tue,  25 Sep 2024",
                        fontSize: 14,
                        textColor: Color(0xFF545F71),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.access_time,
                        color: Color(0xFF545F71),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const TextWidget(
                        title: "9:00 AM - 11:00 AM",
                        fontSize: 14,
                        textColor: Color(0xFF545F71),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xFFDEE1E2))),
                        child: const TextWidget(
                          title: "2 hr",
                          fontSize: 12,
                          textColor: Color(0xFF545F71),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 10, vertical: Responsive.h10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: const Color(0xFFDEE1E2))),
                child: const Icon(
                  Icons.remove_red_eye_outlined,
                  size: 20,
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: Responsive.h2,
        );
      },
    );
  }
}
