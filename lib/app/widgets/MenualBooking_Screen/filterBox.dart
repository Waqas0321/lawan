import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/FilterBoxBottomContainer.dart';
import '../../utils/colors.dart';
import '../Areena/TimeSlotAreena.dart';
import 'FilterBoxButtonsRow.dart';
import 'FilterBoxRangesRowTexts.dart';

class FilterBox extends StatefulWidget {
  const FilterBox({super.key, this.isLarge = true});
  final bool isLarge;


  @override
  State<FilterBox> createState() => _FilterBoxState();
}

class _FilterBoxState extends State<FilterBox> {
  double startValue = 20;
  double endValue = 180;
  final List<String> _timeSlotsThree = [
    'Max',
    'Min',
  ];
  String _selectedTimeSlotThree = 'Max';
  void _onTimeSlotChangedThree(String newValue) {
    setState(() {
      _selectedTimeSlotThree = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      child: acrylicAny(
          blurlevel: 3,
          child: Container(
            width: 700,
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
                          TimeSlot(
                            isClock: false,
                            timeSlots: _timeSlotsThree,
                            selectedTimeSlot: _selectedTimeSlotThree,
                            onChanged: _onTimeSlotChangedThree,
                            isImage: true,
                          ),
                          FilterBoxRangesRowTexts(),
                          RangeSlider(
                            values: RangeValues(startValue, endValue),
                            min: 0,
                            max: 200,
                            activeColor: AppColors.black,
                            labels: RangeLabels(startValue.round().toString(),
                                endValue.round().toString()),
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
                      FilterBoxRangesRowTexts(text1: 'RM200',text2: 'Price',text3: 'RM500',),
                      RangeSlider(
                        values: RangeValues(startValue, endValue),
                        min: 0,
                        max: 200,
                        activeColor: AppColors.black,
                        labels: RangeLabels(startValue.round().toString(),
                            endValue.round().toString()),
                        onChanged: (RangeValues values) {
                          setState(() {
                            startValue = values.start;
                            endValue = values.end;
                          });
                        },
                      ),
                      SizedBox(height: 12),
                      FilterBoxButtonsRow(),
                      SizedBox(height: 12),
                      FilterBoxButtonsRow(text: 'Flooring',textSecondButton: 'Grass',textThirdButton: 'Turf',),
                      SizedBox(height: 12),
                      FilterBoxButtonsRow(text: 'Arena Type',textSecondButton: 'Outdoor',textThirdButton: 'Indoor',),
                    ],
                  ),
                ),
                FilterBoxBottomContainer()
              ],
            ),
          )),
    );
  }
}


