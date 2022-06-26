import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_app/constants/exports.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        const Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(30.587968, 60.814708),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Stack(
          children: [
            SizedBox(
              height: screenHeight(context),
              width: screenWidth(context),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                markers: _markers,
                zoomControlsEnabled: false,
                initialCameraPosition: const CameraPosition(
                  target: LatLng(30.587968, 60.814708),
                  //zoom: 5,
                ),
              ),
            ),
            SafeArea(
              child: SizedBox(
                height: 80.0,
                width: screenWidth(context),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tampines',
                        style: poppinsBold.copyWith(
                          fontSize: 30.0,
                          color: AppColors.blackColor,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(8.0),
                          child: Ink(
                            height: 55.0,
                            width: 55.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: AppColors.whiteColor,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.settings,
                                color: AppColors.blackColor,
                                size: 36.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.13),
                    child: CustomButton(
                      onTap: () {},
                      btnText: 'Search',
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(8.0),
                      child: Ink(
                        height: 64.0,
                        width: 64.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: AppColors.blackColor,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.chat_bubble,
                            color: AppColors.whiteColor,
                            size: 36.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
