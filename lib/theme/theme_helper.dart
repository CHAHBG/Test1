import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA70001,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.whiteA70001.withOpacity(0.16),
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray300,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: Color(0X99000000),
          fontSize: 18.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: Color(0XFF0C0C0C),
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black90002.withOpacity(0.8),
          fontSize: 32.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.gray90002,
          fontSize: 28.fSize,
          fontFamily: 'Actor',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 24.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 12.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.teal600,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 22.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 18.fSize,
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF80542B),
    primaryContainer: Color(0XFF161719),
    secondaryContainer: Color(0XFF565D6A),

    // Error colors
    errorContainer: Color(0XFF263577),
    onErrorContainer: Color(0X0F040404),

    // On colors(text colors)
    onPrimary: Color(0XFF0B0B0B),
    onPrimaryContainer: Color(0XFFD27C2C),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF010000);
  Color get black90001 => Color(0XFF0C0C0C);
  Color get black90002 => Color(0XFF000000);

  // Blue
  Color get blue600 => Color(0XFF1F94E7);

  // BlueGray
  Color get blueGray100 => Color(0XFFC2D1D9);
  Color get blueGray200 => Color(0XFFB7BCC2);
  Color get blueGray50 => Color(0XFFF1F1F1);
  Color get blueGray900 => Color(0XFF272C37);
  Color get blueGray90001 => Color(0XFF363636);

  // DeepOrange
  Color get deepOrange100 => Color(0XFFF6D2B0);
  Color get deepOrange10001 => Color(0XFFF6D2B1);

  // DeepPurple
  Color get deepPurple50 => Color(0XFFEFE9FE);
  Color get deepPurple600 => Color(0XFF542FBE);
  Color get deepPurple800 => Color(0XFF3B15A6);

  // Gray
  Color get gray300 => Color(0XFFDBDDE0);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray50 => Color(0XFFFFF5F5);
  Color get gray5001 => Color(0XFFFAFBFB);
  Color get gray5002 => Color(0XFFF7F8F9);
  Color get gray5003 => Color(0XFFF3F5FF);
  Color get gray800 => Color(0XFF474747);
  Color get gray900 => Color(0XFF1B1B1B);
  Color get gray90001 => Color(0XFF1A1A1A);
  Color get gray90002 => Color(0XFF171717);
  Color get gray90003 => Color(0XFF1E1E1E);
  Color get gray90004 => Color(0XFF252525);
  Color get gray90005 => Color(0XFF121212);

  // Grayf
  Color get gray4000f => Color(0X0FC3C3C3);

  // Green
  Color get greenA700 => Color(0XFF00B512);

  // Indigo
  Color get indigo900 => Color(0XFF172B85);

  // LightBlue
  Color get lightBlue50 => Color(0XFFE9FAFE);
  Color get lightBlue800 => Color(0XFF0075CA);
  Color get lightBlueA700 => Color(0XFF0085E4);

  // Lime
  Color get lime900 => Color(0XFF7F532B);

  // Red
  Color get red500 => Color(0XFFEA4335);
  Color get redA700 => Color(0XFFFD0000);

  // Teal
  Color get teal300 => Color(0XFF40D194);
  Color get teal50 => Color(0XFFDFF9F0);
  Color get teal600 => Color(0XFF23A26D);

  // Teale
  Color get teal3001e => Color(0X1E41D195);

  // White
  Color get whiteA700 => Color(0XFFFDFDFC);
  Color get whiteA70001 => Color(0XFFFFFFFF);

  // Yellow
  Color get yellow800 => Color(0XFFF79E1B);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
