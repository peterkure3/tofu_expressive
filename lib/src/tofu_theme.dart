import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

/// Tofu Expressive theme
class TofuTheme {
  static ThemeData _createTheme({
    required Brightness brightness,
    Color? seedColor,
    FlexScheme scheme = FlexScheme.material,
    FlexSubThemesData? subThemesData,
    String fontFamily = 'Roboto',
  }) {
    final flexThemeData = brightness == Brightness.light
        ? FlexThemeData.light
        : FlexThemeData.dark;

    return flexThemeData(
      scheme: scheme,
      useMaterial3: true,
      subThemesData: subThemesData ??
          const FlexSubThemesData(
            blendOnLevel: 20,
            blendOnColors: true,
          ),
      visualDensity: VisualDensity.standard,
      fontFamily: fontFamily,
      colors: seedColor != null
          ? FlexSchemeColor.from(
              primary: seedColor,
              secondary: seedColor.withAlpha((255 * 0.8).round()),
            )
          : null,
    );
  }

  /// Light theme with default seed color
  static ThemeData light({
    Color? seedColor,
    FlexScheme scheme = FlexScheme.material,
    FlexSubThemesData? subThemesData,
    String fontFamily = 'Roboto',
  }) {
    return _createTheme(
      brightness: Brightness.light,
      seedColor: seedColor,
      scheme: scheme,
      subThemesData: subThemesData,
      fontFamily: fontFamily,
    );
  }

  /// Dark theme with default seed color
  static ThemeData dark({
    Color? seedColor,
    FlexScheme scheme = FlexScheme.material,
    FlexSubThemesData? subThemesData,
    String fontFamily = 'Roboto',
  }) {
    return _createTheme(
      brightness: Brightness.dark,
      seedColor: seedColor,
      scheme: scheme,
      subThemesData: subThemesData,
      fontFamily: fontFamily,
    );
  }
}
