import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';
import 'package:ibrahima_s_application_seter/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGray5003,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 65.adaptSize,
            width: 65.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 5.v),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomIconButton(
                  height: 65.adaptSize,
                  width: 65.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: viewhierarchyItemModelObj.speakerphoneIcon,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      left: 1.h,
                      top: 6.v,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 181.h,
            margin: EdgeInsets.only(
              left: 22.h,
              top: 1.v,
            ),
            child: Text(
              viewhierarchyItemModelObj.trainText!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeBlack90002_6.copyWith(
                height: 1.39,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              top: 25.v,
              bottom: 26.v,
            ),
            child: Text(
              viewhierarchyItemModelObj.nowText!,
              style: CustomTextStyles.bodyLargeBlack90002_3,
            ),
          ),
        ],
      ),
    );
  }
}
