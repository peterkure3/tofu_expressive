import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class TofuTheme {
  static ThemeData light({
    Color? seedColor,
    FlexScheme scheme = FlexScheme.material,
    FlexSubThemesData? subThemesData,
    String fontFamily = 'Roboto',
  }) {
    return FlexThemeData.light(
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

  static ThemeData dark({
    Color? seedColor,
    FlexScheme scheme = FlexScheme.material,
    FlexSubThemesData? subThemesData,
    String fontFamily = 'Roboto',
  }) {
    return FlexThemeData.dark(
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
}
