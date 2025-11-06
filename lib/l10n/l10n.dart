import 'dart:ui';
import 'package:wfmge/src/commons/exports.dart';
import 'package:wfmge/src/services/exports.dart';
import 'package:wfmge/src/utils/exports.dart';

enum L10n {
  en;

  static const List<Locale> supportedLocales = [Locale('en', 'US')];

  static L10n fromString(String locale) {
    switch (locale) {
      case 'en':
        return L10n.en;
      default:
        return L10n.en;
    }
  }

  static L10n get fromPreferences {
    final prefs = locator<Preferences>();
    final locale = prefs.getString(PreferenceKeys.APP_LANGUAGE);
    if (locale == null || locale.isEmpty) {
      return L10n.en;
    }

    return L10n.fromString(locale);
  }
}
