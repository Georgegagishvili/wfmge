import 'package:flutter/material.dart';

final CustomColors lightColors = const CustomColors(
  primary: Color(0xFF4C8BF5),
  primaryContent: Color(0xFF0A0E1A),
  background: Color(0xFFF5F7FA),
  surface: Color(0xFFFFFFFF),
  surfaceContent: Color(0xFF4B5563),
  textPrimary: Color(0xFF1F2937),
  textSecondary: Color(0xFF6B7280),
  success: Color(0xFF16A34A),
  warning: Color(0xFFF59E0B),
  error: Color(0xFFEF4444),
);

final CustomColors darkColors = const CustomColors(
  primary: Color(0xFF4C8BF5),
  primaryContent: Color(0xFF0A0E1A),
  background: Color(0xFF1C1F2A),
  surface: Color(0xFF262A38),
  surfaceContent: Color(0xFFE3E6F0),
  textPrimary: Color(0xFFE6E8EF),
  textSecondary: Color(0xFF9DA3B0),
  success: Color(0xFF3DD68C),
  warning: Color(0xFFF5A524),
  error: Color(0xFFE5484D),
);

class CustomColors extends ThemeExtension<CustomColors> {
  final Color primary;
  final Color primaryContent;

  final Color background;
  final Color surface;
  final Color surfaceContent;

  final Color textPrimary;
  final Color textSecondary;

  final Color success;
  final Color warning;
  final Color error;

  const CustomColors({
    required this.primary,
    required this.primaryContent,
    required this.background,
    required this.surface,
    required this.surfaceContent,
    required this.textPrimary,
    required this.textSecondary,
    required this.success,
    required this.warning,
    required this.error,
  });

  @override
  CustomColors copyWith({
    Color? primary,
    Color? primaryContent,
    Color? background,
    Color? surface,
    Color? surfaceContent,
    Color? textPrimary,
    Color? textSecondary,
    Color? success,
    Color? warning,
    Color? error,
  }) {
    return CustomColors(
      primary: primary ?? this.primary,
      primaryContent: primaryContent ?? this.primaryContent,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      surfaceContent: surfaceContent ?? this.surfaceContent,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      error: error ?? this.error,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) return this;
    return CustomColors(
      primary: Color.lerp(primary, other.primary, t)!,
      primaryContent: Color.lerp(primaryContent, other.primaryContent, t)!,
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceContent: Color.lerp(surfaceContent, other.surfaceContent, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
    );
  }
}
