import 'package:flutter/material.dart';
import 'package:wfmge/src/commons/exports.dart';

ThemeData currentThemeData(AppTheme theme) {
  final colors = theme.data.colors;
  final textStyles = theme.data.textStyles;

  return ThemeData(
    fontFamily: 'Inter',
    brightness: theme.brightness,
    scaffoldBackgroundColor: colors.background,
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: colors.primary,
      linearTrackColor: colors.surface.withValues(alpha: 0.3),
    ),
    extensions: [colors, textStyles],

    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor: WidgetStateProperty.all(
          colors.surface.withValues(alpha: 0.2),
        ),
        foregroundColor: WidgetStateProperty.all(colors.textPrimary),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      fillColor: colors.surface,
      filled: true,
      hintStyle: TextStyle(color: colors.textSecondary),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colors.primary, width: 1.4),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colors.surfaceContent.withValues(alpha: 0.1)),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colors.error),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colors.error),
        borderRadius: BorderRadius.circular(8),
      ),
    ),

    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colors.surface,
    ),

    drawerTheme: DrawerThemeData(
      backgroundColor: colors.surface,
    ),

    tabBarTheme: TabBarThemeData(
      labelColor: colors.primary,
      unselectedLabelColor: colors.textSecondary,
      indicatorColor: colors.primary,
    ),
  );
}
