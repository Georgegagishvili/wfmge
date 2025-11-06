import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wfmge/l10n/l10n.dart';
import 'package:wfmge/src/commons/exports.dart';
import 'package:wfmge/src/services/exports.dart';

class LocalizationCubit extends Cubit<L10n> {
  LocalizationCubit(this.prefs) : super(L10n.en) {
    _init();
  }

  final Preferences prefs;

  Future<void> _init() async {
    final L10n locale = L10n.fromPreferences;
    emit(locale);
  }

  void setLocale(L10n locale) {
    if (state == locale) return;
    emit(locale);
    prefs.setString(PreferenceKeys.APP_LANGUAGE, locale.name);
  }
}
