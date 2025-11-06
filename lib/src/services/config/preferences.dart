import 'package:flutter/material.dart';
import 'package:wfmge/src/utils/exports.dart';
import 'package:wfmge/src/commons/exports.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static Preferences? _instance;
  SharedPreferences _client;

  Preferences(SharedPreferences client) : _client = client;

  factory Preferences.create(SharedPreferences client) {
    if (_instance != null) {
      debugPrint('Preferences are already initialized');
      return _instance!;
    }

    _instance = Preferences(client);
    return _instance!;
  }

  String? getString(String key) {
    return _client.getString(key);
  }

  int? getInt(String key) {
    return _client.getInt(key);
  }

  bool? getBool(String key) {
    return _client.getBool(key);
  }

  bool containsKey(String key) {
    return _client.containsKey(key);
  }

  void removeString(String key) {
    _client.remove(key);
  }

  void setInt(String key, int value) {
    _client.setInt(key, value);
  }

  void setString(String key, String value) {
    _client.setString(key, value);
  }

  void setBool(String key, bool value) {
    _client.setBool(key, value);
  }

  void setStringList(String key, List<String> value) {
    _client.setStringList(key, value);
  }

  List<String>? getStringList(String key) {
    return _client.getStringList(key);
  }
}

abstract class PreferenceValues {
  static final _prefs = locator<Preferences>();

  static String? get appTheme => _prefs.getString(PreferenceKeys.APP_THEME);
}
