import 'dart:async';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_leading_image.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_title.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/custom_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'notifier/stations_notifier.dart';

class StationsScreen extends ConsumerStatefulWidget {
  const StationsScreen({Key? key}) : super(key: key);

  @override
  StationsScreenState createState() => StationsScreenState();
}

class StationsScreenState extends ConsumerState {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
  }

  Future<void> _requestLocationPermission() async {
    if (await Permission.location.request().isGranted) {
      // Permission is granted, do something
    } else {
      // Permission is denied, handle it accordingly
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Remove the Padding widget containing the text
              SizedBox(height: 18.v),
              Expanded(
                // Adjust the padding of the Container
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: WebView(
                    initialUrl: 'https://umap.openstreetmap.fr/fr/map/ter-chemin-et-gares_1061784',
                    onWebViewCreated: (WebViewController webViewController) {
                      _controller.complete(webViewController);
                    },
                    javascriptMode: JavascriptMode.unrestricted,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 38.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 28.h, top: 21.v, bottom: 17.v),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      title: AppbarTitle(
        text: "lbl_stations".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
    );
  }

  void onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  void onTapTxtDakarTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.stationDetailsScreen,
    );
  }
}
