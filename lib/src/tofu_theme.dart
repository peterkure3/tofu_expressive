import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class TofuTheme {
  static ThemeData light([Color? seedColor]) {
    return FlexThemeData.light(
      scheme: FlexScheme.material,
      useMaterial3: true,
      useMaterial3ErrorColors: true,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 20,
        blendOnColors: true,
      ),
      visualDensity: VisualDensity.standard,
      fontFamily: 'Roboto',
      colors: seedColor != null
          ? FlexSchemeColor.from(
              primary: seedColor,
              secondary: seedColor.withOpacity(0.8),
            )
          : null,
    );
  }

  static ThemeData dark([Color? seedColor]) {
    return FlexThemeData.dark(
      scheme: FlexScheme.espresso,
      useMaterial3: true,
      useMaterial3ErrorColors: true,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 30,
        blendOnColors: true,
      ),
      visualDensity: VisualDensity.standard,
      fontFamily: 'Roboto',
      colors: seedColor != null
          ? FlexSchemeColor.from(
              primary: seedColor,
              secondary: seedColor.withOpacity(0.8),
            )
          : null,
    );
  }
}
