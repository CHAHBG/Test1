import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_drop_down.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';
import 'package:firebase_database/firebase_database.dart';

import '../consts.dart';

class TrainsDarkScreen extends ConsumerStatefulWidget {
  const TrainsDarkScreen({Key? key}) : super(key: key);

  static const LatLng _pGooglePlex = LatLng(14.675485, -17.433429);
  static const LatLng _pApplePark = LatLng(14.675485, -17.433429);

  @override
  TrainsDarkScreenState createState() => TrainsDarkScreenState();
}

class TrainsDarkScreenState extends ConsumerState<TrainsDarkScreen> {
  Completer<GoogleMapController> googleMapController = Completer();
  Location _locationController = Location();
  LatLng? _currentP;
  final Map<PolylineId, Polyline> polylines = {};
  final DatabaseReference _stationsRef =
  FirebaseDatabase.instance.reference().child('Stations');
  Marker? _fromMarker;
  Marker? _toMarker;

  List<SelectionPopupModel> fromItems = [
    SelectionPopupModel(title: "Dakar"),
    SelectionPopupModel(title: "Colobane"),
    SelectionPopupModel(title: "Hann"),
    SelectionPopupModel(title: "Dalifort"),
    SelectionPopupModel(title: "Beaux Maraichers"),
    SelectionPopupModel(title: "Thiaroye"),
    SelectionPopupModel(title: "Pikine"),
    SelectionPopupModel(title: "Yembeul"),
    SelectionPopupModel(title: "Keur Mbaye Fall"),
    SelectionPopupModel(title: "PNR"),
    SelectionPopupModel(title: "Rufisque"),
    SelectionPopupModel(title: "Bargny"),
    SelectionPopupModel(title: "Diamniadio"),
    SelectionPopupModel(title: "AIBD"),
  ];

  List<SelectionPopupModel> toItems = [
    SelectionPopupModel(title: "Dakar"),
    SelectionPopupModel(title: "Colobane"),
    SelectionPopupModel(title: "Hann"),
    SelectionPopupModel(title: "Dalifort"),
    SelectionPopupModel(title: "Beaux Maraichers"),
    SelectionPopupModel(title: "Thiaroye"),
    SelectionPopupModel(title: "Pikine"),
    SelectionPopupModel(title: "Yembeul"),
    SelectionPopupModel(title: "Keur Mbaye Fall"),
    SelectionPopupModel(title: "PNR"),
    SelectionPopupModel(title: "Rufisque"),
    SelectionPopupModel(title: "Bargny"),
    SelectionPopupModel(title: "Diamniadio"),
    SelectionPopupModel(title: "AIBD"),
  ];

  SelectionPopupModel selectedFrom = SelectionPopupModel(title: "Dakar");
  SelectionPopupModel selectedTo = SelectionPopupModel(title: "Dakar");

