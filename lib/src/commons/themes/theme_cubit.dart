import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wfmge/src/commons/exports.dart';
import 'package:wfmge/src/services/exports.dart';

class ThemeCubit extends Cubit<AppTheme> {
  ThemeCubit(this.prefs) : super(AppTheme.system) {
    _init();
  }

  final Preferences prefs;

  Future<void> _init() async {
    final AppTheme theme = AppTheme.fromPreferences;
    emit(theme);
  }

  void setTheme(AppTheme theme) {
    if (state == theme) return;
    emit(theme);
    prefs.setString(PreferenceKeys.APP_THEME, theme.name);
  }
}
