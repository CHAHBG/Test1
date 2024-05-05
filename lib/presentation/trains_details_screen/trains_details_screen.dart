import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';

class TrainsDetailsScreen extends ConsumerStatefulWidget {
  const TrainsDetailsScreen({Key? key}) : super(key: key);

  @override
  TrainsDetailsScreenState createState() => TrainsDetailsScreenState();
}

class TrainsDetailsScreenState extends ConsumerState<TrainsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: 882.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle453,
                      height: 516.v,
                      width: 428.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 28.h, vertical: 37.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup67),
                                  fit: BoxFit.cover)),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgArrowLeft,
                                      height: 17.v,
                                      width: 10.h,
                                      margin: EdgeInsets.only(
                                          top: 5.v, bottom: 6.v),
                                      onTap: () {
                                        onTapImgArrowLeft(context);
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("lbl_kts_mda_1122".tr,
                                          style: CustomTextStyles
                                              .titleLargeBlack90002_2))
                                ])),
                            SizedBox(height: 3.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 21.h),
                                    child: Text("lbl_dakar_aibd".tr,
                                        style: CustomTextStyles
                                            .bodyLargeBlack90002_5))),
                            SizedBox(height: 51.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 21.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_7_30".tr,
                                          style: CustomTextStyles
                                              .titleLargeBlack90002Bold),
                                      Text("lbl_7_59".tr,
                                          style: CustomTextStyles
                                              .titleLargeBlack90002Bold)
                                    ])),
                            SizedBox(height: 4.v),
                            SizedBox(
                                height: 32.v,
                                width: 301.h,
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLinkedin,
                                          height: 30.v,
                                          width: 23.h,
                                          alignment: Alignment.bottomLeft),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 6.v),
                                              child: Container(
                                                  height: 7.v,
                                                  width: 268.h,
                                                  decoration: BoxDecoration(
                                                      color: appTheme.gray400),
                                                  child: ClipRRect(
                                                      child: LinearProgressIndicator(
                                                          value: 0.14,
                                                          backgroundColor:
                                                              appTheme.gray400,
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                      Color>(
                                                                  theme
                                                                      .colorScheme
                                                                      .primary)))))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 26.h, top: 2.v),
                                          child: CustomIconButton(
                                              height: 27.adaptSize,
                                              width: 27.adaptSize,
                                              padding: EdgeInsets.all(2.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillPrimaryTL13,
                                              alignment: Alignment.topLeft,
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgCarWhiteA70001))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgLinkedinPrimary,
                                          height: 30.v,
                                          width: 23.h,
                                          alignment: Alignment.topRight)
                                    ])),
                            SizedBox(height: 23.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 14.h, right: 21.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_colobane".tr,
                                          style: CustomTextStyles
                                              .titleLargeBlack90002Regular),
                                      Text("lbl_pnr".tr,
                                          style: CustomTextStyles
                                              .titleLargeBlack90002Regular)
                                    ])),
                            SizedBox(height: 36.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 45.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomIconButton(
                                              height: 126.v,
                                              width: 98.h,
                                              padding: EdgeInsets.all(32.h),
                                              decoration: IconButtonStyleHelper
                                                  .outlineBlackTL10,
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgIconParkSolidBabyCarSeatGray400)),
                                          Container(
                                              margin:
                                                  EdgeInsets.only(left: 63.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 17.h,
                                                  vertical: 6.v),
                                              decoration: AppDecoration
                                                  .outlineBlack900026
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 17.h),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "lbl_22"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleMediumffc4c4c4),
                                                                  TextSpan(
                                                                      text: "lbl_nd"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .titleMediumffc4c4c4)
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left)),
                                                    Text("lbl_classe".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumGray400),
                                                    SizedBox(height: 9.v),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgUserGray400,
                                                        height: 24.v,
                                                        width: 20.h,
                                                        alignment:
                                                            Alignment.center),
                                                    SizedBox(height: 32.v)
                                                  ]))
                                        ]))),
                            SizedBox(height: 59.v),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 100.h),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                          height: 50.v,
                                          width: 40.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12.h, vertical: 23.v),
                                          decoration: AppDecoration.fillPrimary
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL10),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorWhiteA700012x16,
                                              height: 2.v,
                                              width: 16.h,
                                              alignment:
                                                  Alignment.bottomCenter)),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 11.v, bottom: 8.v),
                                          child: Text("lbl_16".tr,
                                              style: CustomTextStyles
                                                  .titleLargeBlack90002Regular_1)),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgTelevisionPrimary22x22,
                                          height: 22.adaptSize,
                                          width: 22.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 8.h,
                                              top: 14.v,
                                              bottom: 13.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 21.h),
                                          child: CustomIconButton(
                                              height: 50.v,
                                              width: 38.h,
                                              padding: EdgeInsets.all(11.h),
                                              decoration: IconButtonStyleHelper
                                                  .fillPrimaryLR10,
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgClose)))
                                    ])),
                            SizedBox(height: 45.v),
                            Text("lbl_1000_fcfa".tr,
                                style:
                                    CustomTextStyles.headlineSmallBlack90002_1),
                            SizedBox(height: 58.v),
                            CustomElevatedButton(
                                width: 250.h,
                                text: "msg_acheter_un_ticket".tr,
                                onPressed: () {
                                  onTapAcheterUnTicket(context);
                                }),
                            SizedBox(height: 31.v)
                          ])))
                ]))));
  }

  /// Navigates to the trainsThreeScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trainsThreeScreen,
    );
  }

  /// Navigates to the ticketsDetailsScreen when the action is triggered.
  onTapAcheterUnTicket(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ticketsDetailsScreen,
    );
  }
}
