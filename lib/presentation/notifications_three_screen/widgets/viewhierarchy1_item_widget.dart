import '../models/viewhierarchy1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget(
    this.viewhierarchy1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy1ItemModel viewhierarchy1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 6.v,
                ),
                child: CustomIconButton(
                  height: 65.adaptSize,
                  width: 65.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(
                    imagePath: viewhierarchy1ItemModelObj.heroIcon,
                  ),
                ),
              ),
              Container(
                width: 137.h,
                margin: EdgeInsets.only(left: 22.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_votre_train".tr,
                        style: CustomTextStyles.bodyLargeff000000,
                      ),
                      TextSpan(
                        text: "lbl_kts_mda_11222".tr,
                        style: CustomTextStyles.titleMediumff000000Bold,
                      ),
                      TextSpan(
                        text: "msg_arrive_maintenant".tr,
                        style: CustomTextStyles.bodyLargeff000000,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 23.v,
              bottom: 26.v,
            ),
            child: Text(
              viewhierarchy1ItemModelObj.dateText!,
              style: CustomTextStyles.bodyLargeBlack90002_3,
            ),
          ),
        ],
      ),
    );
  }
}
