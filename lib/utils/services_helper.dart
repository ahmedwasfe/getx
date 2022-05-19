import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServicesHelper extends GetxService {
  static late SharedPreferences _sharedPreferences;
  RxInt counter = 0.obs;

  Future<ServicesHelper> initServices() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    counter.value = getData(key: "counter") ?? 0; // ?? if not exsist
    return this;
  }

  static dynamic getData({required String key}) {
    return _sharedPreferences.get(key);
  }

  dynamic getServicesData({required String key}) {
    return _sharedPreferences.get(key);
  }

  static Future<dynamic> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await _sharedPreferences.setString(key, value);
    if (value is int) return await _sharedPreferences.setInt(key, value);
    if (value is bool) return await _sharedPreferences.setBool(key, value);
    if (value is double) return await _sharedPreferences.setDouble(key, value);

    return await _sharedPreferences.setStringList(key, value);
  }

  Future<dynamic> saveServicesData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await _sharedPreferences.setString(key, value);
    if (value is int) return await _sharedPreferences.setInt(key, value);
    if (value is bool) return await _sharedPreferences.setBool(key, value);
    if (value is double) return await _sharedPreferences.setDouble(key, value);

    return await _sharedPreferences.setStringList(key, value);
  }

  static Future<bool> clearData({required String key}) async {
    return _sharedPreferences.remove(key);
  }

  Future<bool> clearServicesData({required String key}) async {
    return _sharedPreferences.remove(key);
  }

  void increment() {
    counter.value++;
    saveServicesData(key: "counter", value: counter.value);
  }
}
