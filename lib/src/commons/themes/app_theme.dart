import 'package:flutter/material.dart';
import 'package:wfmge/src/commons/exports.dart';
import 'package:wfmge/src/services/exports.dart';

enum AppTheme {
  light,
  dark,
  system;

  ///... more coming soon

  Brightness get brightness {
    switch (this) {
      case AppTheme.light:
        return Brightness.light;
      case AppTheme.dark:
        return Brightness.dark;
      case AppTheme.system:
        final brightness =
            WidgetsBinding.instance.platformDispatcher.platformBrightness;
        return brightness;
    }
  }

  static AppTheme fromString(String theme) {
    switch (theme.toLowerCase()) {
      case 'light':
        return AppTheme.light;
      case 'dark':
        return AppTheme.dark;
      case 'system':
        return AppTheme.system;
      default:
        return AppTheme.system;
    }
  }

  static AppTheme get fromPreferences {
    final theme = PreferenceValues.appTheme;
    if (theme == null || theme.isEmpty) {
      return AppTheme.system;
    }
    return AppTheme.fromString(theme);
  }
}

class AppThemeData {
  final CustomColors colors;
  final CustomTextStyles textStyles;

  const AppThemeData({required this.colors, required this.textStyles});
}

extension AppThemeMapping on AppTheme {
  AppThemeData get data {
    switch (this) {
      case AppTheme.light:
        return AppThemeData(colors: lightColors, textStyles: lightTextStyles);
      case AppTheme.dark:
        return AppThemeData(colors: darkColors, textStyles: darkTextStyles);
      case AppTheme.system:
        final brightness =
            WidgetsBinding.instance.platformDispatcher.platformBrightness;
        if (brightness == Brightness.dark) {
          return AppThemeData(colors: darkColors, textStyles: darkTextStyles);
        } else {
          return AppThemeData(colors: lightColors, textStyles: lightTextStyles);
        }
    }
  }
}
