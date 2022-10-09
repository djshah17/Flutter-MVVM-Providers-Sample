import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  static SharedPreferences? _prefsInstance;
  //static Future<SharedPreferences> get _instance async => _prefsInstance;

  static getInit() async {
    WidgetsFlutterBinding.ensureInitialized();
    await init();
  }

  /*static Future<void> getPreferenceInitUtil() async {
    WidgetsFlutterBinding.ensureInitialized();
    await PreferenceUtils.getInit();
  }*/

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences?> init() async {
    _prefsInstance = await SharedPreferences.getInstance();
    return _prefsInstance;
  }

  static Future<bool> remove(String key) async => await _prefsInstance!.remove(key);

  static Future<bool> clear() async => await _prefsInstance!.clear();

  static String? getString(String key) {
    return _prefsInstance!.getString(key);
  }

  static Future<bool> setString(String key, String value) async {
   // var prefs = await _instance;
    return _prefsInstance!.setString(key, value);
  }

}