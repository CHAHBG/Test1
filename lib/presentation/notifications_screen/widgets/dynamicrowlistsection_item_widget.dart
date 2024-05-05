import '../models/dynamicrowlistsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DynamicrowlistsectionItemWidget extends StatelessWidget {
  DynamicrowlistsectionItemWidget(
    this.dynamicrowlistsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamicrowlistsectionItemModel dynamicrowlistsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray90005,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 6.v,
            ),
            child: CustomIconButton(
              height: 65.adaptSize,
              width: 65.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillGray,
              child: CustomImageView(
                imagePath: dynamicrowlistsectionItemModelObj.speakerphoneIcon,
              ),
            ),
          ),
          Container(
            width: 181.h,
            margin: EdgeInsets.only(
              left: 22.h,
              top: 1.v,
            ),
            child: Text(
              dynamicrowlistsectionItemModelObj.trainText!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeWhiteA70001.copyWith(
                height: 1.39,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              top: 13.v,
              bottom: 38.v,
            ),
            child: Text(
              dynamicrowlistsectionItemModelObj.nowText!,
              style: CustomTextStyles.bodyLargeWhiteA70001_7,
            ),
          ),
        ],
      ),
    );
  }
}
