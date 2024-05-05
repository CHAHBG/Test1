import 'notifier/schedule_two_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_leading_image.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_title.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ibrahima_s_application_seter/widgets/app_bar/custom_app_bar.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_drop_down.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class ScheduleTwoScreen extends ConsumerStatefulWidget {
  const ScheduleTwoScreen({Key? key}) : super(key: key);

  @override
  ScheduleTwoScreenState createState() => ScheduleTwoScreenState();
}

class ScheduleTwoScreenState extends ConsumerState<ScheduleTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 56.v),
                child: Column(children: [
                  SizedBox(height: 18.v),
                  _buildDepartureStop(context),
                  SizedBox(height: 30.v),
                  _buildDepartureTime(context),
                  SizedBox(height: 86.v),
                  _buildArrivalStop(context),
                  SizedBox(height: 29.v),
                  _buildArrivalTime(context),
                  SizedBox(height: 72.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_date".tr,
                          style: CustomTextStyles.titleLargeBlack90002_1)),
                  SizedBox(height: 12.v),
                  _buildDate(context),
                  SizedBox(height: 59.v),
                  CustomElevatedButton(
                      width: 250.h, text: "msg_chercher_un_train".tr)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 38.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 28.h, top: 19.v, bottom: 19.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_horaires".tr, margin: EdgeInsets.only(left: 10.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgQrcode,
              margin: EdgeInsets.fromLTRB(28.h, 19.v, 28.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildDepartureStop(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 19.v, bottom: 10.v),
              child: Text("msg_halte_de_d_part".tr,
                  style: CustomTextStyles.titleLargeBlack90002_1)),
          Consumer(builder: (context, ref, _) {
            return CustomDropDown(
                width: 172.h,
                hintText: "lbl_selectionner".tr,
                items: ref
                        .watch(scheduleTwoNotifier)
                        .scheduleTwoModelObj
                        ?.dropdownItemList ??
                    [],
                onChanged: (value) {
                  ref.watch(scheduleTwoNotifier).selectedDropDownValue = value;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildDepartureTime(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 19.v, bottom: 10.v),
              child: Text("msg_heure_de_d_part".tr,
                  style: CustomTextStyles.titleLargeBlack90002_1)),
          Consumer(builder: (context, ref, _) {
            return CustomDropDown(
                width: 172.h,
                hintText: "lbl_selectionner".tr,
                items: ref
                        .watch(scheduleTwoNotifier)
                        .scheduleTwoModelObj
                        ?.dropdownItemList1 ??
                    [],
                onChanged: (value) {
                  ref.watch(scheduleTwoNotifier).selectedDropDownValue1 = value;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildArrivalStop(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 16.v, bottom: 13.v),
              child: Text("lbl_halte_d_arriv".tr,
                  style: CustomTextStyles.titleLargeBlack90002_1)),
          Consumer(builder: (context, ref, _) {
            return CustomDropDown(
                width: 172.h,
                hintText: "lbl_selectionner".tr,
                items: ref
                        .watch(scheduleTwoNotifier)
                        .scheduleTwoModelObj
                        ?.dropdownItemList2 ??
                    [],
                onChanged: (value) {
                  ref.watch(scheduleTwoNotifier).selectedDropDownValue2 = value;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildArrivalTime(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 17.v, bottom: 12.v),
              child: Text("msg_heure_d_arriv_e".tr,
                  style: CustomTextStyles.titleLargeBlack90002_1)),
          SizedBox(
              height: 60.v,
              width: 172.h,
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 8.v,
                    width: 16.h,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 10.h)),
                Consumer(builder: (context, ref, _) {
                  return CustomDropDown(
                      width: 172.h,
                      hintText: "lbl_selectionner".tr,
                      alignment: Alignment.center,
                      items: ref
                              .watch(scheduleTwoNotifier)
                              .scheduleTwoModelObj
                              ?.dropdownItemList3 ??
                          [],
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 18.h, vertical: 19.v),
                      onChanged: (value) {
                        ref.watch(scheduleTwoNotifier).selectedDropDownValue3 =
                            value;
                      });
                })
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgCalendar,
              height: 26.v,
              width: 23.h,
              margin: EdgeInsets.symmetric(vertical: 6.v)),
          Padding(
              padding: EdgeInsets.only(left: 76.h, top: 8.v),
              child: Text("lbl_jj_mm_aa".tr,
                  style: CustomTextStyles.titleLargeBlack90002Regular_1))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
