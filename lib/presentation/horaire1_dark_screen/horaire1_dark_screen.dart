import 'notifier/horaire1_dark_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_drop_down.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';

class Horaire1DarkScreen extends ConsumerStatefulWidget {
  const Horaire1DarkScreen({Key? key}) : super(key: key);

  @override
  Horaire1DarkScreenState createState() => Horaire1DarkScreenState();
}

class Horaire1DarkScreenState extends ConsumerState<Horaire1DarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 29.v),
                child: Column(children: [
                  _buildArrowLeftRow(context),
                  SizedBox(height: 88.v),
                  _buildHalteDeDPartRow(context),
                  SizedBox(height: 39.v),
                  _buildHeureDeDPartRow(context),
                  SizedBox(height: 29.v),
                  _buildHeureDArriveRow(context),
                  SizedBox(height: 72.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_date".tr,
                          style: CustomTextStyles.titleLargeWhiteA70001_1)),
                  SizedBox(height: 12.v),
                  _buildNinetyNineRow(context),
                  SizedBox(height: 59.v),
                  GestureDetector(
                    onTap: () {
                      NavigatorService.pushNamed(
                        AppRoutes.ticketsDarkScreen,
                      );
                    },
                    child: CustomElevatedButton(
                        width: 250.h, text: "msg_chercher_un_train".tr),
                  ),
                  SizedBox(height: 5.v)
                ]))));
  }


  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                child:
                    Text("lbl_horaires".tr, style: theme.textTheme.titleLarge))
          ]),
          CustomImageView(
              imagePath: ImageConstant.imgQrcode,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(top: 6.v, bottom: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildHalteDeDPartRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 18.v, bottom: 1.v),
              child: Text("msg_halte_de_d_part".tr,
                  style: CustomTextStyles.titleLargeWhiteA70001_1)),
          Consumer(builder: (context, ref, _) {
            return CustomDropDown(
                width: 172.h,
                hintText: "lbl_selectionner".tr,
                items: ref
                        .watch(horaire1DarkNotifier)
                        .horaire1DarkModelObj
                        ?.dropdownItemList ??
                    [],
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.v),
                borderDecoration: DropDownStyleHelper.fillBlueGrayTL10,
                fillColor: appTheme.blueGray90001,
                onChanged: (value) {
                  ref.watch(horaire1DarkNotifier).selectedDropDownValue = value;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildHeureDeDPartRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 19.v, bottom: 13.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_heure_de_d_part".tr,
                        style: CustomTextStyles.titleLargeWhiteA70001_1),
                    SizedBox(height: 113.v),
                    Text("lbl_halte_d_arriv".tr,
                        style: CustomTextStyles.titleLargeWhiteA70001_1)
                  ])),
          SizedBox(
              height: 206.v,
              width: 172.h,
              child: Stack(alignment: Alignment.topCenter, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        width: 172.h,
                        margin: EdgeInsets.only(top: 23.v),
                        padding: EdgeInsets.symmetric(vertical: 22.v),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                            image: DecorationImage(
                                image: fs.Svg(ImageConstant.imgGroup312),
                                fit: BoxFit.cover)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 113.v, bottom: 2.v),
                                  child: Text("lbl_selectionner".tr,
                                      style: CustomTextStyles
                                          .bodyLargeWhiteA7000116)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowDownPrimary,
                                  height: 8.v,
                                  width: 16.h,
                                  margin: EdgeInsets.only(top: 130.v))
                            ]))),
                Consumer(builder: (context, ref, _) {
                  return CustomDropDown(
                      width: 172.h,
                      hintText: "lbl_selectionner".tr,
                      alignment: Alignment.topCenter,
                      items: ref
                              .watch(horaire1DarkNotifier)
                              .horaire1DarkModelObj
                              ?.dropdownItemList1 ??
                          [],
                      borderDecoration: DropDownStyleHelper.fillBlueGrayTL10,
                      fillColor: appTheme.blueGray90001,
                      onChanged: (value) {
                        ref.watch(horaire1DarkNotifier).selectedDropDownValue1 =
                            value;
                      });
                })
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildHeureDArriveRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 17.v, bottom: 12.v),
              child: Text("msg_heure_d_arriv_e".tr,
                  style: CustomTextStyles.titleLargeWhiteA70001_1)),
          SizedBox(
              height: 60.v,
              width: 172.h,
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgArrowDownLightBlueA700,
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
                              .watch(horaire1DarkNotifier)
                              .horaire1DarkModelObj
                              ?.dropdownItemList2 ??
                          [],
                      borderDecoration: DropDownStyleHelper.fillBlueGrayTL10,
                      fillColor: appTheme.blueGray90001,
                      onChanged: (value) {
                        ref.watch(horaire1DarkNotifier).selectedDropDownValue2 =
                            value;
                      });
                })
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildNinetyNineRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
        decoration: AppDecoration.fillBluegray90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgCalendarWhiteA70001,
              height: 26.v,
              width: 23.h,
              margin: EdgeInsets.symmetric(vertical: 6.v)),
          Padding(
              padding: EdgeInsets.only(left: 76.h, top: 8.v),
              child: Text("lbl_jj_mm_aa".tr,
                  style: CustomTextStyles.titleLargeWhiteA70001Regular))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}

