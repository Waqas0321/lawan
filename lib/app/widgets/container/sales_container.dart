import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lawan/app/controller/sales/sales_controller.dart';
import 'package:lawan/app/utils/colors.dart';
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
          padding: const EdgeInsets.all(0),
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
                   TextWidget(
                    title: "+RM20",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    textColor: Color(0xFF23A891),
                  ),
                  SizedBox(
                    height: Responsive.h2,
                  ),
                  Obx(
                    () => Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:salesController.tabBarIndex.value==2? Color(0xFF23A891):const Color(0xffd99125),
                    ),
                      child: TextWidget(
                        title: salesController.tabBarIndex.value == 2
                            ? "Completed"
                            : "Ongoing",
                        fontSize:10,
                        fontWeight:FontWeight.w400,
                        textColor: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xFFDEE1E2)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: Responsive.h1,
                          ),
                           TextWidget(
                            title: "Rxm12",
                            fontSize:12,
                            fontWeight:FontWeight.w500,
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
                            fontSize:12,
                            fontWeight:FontWeight.w500,
                            textColor: Color(0xFFACB3C0),

                          ),
                          SizedBox(
                            height: Responsive.h1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 1.5,
                height: Responsive.customHeight(20),
                color: const Color(0xFFDEE1E2),
              ),
              const SizedBox(
                width: 5,
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
                        fontSize: 12,
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
                       TextWidget(
                        title: "1",
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        textColor:AppColors.black,
                      )
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                   TextWidget(
                    title: "MBPJ Sports Complex",
                    fontSize: 12,
                    fontWeight:FontWeight.w400,
                    textColor: Color(0xFF545F71),
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                   Row(
                    children: [
                     SvgPicture.asset(Images.calendar),
                      SizedBox(
                        width: 10,
                      ),
                      TextWidget(
                        title: "Tue,  25 Sep 2024",
                        fontSize: 12,
                        fontWeight:FontWeight.w400,
                        textColor: Color(0xFF545F71),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Responsive.h1,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(Images.clock),
                      const SizedBox(
                        width: 10,
                      ),
                      const TextWidget(
                        title: "9:00 AM - 11:00 AM",
                        fontSize: 12,
                        fontWeight:FontWeight.w400,
                        textColor: Color(0xFF545F71),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        padding:  EdgeInsets.only(left: 8,right:8,top:2,bottom:2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
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
                width: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 18, vertical: Responsive.h8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: const Color(0xFFDEE1E2))),
                  child: SvgPicture.asset(Images.eye),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
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
