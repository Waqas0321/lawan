import 'package:acrylic_any/acrylic_any.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/images.dart';
import 'package:lawan/app/widgets/Areena/AddAreena2.dart';
import 'package:lawan/app/widgets/MenualBooking_Screen/Custom_Circular_Button.dart';
import 'package:lawan/app/widgets/text_widget.dart';

class AreenaMapScreen extends StatefulWidget {
  const AreenaMapScreen({super.key});

  @override
  State<AreenaMapScreen> createState() => _AreenaMapScreenState();
}

class _AreenaMapScreenState extends State<AreenaMapScreen> {
  late MapController _mapController;
  LatLng _currentPosition = LatLng(37.7749, -122.4194); // Default location (San Francisco)
  bool _locationLoaded = false;

  @override
  void initState() {
    super.initState();
    _mapController = MapController();
    // _currentLocation();
  }

// // Create a Location instance
//   final Location _location = Location();
//
//   Future<void> _currentLocation() async {
//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;
//
//     // Check if location services are enabled
//     _serviceEnabled = await _location.serviceEnabled();
//     if (!_serviceEnabled) {
//       _serviceEnabled = await _location.requestService();
//       if (!_serviceEnabled) {
//         return;
//       }
//     }
//
//     // Check location permission
//     _permissionGranted = await _location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await _location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }
//
//     // Get the current location
//     LocationData _locationData = await _location.getLocation();
//
//     setState(() {
//       _currentPosition = LatLng(_locationData.latitude!, _locationData.longitude!);
//       _locationLoaded = true;
//       _mapController.move(_currentPosition, 15.0);
//     });
//   }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: acrylicAny(
        blurlevel: 6,
        child: Container(
          width: MediaQuery.of(context).size.width - 16,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 25),
          height: MediaQuery.of(context).size.height * 0.85,
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
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(32),bottomLeft: Radius.circular(32), )
                  ),
                  child: FlutterMap(
                    mapController: _mapController,
                    options: MapOptions(
                      // initialCenter: _currentPosition,
                      // initialZoom: 15.0,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                        subdomains: ['a', 'b', 'c'],
                        additionalOptions: {
                          'access_token': 'YOUR_ACCESS_TOKEN',
                          'id': 'mapbox/streets-v11', // Change to your desired style
                        },
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: _currentPosition,
                            width: 25,
                            height: 36,
                            child: Stack(children: [

                              SvgPicture.asset(Images.map_LocatonIndicator,height: 40,width: 40,),
                              Positioned(
                                  top: 7,
                                  left: 6,
                                  child: SvgPicture.asset(Images.areena,height: 12,width: 12,)),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ) // : Center(child: CircularProgressIndicator(color: AppColors.blue)),
              ],

            ),
          ),
        ),
      ),
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
