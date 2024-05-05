import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class CarteDarkScreen extends ConsumerStatefulWidget {
  const CarteDarkScreen({Key? key}) : super(key: key);

  @override
  CarteDarkScreenState createState() => CarteDarkScreenState();
}

class CarteDarkScreenState extends ConsumerState<CarteDarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90002,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 90.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeftPrimary,
                          height: 19.v,
                          width: 10.h,
                          margin: EdgeInsets.only(left: 11.h),
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      Spacer(flex: 37),
                      _buildComponentThree(context),
                      Spacer(flex: 62)
                    ]))));
  }

  /// Section Widget
  Widget _buildComponentThree(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 54.v),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder10,
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgComponent3),
                fit: BoxFit.cover)),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_awa_toure2".tr,
                  style:
                      CustomTextStyles.headlineSmallAbyssinicaSILWhiteA70001),
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.only(right: 196.h),
                  child: Row(children: [
                    Text("lbl_2002".tr,
                        style: CustomTextStyles.bodyLargeAdobeBlankWhiteA70001),
                    Spacer(flex: 33),
                    Text("lbl_1990".tr,
                        style: CustomTextStyles.bodyLargeAdobeBlankWhiteA70001),
                    Spacer(flex: 33),
                    Text("lbl_5005".tr,
                        style: CustomTextStyles.bodyLargeAdobeBlankWhiteA70001),
                    Spacer(flex: 33),
                    Text("lbl_3003".tr,
                        style: CustomTextStyles.bodyLargeAdobeBlankWhiteA70001)
                  ])),
              SizedBox(height: 7.v)
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
