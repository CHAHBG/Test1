import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.primary.withOpacity(0.14),
                  borderRadius: BorderRadius.circular(32.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
    color: theme.colorScheme.primary,
  );
  static BoxDecoration get fillTealE => BoxDecoration(
    color: appTheme.teal3001e,
    borderRadius: BorderRadius.circular(36.h),
  );
  static BoxDecoration get fillBlueGray => BoxDecoration(
    color: appTheme.blueGray900,
    borderRadius: BorderRadius.circular(30.h),
  );
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: appTheme.black90001,
    borderRadius: BorderRadius.circular(15.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.black90002.withOpacity(0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          1,
        ),
      ),
    ],
  );
  static BoxDecoration get fillPrimaryTL30 => BoxDecoration(
    color: theme.colorScheme.primary,
    borderRadius: BorderRadius.circular(30.h),
  );
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray90004,
    borderRadius: BorderRadius.circular(32.h),
  );
  static BoxDecoration get fillPrimaryTL13 => BoxDecoration(
    color: theme.colorScheme.primary,
    borderRadius: BorderRadius.circular(13.h),
  );
  static BoxDecoration get fillPrimaryLR10 => BoxDecoration(
    color: theme.colorScheme.primary,
    borderRadius: BorderRadius.horizontal(
      right: Radius.circular(
        10.h,
      ),
    ),
  );
  static BoxDecoration get fillBlack => BoxDecoration(
    color: appTheme.black90001,
    borderRadius: BorderRadius.circular(36.h),
  );
  static BoxDecoration get fillPrimaryTL36 => BoxDecoration(
    color: theme.colorScheme.primary.withOpacity(0.14),
    borderRadius: BorderRadius.circular(36.h),
  );
  static BoxDecoration get fillPrimaryTL361 => BoxDecoration(
    color: theme.colorScheme.primary.withOpacity(0.13),
    borderRadius: BorderRadius.circular(36.h),
  );
  static BoxDecoration get outlineBlackTL10 => BoxDecoration(
    color: theme.colorScheme.primary,
    borderRadius: BorderRadius.circular(10.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.black90002.withOpacity(0.08),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get fillTeal => BoxDecoration(
    color: appTheme.teal600.withOpacity(0.12),
    borderRadius: BorderRadius.circular(36.h),
  );
  static BoxDecoration get outlineBlackTL15 => BoxDecoration(
    color: appTheme.whiteA70001,
    borderRadius: BorderRadius.circular(15.h),
    boxShadow: [
      BoxShadow(
        color: appTheme.black90002.withOpacity(0.25),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          1,
        ),
      ),
    ],
  );
}