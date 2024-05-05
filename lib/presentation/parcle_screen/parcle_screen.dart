import 'notifier/parcle_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_drop_down.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_text_form_field.dart';

class ParcleScreen extends ConsumerStatefulWidget {
  const ParcleScreen({Key? key}) : super(key: key);

  @override
  ParcleScreenState createState() => ParcleScreenState();
}

class ParcleScreenState extends ConsumerState<ParcleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 32.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowLeft,
                                    height: 17.v,
                                    width: 10.h,
                                    margin:
                                        EdgeInsets.only(top: 3.v, bottom: 9.v),
                                    onTap: () {
                                      onTapImgArrowLeft(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Text("lbl_bagages".tr,
                                        style: theme.textTheme.titleLarge))
                              ]))),
                  SizedBox(height: 84.v),
                  _buildArrowLeftRow(context),
                  SizedBox(height: 31.v),
                  _buildARow(context),
                  SizedBox(height: 29.v),
                  _buildTypeDeBagageRow(context),
                  SizedBox(height: 52.v),
                  _buildEditTextRow(context),
                  Spacer(),
                  SizedBox(height: 23.v),
                  CustomElevatedButton(
                      width: 250.h,
                      text: "lbl_calculer".tr,
                      onPressed: () {
                        onTapCalculer(context);
                      })
                ]))));
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 17.v, bottom: 12.v),
              child: Text("lbl_de".tr,
                  style: CustomTextStyles.titleLargeBlack90002_1)),
          Consumer(builder: (context, ref, _) {
            return CustomDropDown(
                width: 172.h,
                hintText: "lbl_selectionner".tr,
                items: ref
                        .watch(parcleNotifier)
                        .parcleModelObj
                        ?.dropdownItemList ??
                    [],
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 22.h, vertical: 19.v),
                onChanged: (value) {
                  ref.watch(parcleNotifier).selectedDropDownValue = value;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildARow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 16.v, bottom: 13.v),
              child: Text("lbl_a".tr,
                  style: CustomTextStyles.titleLargeBlack90002_1)),
          Consumer(builder: (context, ref, _) {
            return CustomDropDown(
                width: 172.h,
                hintText: "lbl_selectionner".tr,
                items: ref
                        .watch(parcleNotifier)
                        .parcleModelObj
                        ?.dropdownItemList1 ??
                    [],
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 21.h, vertical: 19.v),
                onChanged: (value) {
                  ref.watch(parcleNotifier).selectedDropDownValue1 = value;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildTypeDeBagageRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 19.v, bottom: 10.v),
              child: Text("lbl_type_de_bagage".tr,
                  style: CustomTextStyles.titleLargeBlack90002_1)),
          Consumer(builder: (context, ref, _) {
            return CustomDropDown(
                width: 172.h,
                hintText: "lbl_selectionner".tr,
                items: ref
                        .watch(parcleNotifier)
                        .parcleModelObj
                        ?.dropdownItemList2 ??
                    [],
                onChanged: (value) {
                  ref.watch(parcleNotifier).selectedDropDownValue2 = value;
                });
          })
        ]));
  }

  /// Section Widget
  Widget _buildEditTextRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 16.v, bottom: 13.v),
              child: Text("lbl_poids".tr,
                  style: CustomTextStyles.titleLargeBlack90002_1)),
          Consumer(builder: (context, ref, _) {
            return CustomTextFormField(
                width: 172.h,
                controller: ref.watch(parcleNotifier).editTextController,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                fillColor: appTheme.blueGray50);
          })
        ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the parcleTwoScreen when the action is triggered.
  onTapCalculer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.parcleTwoScreen,
    );
  }
}
