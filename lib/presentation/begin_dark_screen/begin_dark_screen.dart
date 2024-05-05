import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class BeginDarkScreen extends ConsumerStatefulWidget {
  const BeginDarkScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BeginDarkScreenState createState() => BeginDarkScreenState();
}

class BeginDarkScreenState extends ConsumerState<BeginDarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black90002,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              SizedBox(
                height: 226.v,
                width: 283.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 138.v,
                        width: 185.h,
                        margin: EdgeInsets.only(top: 30.v),
                        decoration: BoxDecoration(
                          color: appTheme.black90002,
                          borderRadius: BorderRadius.circular(
                            69.h,
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage4,
                      height: 226.v,
                      width: 283.h,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
