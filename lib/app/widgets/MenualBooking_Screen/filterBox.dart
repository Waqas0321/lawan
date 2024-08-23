import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Custom_Circular_Button.dart';
import '../../utils/colors.dart';
import '../text_widget.dart';
class FilterBox extends StatefulWidget {
  const FilterBox({super.key});

  @override
  State<FilterBox> createState() => _FilterBoxState();
}

class _FilterBoxState extends State<FilterBox> {
  double startValue = 20;
  double endValue = 180;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      content: acrylicAny(
          blurlevel: 3,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 450,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(32),
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 0,
                  offset: Offset(0, -0.50),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 365,
                  padding: const EdgeInsets.only(
                    top: 24,
                    left: 16,
                    right: 16,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 0,
                        offset: Offset(0, -0.50),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                title: '20km',
                                fontWeight: FontWeight.w500,
                                textColor: AppColors.black,
                                fontSize: 16,
                              ),
                              TextWidget(
                                title: 'Range',
                                fontWeight: FontWeight.w500,
                                textColor: AppColors.textSecondColor,
                                fontSize: 14,
                              ),
                              TextWidget(
                                title: '200km',
                                fontWeight: FontWeight.w500,
                                textColor: AppColors.black,
                                fontSize: 16,
                              ),
                            ],
                          ),
                          RangeSlider(
                            values: RangeValues(startValue, endValue),
                            min: 0,
                            max: 200,

                            activeColor: AppColors.black,
                            labels: RangeLabels(
                                startValue.round().toString(), endValue.round().toString()),
                            onChanged: (RangeValues values) {
                              setState(() {
                                startValue = values.start;
                                endValue = values.end;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                title: 'RM200',
                                fontWeight: FontWeight.w500,
                                textColor: AppColors.black,
                                fontSize: 16,
                              ),
                              TextWidget(
                                title: 'Price',
                                fontWeight: FontWeight.w500,
                                textColor: AppColors.textSecondColor,
                                fontSize: 14,
                              ),
                              TextWidget(
                                title: 'RM500',
                                fontWeight: FontWeight.w500,
                                textColor: AppColors.black,
                                fontSize: 16,
                              ),
                            ],
                          ),
                          RangeSlider(
                            values: RangeValues(startValue, endValue),
                            min: 0,
                            max: 200,
                            activeColor: AppColors.black,
                            labels: RangeLabels(
                                startValue.round().toString(), endValue.round().toString()),
                            onChanged: (RangeValues values) {
                              setState(() {
                                startValue = values.start;
                                endValue = values.end;
                              });
                            },
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              SizedBox(
                                width: 52,
                                child: TextWidget(
                                  title: 'States',
                                  fontWeight: FontWeight.w500,
                                  textColor: AppColors.textSecondColor,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 24),
                              CustomCircularButton(text: "All", onPressFun: () {

                              }, isSelected: true),
                              SizedBox(width: 12),
                              Expanded(
                                child: CustomCircularButton(text: "Johor", onPressFun: () {

                                }, isSelected: false),

                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: CustomCircularButton(text: "Kedah", onPressFun: () {

                                }, isSelected: false),
                              )
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              SizedBox(
                                width: 52,
                                child: TextWidget(
                                  title: 'Flooring',
                                  fontWeight: FontWeight.w500,
                                  textColor: AppColors.textSecondColor,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 24),
                              CustomCircularButton(text: "All", onPressFun: () {

                              }, isSelected: true),
                              SizedBox(width: 12),
                              Expanded(
                                child: CustomCircularButton(text: "Grass", onPressFun: () {

                                }, isSelected: false),

                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: CustomCircularButton(text: "Truf", onPressFun: () {

                                }, isSelected: false),
                              )
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            children: [
                              SizedBox(
                                width: 52,
                                child: TextWidget(
                                  title: 'Arena Type',
                                  fontWeight: FontWeight.w500,
                                  textColor: AppColors.textSecondColor,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 24),
                              CustomCircularButton(text: "All", onPressFun: () {

                              }, isSelected: true),
                              SizedBox(width: 12),
                              Expanded(
                                child: CustomCircularButton(text: "Outdoor", onPressFun: () {

                                }, isSelected: false),

                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: CustomCircularButton(text: "Indoor", onPressFun: () {

                                }, isSelected: false),
                              )
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
                BottomContainer()
              ],
            ),
          )),
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width + 20,
      height: 81,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Color(0xB2F2F3F2),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(32))
      ),
      child: Row(
        children: [
          CustomCircularButton(isImage:true,imagePath: Images.refresh ,width: 48,height: 48, onPressFun: () {

          }, isSelected: false),
          SizedBox(width: 16,),
          Expanded(
            child: CustomCircularButton(width: 48,height: 48,text: "Cancel", onPressFun: () {
              Get.back();
            }, isSelected: false),
          ),
          SizedBox(width: 16,),
          Expanded(
            child: CustomCircularButton(width: 48,height: 48,text: "Apply", onPressFun: () {

            }, isSelected: true),
          ),
        ],
      ),
    );
  }
}