  @override
  void initState() {
    super.initState();
    getLocationUpdates().then(
          (_) {
        getPolylinePoints().then((coordinates) {
          generatePolyLineFromPoints(coordinates);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 882.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top -
                          350.v, // Adjust the value (350.v) as needed
                      width: double.maxFinite,
                      child: GoogleMap(
                        mapType: MapType.normal,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(
                            14.675485,
                            -17.433429,
                          ),
                          zoom: 14.4746,
                        ),
                        onMapCreated: (GoogleMapController controller) {
                          googleMapController.complete(controller);
                        },
                        zoomControlsEnabled: false,
                        zoomGesturesEnabled: false,
                        myLocationButtonEnabled: false,
                        myLocationEnabled: false,
                        markers: {
                          if (_currentP != null)
                            Marker(
                              markerId: MarkerId("_currentLocation"),
                              icon: BitmapDescriptor.defaultMarker,
                              position: _currentP!,
                            ),
                          if (_fromMarker != null) _fromMarker!,
                          if (_toMarker != null) _toMarker!,
                        },
                        polylines: Set<Polyline>.of(polylines.values),
                      ),
                    ),
                  ),
                  _buildTrainsSection(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTrainsSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 75.v),
        decoration: AppDecoration.outlineBlack900022.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 372.h,
              margin: EdgeInsets.symmetric(horizontal: 28.h),
              padding: EdgeInsets.all(11.h),
              decoration: AppDecoration.outlineBlack900023.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Row(
                    children: [
                      Text(
                        "lbl_from".tr,
                        style: CustomTextStyles.titleLargeWhiteA70001,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 41.h),
                          child: CustomDropDown(
                            items: fromItems,
                            onChanged: (SelectionPopupModel value) {
                              setState(() {
                                selectedFrom = value;
                                _onFromSelected(value);
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 5.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 5.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.center,
                    child: Divider(
                      color: appTheme.whiteA70001.withOpacity(0.5),
                      indent: 28.h,
                      endIndent: 29.h,
                    ),
                  ),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 5.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    height: 4.adaptSize,
                    width: 4.adaptSize,
                    margin: EdgeInsets.only(left: 5.h),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(
                      children: [
                        Text(
                          "lbl_to".tr,
                          style: CustomTextStyles.titleLargeWhiteA70001,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 64.h),
                            child: CustomDropDown(
                              items: toItems,
                              onChanged: (SelectionPopupModel value) {
                                setState(() {
                                  selectedTo = value;
                                  _onToSelected(value);
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.v),
          ],
        ),
      ),
    );
  }

  Future<void> getLocationUpdates() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    _serviceEnabled = await _locationController.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await _locationController.requestService();
    }
    if (!_serviceEnabled) {
      return;
    }

    _permissionGranted = await _locationController.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _locationController.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationController.onLocationChanged.listen((LocationData currentLocation) {
      if (currentLocation.latitude != null && currentLocation.longitude != null) {
        setState(() {
          _currentP = LatLng(currentLocation.latitude!, currentLocation.longitude!);
          _cameraToPosition(_currentP!);
        });
      }
    });
  }

  Future<void> _cameraToPosition(LatLng pos) async {
    final GoogleMapController controller = await googleMapController.future;
    CameraPosition _newCameraPosition = CameraPosition(
      target: pos,
      zoom: 13,
    );
    await controller.animateCamera(CameraUpdate.newCameraPosition(_newCameraPosition));
  }

  Future<List<LatLng>> getPolylinePoints() async {
    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      GOOGLE_MAPS_API_KEY,
      PointLatLng(TrainsDarkScreen._pGooglePlex.latitude, TrainsDarkScreen._pGooglePlex.longitude),
      PointLatLng(TrainsDarkScreen._pApplePark.latitude, TrainsDarkScreen._pApplePark.longitude),
      travelMode: TravelMode.driving,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    } else {
      print(result.errorMessage);
    }
    return polylineCoordinates;
  }

  void generatePolyLineFromPoints(List<LatLng> polylineCoordinates) {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.black,
      points: polylineCoordinates,
      width: 8,
    );
    setState(() {
      polylines[id] = polyline;
    });
  }

  Future<Map<String, dynamic>> getStationCoordinates(String stationName) async {
    DataSnapshot snapshot = (await _stationsRef.child(stationName).once()) as DataSnapshot;

    if (snapshot.value != null && snapshot.value is Map<String, dynamic>) {
      Map<String, dynamic> values = snapshot.value as Map<String, dynamic>;
      return {
        'latitude': values['Latitude'],
        'longitude': values['Longitude'],
      };
    }

    return {};
  }


  void _onFromSelected(SelectionPopupModel station) async {
    Map<String, dynamic> coordinates = await getStationCoordinates(station.title);

    if (coordinates.isNotEmpty) {
      LatLng position = LatLng(coordinates['latitude'], coordinates['longitude']);
      setState(() {
        _fromMarker = Marker(
          markerId: MarkerId('from'),
          position: position,
          infoWindow: InfoWindow(title: 'From: ${station.title}'),
        );
      });
    }
  }

  void _onToSelected(SelectionPopupModel station) async {
    Map<String, dynamic> coordinates = await getStationCoordinates(station.title);

    if (coordinates.isNotEmpty) {
      LatLng position = LatLng(coordinates['latitude'], coordinates['longitude']);
      setState(() {
        _toMarker = Marker(
          markerId: MarkerId('to'),
          position: position,
          infoWindow: InfoWindow(title: 'To: ${station.title}'),
        );
      });
    }
  }
}
