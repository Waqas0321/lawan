import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:lawan/app/widgets/Areena/TimeSlotAreena.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/FilterBoxBottomContainer.dart';
import '../../utils/colors.dart';
import 'FilterBoxButtonsRow.dart';
import 'FilterBoxRangesRowTexts.dart';

class FilterBox extends StatefulWidget {
  const FilterBox({super.key, 
    this.isFriendlySession = false, });
  
  final bool isFriendlySession;

  @override
  State<FilterBox> createState() => _FilterBoxState();
}

class _FilterBoxState extends State<FilterBox> {
  double startValue = 20;
  double endValue = 180;
  final List<String> _timeSlots = [
    'All Month',
    '6 Month',
  ];
  String _selectedTimeSlot = 'All Month';
  void _onTimeSlotChanged(String newValue) {
    setState(() {
      _selectedTimeSlot = newValue;
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
            height: widget.isFriendlySession?618: 450,
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: widget.isFriendlySession? 528:365,
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
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                            widget.isFriendlySession? TimeSlot(
                               forFilterBox: true,
                               isClock: false,
                               timeSlots: _timeSlots,
                               selectedTimeSlot: _selectedTimeSlot,
                               onChanged: _onTimeSlotChanged,
                               isImage: true,
                             ):SizedBox(height: 0,),
                              widget.isFriendlySession? SizedBox(
                                height: 12,
                              ):SizedBox(height: 0,),
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
                          widget.isFriendlySession? FilterBoxButtonsRow(text: 'Availability',textSecondButton: 'Weekend',textThirdButton: 'Weekdays',):SizedBox(height: 0,),
                          SizedBox(height: 12),
                          FilterBoxButtonsRow(text: 'Flooring',textSecondButton: 'Grass',textThirdButton: 'Turf',),
                          SizedBox(height: 12),
                          widget.isFriendlySession? FilterBoxButtonsRow(text: 'Gender',textSecondButton: 'Male',textThirdButton: 'Female',):SizedBox(height: 0,),
                          SizedBox(height: 12),
                          FilterBoxButtonsRow(text: 'Arena Type',textSecondButton: 'Outdoor',textThirdButton: 'Indoor',),
                        ],
                      ),
                    ),
                  ),
                  FilterBoxBottomContainer()
                ],
              ),
            ),
          )),
    );
  }
}


