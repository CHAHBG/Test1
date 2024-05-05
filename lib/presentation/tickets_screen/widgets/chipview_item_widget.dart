import '../models/chipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewItemWidget extends StatelessWidget {
  ChipviewItemWidget(
    this.chipviewItemModelObj, {
    super.key,
    this.onSelectedChipView1,
  });

  ChipviewItemModell chipviewItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 16.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewItemModelObj.colobane!,
        style: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 22.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
      ),
      selected: (chipviewItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray90001,
      selectedColor: appTheme.blueGray90001,
      shape: (chipviewItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.whiteA70001.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
