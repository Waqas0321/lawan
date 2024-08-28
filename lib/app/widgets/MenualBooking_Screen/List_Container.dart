import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../screens/Friendly_Session/Public_Third_Screen.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../Friendly_Session/Image_Text_Row.dart';
import '../text_widget.dart';
import 'Custom_Circular_Button.dart';

class ListContainer extends StatefulWidget {
  const ListContainer({
    super.key,
    this.isOutdoor = false,
    this.isFriendlySession = false,
  });

  final bool isOutdoor;
  final bool isFriendlySession;

  @override
  State<ListContainer> createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  List<ImageProvider> memberImages = [
    AssetImage(Images.avatar),
    AssetImage(Images.avatar2),

    // Add more images here...
  ];
  bool showAll = false;
  late bool selected1 = false;
  late bool selected2 = true;
  late bool selected3 = false;

  void _onButtonPress(String text) {
    setState(() {
      switch (text) {
        case "1":
          selected1 = true;
          selected2 = false;
          selected3 = false;
          break;
        case "2":
          selected1 = false;
          selected2 = true;
          selected3 = false;

          break;
        case "3":
          selected1 = false;
          selected2 = false;
          selected3 = true;
          break;
        default:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: widget.isOutdoor
          ? 213
          : widget.isFriendlySession
              ? 231
              : 128,
      clipBehavior: Clip.antiAlias,
      decoration: widget.isOutdoor || widget.isFriendlySession
          ? ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            )
          : ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 12, left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            height: 120,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.white),
              borderRadius: BorderRadius.circular(32),
              image: DecorationImage(
                image: AssetImage(Images.greenery),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.025,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.800000011920929),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(400),
                        bottomRight: Radius.circular(400),
                      ),
                    ),
                  ),
                  child: Center(
                    child: TextWidget(
                      title: 'MBPJ Sports Complex',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      textColor: AppColors.white,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.125,
                      height: MediaQuery.of(context).size.width * 0.04,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Center(
                        child: TextWidget(
                          title: '5.2km',
                          fontSize: 11,
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.w500,
                          textColor: AppColors.textSecondColor,
                        ),
                      ),
                    ),
                    widget.isFriendlySession
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Wrap(
                                spacing: -10,
                                children: [
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.mid_grey,
                                      backgroundImage:
                                          AssetImage(Images.avatar),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.mid_grey,
                                      backgroundImage:
                                          AssetImage(Images.avatar2),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.mid_grey,
                                      backgroundImage:
                                          AssetImage(Images.avatar3),
                                    ),
                                  ),
                                  if (!showAll)
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          showAll = true;
                                        });
                                      },
                                      child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: ShapeDecoration(
                                            color: AppColors.white,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: AppColors.mid_grey),
                                              borderRadius:
                                                  BorderRadius.circular(999),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "+${memberImages.length}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color:
                                                    AppColors.textSecondColor,
                                                fontSize: 8,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                height: 0.19,
                                              ),
                                            ),
                                          ) // Muestra el número de miembros ocultos
                                          ),
                                    ),
                                  if (showAll)
                                    ...memberImages
                                        .map((image) => GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  showAll = false;
                                                });
                                              },
                                              child: SizedBox(
                                                height: 24,
                                                width: 24,
                                                child: CircleAvatar(
                                                    backgroundImage: image),
                                              ),
                                            )),
                                ],
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              TextWidget(
                                title: "VS",
                                fontSize: 10,
                                fontWeight: FontWeight.w800,
                                textColor: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Wrap(
                                spacing: -10,
                                children: [
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.mid_grey,
                                      backgroundImage:
                                          AssetImage(Images.avatar),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.mid_grey,
                                      backgroundImage:
                                          AssetImage(Images.avatar2),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: CircleAvatar(
                                      backgroundColor: AppColors.mid_grey,
                                      backgroundImage:
                                          AssetImage(Images.avatar3),
                                    ),
                                  ),
                                  if (!showAll)
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          showAll = true;
                                        });
                                      },
                                      child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: ShapeDecoration(
                                            color: AppColors.white,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: AppColors.mid_grey),
                                              borderRadius:
                                                  BorderRadius.circular(999),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "+${memberImages.length}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color:
                                                    AppColors.textSecondColor,
                                                fontSize: 8,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w600,
                                                height: 0.19,
                                              ),
                                            ),
                                          ) // Muestra el número de miembros ocultos
                                          ),
                                    ),
                                  if (showAll)
                                    ...memberImages
                                        .map((image) => GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  showAll = false;
                                                });
                                              },
                                              child: SizedBox(
                                                height: 24,
                                                width: 24,
                                                child: CircleAvatar(
                                                    backgroundImage: image),
                                              ),
                                            )),
                                ],
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              SvgPicture.asset(
                                Images.location_marker,
                                color: AppColors.white,
                                height: 16,
                                width: 16,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              TextWidget(
                                title: 'Petaling Jaya',
                                textAlign: TextAlign.right,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                textColor: AppColors.white,
                              )
                            ],
                          ),
                    widget.isFriendlySession
                        ? Row(
                            children: [
                              SvgPicture.asset(
                                Images.users,
                                color: Colors.white,
                                height: 16,
                                width: 16,
                              ),
                              SizedBox(width: 6,),
                              TextWidget(
                                title: "8/28",
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              textColor: AppColors.white,
                              textAlign: TextAlign.center,
                              )
                            ],
                          )
                        : Container(
                            width: MediaQuery.of(context).size.width * 0.125,
                            height: MediaQuery.of(context).size.width * 0.04,
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                            child: Center(
                              child: TextWidget(
                                title: 'Grass',
                                textAlign: TextAlign.center,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          widget.isFriendlySession ? SizedBox(height: 4) : SizedBox(height: 0),
          widget.isOutdoor
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          Images.areena,
                          height: 16,
                          width: 16,
                          color: Color(0xffACB4C0),
                        ),
                        SizedBox(width: 8),
                        TextWidget(
                          title: 'Choose Court',
                          textColor: AppColors.textSecondColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCircularButton(
                          isSelected: selected1,
                          onPressFun: () => _onButtonPress("1"),
                          text: '1',
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CustomCircularButton(
                          isSelected: selected2,
                          onPressFun: () => _onButtonPress("2"),
                          text: '2',
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        CustomCircularButton(
                          isSelected: selected3,
                          onPressFun: () => _onButtonPress("3"),
                          text: '3',
                        ),
                      ],
                    )
                  ],
                )
              : widget.isFriendlySession
                  ? Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ImageTextRow(
                                      imagePath: Images.calendar,
                                      text: "Date",
                                    ),
                                    SizedBox(height: 8),
                                    ImageTextRow(
                                      imagePath: Images.clock,
                                      text: "Time",
                                    ),
                                    SizedBox(height: 8),
                                    ImageTextRow(
                                      imagePath: Images.location_marker,
                                      text: "Location",
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextWidget(
                                      title: '(Tomorrow) Tue, 25 Sep ',
                                      textAlign: TextAlign.right,
                                      textColor: AppColors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        TextWidget(
                                          title: '9:00 AM - 11:00 AM',
                                          textAlign: TextAlign.right,
                                          textColor: AppColors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Container(
                                          width: 33,
                                          height: 16,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide
                                                    .strokeAlignOutside,
                                                color: Color(0xFFDEE1E2),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ),
                                          child: Center(
                                            child: TextWidget(
                                              title: '2 hr',
                                              textAlign: TextAlign.center,
                                              textColor:
                                                  AppColors.textSecondColor,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          Images.areena,
                                          height: 16,
                                          width: 16,
                                          color: AppColors.mid_grey,
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        TextWidget(
                                          title: '1, Petaling Jaya',
                                          textAlign: TextAlign.right,
                                          textColor: AppColors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: 16),
                                Container(
                                  width: 44,
                                  height: 70,
                                  padding: const EdgeInsets.all(12),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFFDEE1E2)),
                                      borderRadius: BorderRadius.circular(400),
                                    ),
                                  ),
                                  child: Center(
                                      child: SvgPicture.asset(
                                    Images.player_play,
                                    height: 20,
                                    width: 20,
                                    color: AppColors.mid_grey,
                                  )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          )
                        ],
                      ),
                    )
                  : SizedBox(
                      height: 0,
                    )
        ],
      ),
    );
  }
}
