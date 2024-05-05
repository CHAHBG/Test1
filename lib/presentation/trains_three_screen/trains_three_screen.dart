import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';

class TrainsThreeScreen extends ConsumerStatefulWidget {
  const TrainsThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TrainsThreeScreenState createState() => TrainsThreeScreenState();
}

class TrainsThreeScreenState extends ConsumerState<TrainsThreeScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 882.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 120.v,
                  width: 372.h,
                  margin: EdgeInsets.only(bottom: 242.v),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(0.13),
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.black90002.withOpacity(0.08),
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 482.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle452,
                        height: 482.v,
                        width: 428.h,
                        alignment: Alignment.center,
                      ),
                      _buildMapSection(context),
                    ],
                  ),
                ),
              ),
              _buildTrainDetailsSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 232.v,
      width: double.maxFinite,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildTrainDetailsSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 46.v),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup23,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 19.v),
            Padding(
              padding: EdgeInsets.only(left: 38.h),
              child: Row(
                children: [
                  Text(
                    "lbl_de2".tr,
                    style: CustomTextStyles.titleMediumBlack90002,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 67.h),
                    child: Text(
                      "lbl_colobane".tr,
                      style: CustomTextStyles.bodyLargeBlack90002_5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 6.v),
            Container(
              height: 4.adaptSize,
              width: 4.adaptSize,
              margin: EdgeInsets.only(left: 43.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
            ),
            SizedBox(height: 4.v),
            Container(
              height: 4.adaptSize,
              width: 4.adaptSize,
              margin: EdgeInsets.only(left: 43.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
            ),
            SizedBox(height: 3.v),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 293.h,
                child: Divider(
                  color: appTheme.black90002.withOpacity(0.5),
                ),
              ),
            ),
            Container(
              height: 4.adaptSize,
              width: 4.adaptSize,
              margin: EdgeInsets.only(left: 43.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
            ),
            SizedBox(height: 4.v),
            Container(
              height: 4.adaptSize,
              width: 4.adaptSize,
              margin: EdgeInsets.only(left: 43.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
            ),
            SizedBox(height: 7.v),
            Padding(
              padding: EdgeInsets.only(left: 40.h),
              child: Row(
                children: [
                  Text(
                    "lbl_a2".tr,
                    style: CustomTextStyles.titleMediumBlack90002,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 76.h),
                    child: Text(
                      "lbl_pnr".tr,
                      style: CustomTextStyles.bodyLargeBlack90002_5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 43.v),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.fillPrimary3,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCarbonTrain2,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 7.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 7.h,
                      top: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 219.h,
                          margin: EdgeInsets.only(left: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_kts_mda_1122".tr,
                                style: CustomTextStyles.titleMediumBlack90002,
                              ),
                              Text(
                                "lbl_colobane".tr,
                                style: CustomTextStyles.bodyLargeBlack90002_5,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgFluentPeopleQueue20Filled,
                              height: 20.v,
                              width: 21.h,
                              margin: EdgeInsets.only(bottom: 4.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text(
                                "msg_dans_la_plateforme".tr,
                                style: CustomTextStyles.bodyLargeBlack90002_5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 17.v,
                      right: 8.h,
                      bottom: 17.v,
                    ),
                    child: CustomIconButton(
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.outlineBlackTL15,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRightPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 17.v),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 28.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCarbonTrain2,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          margin: EdgeInsets.only(top: 2.v),
                        ),
                        Container(
                          height: 48.v,
                          width: 178.h,
                          margin: EdgeInsets.only(
                            left: 7.h,
                            bottom: 4.v,
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Text(
                                    "lbl_mda_alt_8742".tr,
                                    style:
                                        CustomTextStyles.titleMediumBlack90002,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "lbl_pnr".tr,
                                  style: CustomTextStyles.bodyLargeBlack90002_5,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: Text(
                                    "msg_arrive_dans_30_mn2".tr,
                                    style:
                                        CustomTextStyles.bodyLargeBlack90002_5,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant
                                    .imgFluentPeopleQueue20FilledRedA700,
                                height: 20.v,
                                width: 21.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 2.v),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.v,
                        bottom: 12.v,
                      ),
                      child: CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.outlineBlackTL15,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowRightPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
