import 'package:flutter/material.dart';
import 'package:wfmge/src/commons/exports.dart';

final lightTextStyles = CustomTextStyles.themed(color: lightColors.textPrimary);
final darkTextStyles = CustomTextStyles.themed(color: darkColors.textPrimary);

class BaseTypography {
  BaseTypography._();

  static const String fontFamily = 'Inter';
  static const String fontFamilyRiffic = 'Riffic';

  // Headlines
  static const TextStyle displayLarge = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w800,
    height: 40 / 36,
    fontFamily: fontFamily,
  );

  static const TextStyle displayMedium = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w800,
    height: 36 / 30,
    fontFamily: fontFamily,
  );

  static const TextStyle headline = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    height: 32 / 24,
    fontFamily: fontFamily,
  );

  static const TextStyle title = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 18,
    fontFamily: fontFamily,
  );

  static const TextStyle body = TextStyle(fontSize: 16, fontFamily: fontFamily);

  static const TextStyle small = TextStyle(
    fontSize: 14,
    fontFamily: fontFamily,
  );

  static const TextStyle footnote = TextStyle(
    fontSize: 12,
    fontFamily: fontFamily,
  );

  static const TextStyle micro = TextStyle(
    fontSize: 11,
    fontFamily: fontFamily,
  );
}

final class CustomTextStyles extends ThemeExtension<CustomTextStyles> {
  final Color? color;

  const CustomTextStyles({this.color});

  // Map BaseTypography styles to dynamic colors
  TextStyle get displayLarge =>
      BaseTypography.displayLarge.copyWith(color: color);

  TextStyle get displayMedium =>
      BaseTypography.displayMedium.copyWith(color: color);

  TextStyle get headline => BaseTypography.headline.copyWith(color: color);

  TextStyle get title => BaseTypography.title.copyWith(color: color);

  TextStyle get titleRiffic => BaseTypography.title.copyWith(
    color: color,
    fontFamily: BaseTypography.fontFamilyRiffic,
    letterSpacing: 0.1,
    height: 1,
  );

  TextStyle get subtitle => BaseTypography.subtitle.copyWith(color: color);

  TextStyle get body => BaseTypography.body.copyWith(color: color);

  TextStyle get small => BaseTypography.small.copyWith(color: color);

  TextStyle get captionRiffic => BaseTypography.small.copyWith(
    color: color,
    fontFamily: BaseTypography.fontFamilyRiffic,
    fontWeight: FontWeight.bold,
  );

  TextStyle get footnote => BaseTypography.footnote.copyWith(color: color);

  TextStyle get micro => BaseTypography.micro.copyWith(color: color);

  @override
  CustomTextStyles copyWith({Color? color}) {
    return CustomTextStyles(color: color ?? this.color);
  }

  @override
  CustomTextStyles lerp(ThemeExtension<CustomTextStyles>? other, double t) {
    if (other is! CustomTextStyles) return this;
    return CustomTextStyles(color: Color.lerp(color, other.color, t));
  }

  static CustomTextStyles themed({Color? color}) =>
      CustomTextStyles(color: color);
}
