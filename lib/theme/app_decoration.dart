import 'package:flutter/material.dart';
import 'package:ibrahima_s_application_seter/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
      );
  static BoxDecoration get fillBlack90002 => BoxDecoration(
        color: appTheme.black90002,
      );
  static BoxDecoration get fillBlack900021 => BoxDecoration(
        color: appTheme.black90002.withOpacity(0.2),
      );
  static BoxDecoration get fillBlack900022 => BoxDecoration(
        color: appTheme.black90002.withOpacity(0.11),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillBluegray900 => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillBluegray90001 => BoxDecoration(
        color: appTheme.blueGray90001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray90002,
      );
  static BoxDecoration get fillGray5002 => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillGray5003 => BoxDecoration(
        color: appTheme.gray5003,
      );
  static BoxDecoration get fillGray90002 => BoxDecoration(
        color: appTheme.gray90002.withOpacity(0.41),
      );
  static BoxDecoration get fillGray90003 => BoxDecoration(
        color: appTheme.gray90003,
      );
  static BoxDecoration get fillGray90005 => BoxDecoration(
        color: appTheme.gray90005,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.14),
      );
  static BoxDecoration get fillPrimary2 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.11),
      );
  static BoxDecoration get fillPrimary3 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.13),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: appTheme.whiteA70001.withOpacity(0.2),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlack90002 => BoxDecoration(
        color: appTheme.black90002,
        border: Border.all(
          color: appTheme.black90002.withOpacity(0.05),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900021 => BoxDecoration(
        color: appTheme.black90001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900022 => BoxDecoration(
        color: appTheme.black90001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900023 => BoxDecoration(
        color: appTheme.gray90003,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.17),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              5,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900024 => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900025 => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.15),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900026 => BoxDecoration(
        color: theme.colorScheme.primary,
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
  static BoxDecoration get outlineBlack900027 => BoxDecoration(
        color: appTheme.gray90003,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900028 => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.black90002.withOpacity(0.05),
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray90002,
        border: Border.all(
          color: appTheme.gray90002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray4000f => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.gray4000f,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGrayF => BoxDecoration(
        color: appTheme.black90002,
        border: Border.all(
          color: appTheme.gray4000f,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: appTheme.black90002,
        border: Border.all(
          color: theme.colorScheme.onErrorContainer,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              7,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder29 => BorderRadius.circular(
        29.h,
      );
  static BorderRadius get circleBorder32 => BorderRadius.circular(
        32.h,
      );
  static BorderRadius get circleBorder36 => BorderRadius.circular(
        36.h,
      );
  static BorderRadius get circleBorder44 => BorderRadius.circular(
        44.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );
  static BorderRadius get customBorderLR10 => BorderRadius.horizontal(
        right: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL10 => BorderRadius.horizontal(
        left: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL12 => BorderRadius.vertical(
        top: Radius.circular(12.h),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder13 => BorderRadius.circular(
        13.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
  static BorderRadius get roundedBorder39 => BorderRadius.circular(
        39.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
