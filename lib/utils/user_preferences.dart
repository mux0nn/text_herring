import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static SharedPreferences? _prefs;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future setDarkTheme(bool val) async {
    await _prefs?.setBool('darkTheme', val);
  }

  bool? getDarkTheme() {
    return _prefs?.getBool('darkTheme');
  }

  static Future setProjectData(var id, Map<String, dynamic> val) async {
    String encodedMap = json.encode(val);
    print(encodedMap);
    await _prefs?.setString("$id" + "-project", encodedMap);
  }
}
