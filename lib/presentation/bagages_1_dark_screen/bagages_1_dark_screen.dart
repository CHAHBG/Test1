import 'notifier/bagages_1_dark_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_drop_down.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_text_form_field.dart';

class Bagages1DarkScreen extends ConsumerStatefulWidget {
  const Bagages1DarkScreen({Key? key}) : super(key: key);

  @override
  Bagages1DarkScreenState createState() => Bagages1DarkScreenState();
}

class Bagages1DarkScreenState extends ConsumerState<Bagages1DarkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black90001,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(left: 28.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 32.v, bottom: 343.v),
                                      child: Column(children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrowLeft,
                                                      height: 17.v,
                                                      width: 10.h,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v,
                                                          bottom: 9.v),
                                                      onTap: () {
                                                        onTapImgArrowLeft(
                                                            context);
                                                      }),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h),
                                                      child: Text(
                                                          "lbl_bagages".tr,
                                                          style: theme.textTheme
                                                              .titleLarge))
                                                ])),
                                        SizedBox(height: 84.v),
                                        _buildArrowLeftRow(context),
                                        SizedBox(height: 31.v),
                                        _buildARow(context),
                                        SizedBox(height: 29.v),
                                        _buildTypeDeBagageRow(context),
                                        SizedBox(height: 29.v),
                                        _buildEditTextRow(context),
                                        SizedBox(height: 290.v),
                                        CustomElevatedButton(
                                            width: 250.h,
                                            text: "lbl_calculer".tr,
                                            onPressed: () {
                                              onTapCalculer(context);
                                            })
                                      ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle51,
                                  height: 1169.v,
                                  width: 19.h,
                                  margin: EdgeInsets.only(left: 9.h))
                            ]))))));
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 17.v, bottom: 12.v),
          child: Text("lbl_de".tr,
              style: CustomTextStyles.titleLargeWhiteA70001_1)),
      Consumer(builder: (context, ref, _) {
        return CustomDropDown(
            width: 172.h,
            hintText: "lbl_selectionner".tr,
            items: ref
                    .watch(bagages1DarkNotifier)
                    .bagages1DarkModelObj
                    ?.dropdownItemList ??
                [],
            contentPadding:
                EdgeInsets.symmetric(horizontal: 11.h, vertical: 19.v),
            borderDecoration: DropDownStyleHelper.fillBlueGrayTL10,
            fillColor: appTheme.blueGray90001,
            onChanged: (value) {
              ref.watch(bagages1DarkNotifier).selectedDropDownValue = value;
            });
      })
    ]);
  }

  /// Section Widget
  Widget _buildARow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 16.v, bottom: 13.v),
          child: Text("lbl_a".tr,
              style: CustomTextStyles.titleLargeWhiteA70001_1)),
      Consumer(builder: (context, ref, _) {
        return CustomDropDown(
            width: 172.h,
            hintText: "lbl_selectionner".tr,
            items: ref
                    .watch(bagages1DarkNotifier)
                    .bagages1DarkModelObj
                    ?.dropdownItemList1 ??
                [],
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
            borderDecoration: DropDownStyleHelper.fillBlueGrayTL10,
            fillColor: appTheme.blueGray90001,
            onChanged: (value) {
              ref.watch(bagages1DarkNotifier).selectedDropDownValue1 = value;
            });
      })
    ]);
  }

  /// Section Widget
  Widget _buildTypeDeBagageRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 19.v, bottom: 10.v),
          child: Text("lbl_type_de_bagage".tr,
              style: CustomTextStyles.titleLargeWhiteA70001_1)),
      Consumer(builder: (context, ref, _) {
        return CustomDropDown(
            width: 172.h,
            hintText: "lbl_selectionner".tr,
            items: ref
                    .watch(bagages1DarkNotifier)
                    .bagages1DarkModelObj
                    ?.dropdownItemList2 ??
                [],
            borderDecoration: DropDownStyleHelper.fillBlueGrayTL10,
            fillColor: appTheme.blueGray90001,
            onChanged: (value) {
              ref.watch(bagages1DarkNotifier).selectedDropDownValue2 = value;
            });
      })
    ]);
  }

  /// Section Widget
  Widget _buildEditTextRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 16.v, bottom: 13.v),
          child: Text("lbl_poids".tr,
              style: CustomTextStyles.titleLargeWhiteA70001_1)),
      SizedBox(
          height: 60.v,
          width: 172.h,
          child: Stack(alignment: Alignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgArrowDownLightBlueA700,
                height: 8.v,
                width: 16.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(right: 12.h, bottom: 22.v)),
            Consumer(builder: (context, ref, _) {
              return CustomTextFormField(
                  width: 172.h,
                  controller:
                      ref.watch(bagages1DarkNotifier).editTextController,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center);
            })
          ]))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the bagages2DarkScreen when the action is triggered.
  onTapCalculer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.bagages2DarkScreen,
    );
  }
}
