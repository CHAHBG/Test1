import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class BeginScreen extends ConsumerStatefulWidget {
  const BeginScreen({Key? key}) : super(key: key);

  @override
  BeginScreenState createState() => BeginScreenState();
}

class BeginScreenState extends ConsumerState<BeginScreen> {
  @override
  void initState() {
    super.initState();
    // Start a 2-second timer to navigate to MailOrMessageScreen
    Timer(Duration(seconds: 2), () {
      NavigatorService.pushNamed(AppRoutes.mailOrMessageScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 58.h, top: 306.v, right: 58.h),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse10,
                height: 175.v,
                width: 286.h,
                alignment: Alignment.topRight,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse113,
                height: 175.v,
                width: 286.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 26.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
