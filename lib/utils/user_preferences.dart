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

  //TODO: add JSON convertion
  static Future setHeader(int id, String val) async {
    await _prefs?.setString('header', val);
    print(id);
  }

  String? getHeader() {
    return _prefs?.getString('header');
  }
}
