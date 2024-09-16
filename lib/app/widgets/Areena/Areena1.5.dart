import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:latlong2/latlong.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/Areena/AddAreena2.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Custom_Circular_Button.dart';
import 'package:lawan/app/widgets/text_widget.dart';

import '../../utils/text.dart';
import '../MenualBooking_Screen/search_TextField.dart';
import 'areenaButton.dart';

class AreenaMapScreen extends StatefulWidget {
  const AreenaMapScreen({super.key});

  @override
  State<AreenaMapScreen> createState() => _AreenaMapScreenState();
}

class _AreenaMapScreenState extends State<AreenaMapScreen> {
  late MapController _mapController;
  LatLng _currentPosition =
      LatLng(37.7749, -122.4194); // Default location (San Francisco)
  bool _locationLoaded = false;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    // _currentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: acrylicAny(
        blurlevel: 6,
        child: Container(
          width: MediaQuery.of(context).size.width - 16,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 25),
          height: MediaQuery.of(context).size.height * 0.91,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Color(0xB2F2F3F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x19000000),
                offset: Offset(0, -0.50),
                spreadRadius: 0,
              )
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        Images.location_marker,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 6),
                      TextWidget(
                        title: "Choose Location",
                        fontSize: 16,
                        textColor: AppColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      Spacer(),
                      CustomCircularButton(
                        onPressFun: () {},
                        isSelected: false,
                        imagePath: Images.x,
                        isImage: true,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 16,
                  clipBehavior: Clip.antiAlias,
                  height: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(32),
                    bottomLeft: Radius.circular(32),
                  )),
                  child: FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                        // initialCenter: _currentPosition,
                        // initialZoom: 15.0,
                        ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a', 'b', 'c'],
                        additionalOptions: {
                          'access_token': 'YOUR_ACCESS_TOKEN',
                          'id': 'mapbox/streets-v11',
                          // Change to your desired style
                        },
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: _currentPosition,
                            width: 25,
                            height: 36,
                            child: Stack(children: [
                              SvgPicture.asset(
                                Images.map_LocatonIndicator,
                                height: 40,
                                width: 40,
                              ),
                              Positioned(
                                  top: 7,
                                  left: 6,
                                  child: SvgPicture.asset(
                                    Images.areena,
                                    height: 12,
                                    width: 12,
                                  )),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // : Center(child: CircularProgressIndicator(color: AppColors.blue)),

                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(Images.Capa_1),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                title: "Petaling Jaya, Selangor",
                                textColor: AppColors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              TextWidget(
                                title: "Selangor",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                textColor: AppColors.dark_grey,
                              ),
                            ],
                          ),
                          Spacer(),
                          SvgPicture.asset(
                            Images.x,
                            height: 16,
                            width: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: MenualBookigTextField(
                            isPrefixIcon: true,
                            hintText: 'PJ',
                          )),
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 170,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return LocationItems();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: CustomAreenaButton(
                              text: Apptext.cancel,
                              showIcon: false,
                              color: null,
                              borderColor: Color(0xFFE9EAF0),
                              textColor: AppColors.black,
                              onTap: () {
                                Get.back();
                              },
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: CustomAreenaButton(
                              showBorder: false,
                              showIcon: false,
                              text: "Save",
                              color: AppColors.black,
                              borderColor: AppColors.black,
                              textColor: AppColors.white,
                              onTap: () async {
                                Get.back();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column LocationItems() {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(Images.location_marker),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  title: "Petaling Jaya, Selangor",
                  textColor: AppColors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                TextWidget(
                  title: "Selangor",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.dark_grey,
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Divider(
          color: Colors.white38,
        ),
        SizedBox(
          height: 6,
        ),
      ],
    );
  }

  Future<void> _openBottomSheet(BuildContext context) async {
    await showModalBottomSheet(
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return AddAreena2();
      },
    );
  }
}
