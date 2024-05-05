import 'notifier/frame_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_text_form_field.dart';

class FrameScreen extends ConsumerStatefulWidget {
  const FrameScreen({Key? key}) : super(key: key);

  @override
  FrameScreenState createState() => FrameScreenState();
}

class FrameScreenState extends ConsumerState<FrameScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 29.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft,
                                  height: 17.v,
                                  width: 10.h,
                                  margin: EdgeInsets.symmetric(vertical: 6.v),
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              Padding(
                                  padding: EdgeInsets.only(left: 9.h),
                                  child: Text("lbl_tickets".tr,
                                      style: theme.textTheme.titleLarge))
                            ])),
                        SizedBox(height: 43.v),
                        Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Row(children: [
                              Text("lbl_de".tr,
                                  style:
                                      CustomTextStyles.titleLargeBlack90002_1),
                              Padding(
                                  padding: EdgeInsets.only(left: 168.h),
                                  child: Text("lbl_a".tr,
                                      style: CustomTextStyles
                                          .titleLargeBlack90002_1))
                            ])),
                        SizedBox(height: 12.v),
                        _buildColobaneValueRow(context),
                        SizedBox(height: 17.v),
                        Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text("lbl_date".tr,
                                style:
                                    CustomTextStyles.titleLargeBlack90002_1)),
                        SizedBox(height: 12.v),
                        _buildSixtyThreeRow(context),
                        SizedBox(height: 150.v),
                        _buildSixtySevenColumn(context)
                      ])))
                ]))));
  }

  /// Section Widget
  Widget _buildColobaneValueRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(right: 15.h),
                      child: Consumer(builder: (context, ref, _) {
                        return CustomTextFormField(
                            controller: ref
                                .watch(frameNotifier)
                                .colobanevalueController,
                            hintText: "lbl_colobane".tr,
                            hintStyle:
                                CustomTextStyles.titleLargeInterBlack90002,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillBlueGray,
                            fillColor: appTheme.blueGray50);
                      }))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Consumer(builder: (context, ref, _) {
                        return CustomTextFormField(
                            controller:
                                ref.watch(frameNotifier).pNRvalueController,
                            hintText: "lbl_pnr".tr,
                            hintStyle:
                                CustomTextStyles.titleLargeInterBlack90002,
                            textInputAction: TextInputAction.done,
                            borderDecoration:
                                TextFormFieldStyleHelper.fillBlueGray,
                            fillColor: appTheme.blueGray50);
                      })))
            ])));
  }

  /// Section Widget
  Widget _buildSixtyThreeRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 27.h),
            padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(mainAxisSize: MainAxisSize.max, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCalendar,
                  height: 26.v,
                  width: 23.h,
                  margin: EdgeInsets.symmetric(vertical: 6.v)),
              Padding(
                  padding: EdgeInsets.only(left: 76.h, top: 8.v),
                  child: Text("lbl_jj_mm_aa".tr,
                      style: CustomTextStyles.titleLargeBlack90002Regular_1))
            ])));
  }

  /// Section Widget
  Widget _buildSixtySevenColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 32.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup67), fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUpPrimary33x31,
              height: 33.v,
              width: 31.h),
          SizedBox(height: 42.v),
          _buildNineHundredFourteenThousandNinRow(context,
              nineHundredFourteenThousandNin: "lbl_7_30_7_59".tr,
              timeText: "lbl_29_min".tr,
              fcfaCounterText: "lbl_1000_fcfa".tr, onTapFcfaCounter: () {
            onTapFcfaCounter(context);
          }),
          SizedBox(height: 30.v),
          _buildNineHundredFourteenThousandNinRow(context,
              nineHundredFourteenThousandNin: "lbl_9_14_9_43".tr,
              timeText: "lbl_29_min".tr,
              fcfaCounterText: "lbl_1000_fcfa".tr, onTapFcfaCounter: () {
            onTapFcfaCounter1(context);
          }),
          SizedBox(height: 30.v),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 8.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_11_20".tr,
                                    style: CustomTextStyles
                                        .titleLargeff010000Regular),
                                TextSpan(
                                    text: "lbl".tr,
                                    style: CustomTextStyles.titleLarge49010000),
                                TextSpan(
                                    text: "lbl_11_49".tr,
                                    style: CustomTextStyles
                                        .titleLargeff010000Regular)
                              ]),
                              textAlign: TextAlign.left),
                          SizedBox(height: 5.v),
                          _buildElevenMillionTwoHundredOneThouClockRow(context,
                              timeText: "lbl_29_min".tr)
                        ])),
                CustomElevatedButton(
                    width: 128.h,
                    text: "lbl_1000_fcfa".tr,
                    margin: EdgeInsets.only(bottom: 3.v),
                    onPressed: () {
                      onTapFcfa(context);
                    })
              ]),
          SizedBox(height: 21.v)
        ]));
  }

  /// Common widget
  Widget _buildNineHundredFourteenThousandNinRow(
    BuildContext context, {
    required String nineHundredFourteenThousandNin,
    required String timeText,
    required String fcfaCounterText,
    Function? onTapFcfaCounter,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "lbl_9_14".tr,
                      style: CustomTextStyles.titleLargeff010000),
                  TextSpan(
                      text: "lbl".tr,
                      style: CustomTextStyles.titleLarge49010000Regular),
                  TextSpan(
                      text: "lbl_9_43".tr,
                      style: CustomTextStyles.titleLargeff010000)
                ]),
                textAlign: TextAlign.left),
            SizedBox(height: 4.v),
            Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(top: 5.v, bottom: 4.v)),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(timeText,
                      style: CustomTextStyles.bodyLargeBlack90002.copyWith(
                          color: appTheme.black90002.withOpacity(0.65))))
            ])
          ])),
      GestureDetector(
          onTap: () {
            onTapFcfaCounter!.call();
          },
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 14.v),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Text(fcfaCounterText,
                  style: CustomTextStyles.titleLargeWhiteA70001Bold
                      .copyWith(color: appTheme.whiteA70001))))
    ]);
  }

  /// Common widget
  Widget _buildElevenMillionTwoHundredOneThouClockRow(
    BuildContext context, {
    required String timeText,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgClock,
          height: 15.adaptSize,
          width: 15.adaptSize,
          margin: EdgeInsets.only(top: 5.v, bottom: 4.v)),
      Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(timeText,
              style: CustomTextStyles.bodyLargeBlack90002
                  .copyWith(color: appTheme.black90002.withOpacity(0.65))))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the ticketsDetailsScreen when the action is triggered.
  onTapFcfaCounter(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ticketsDetailsScreen,
    );
  }

  /// Navigates to the ticketsDetailsScreen when the action is triggered.
  onTapFcfaCounter1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ticketsDetailsScreen,
    );
  }

  /// Navigates to the ticketsDetailsScreen when the action is triggered.
  onTapFcfa(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ticketsDetailsScreen,
    );
  }
}
