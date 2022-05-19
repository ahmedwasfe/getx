import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/utils/services_helper.dart';

class LanguageController extends GetxController {
  String? language;
  String? langCode;

  @override
  void onInit() {
    if (langCode != null) langCode = Get.arguments["langCode"];
    super.onInit();
  }

  void updateLangAr() {
    language = "ar";
    update();
  }

  void updateLangEn() {
    language = "en";
    update();
  }

  void saveAppLanguage(String codeLanguage) {
    Locale locale = Locale(codeLanguage);
    ServicesHelper.saveData(key: "language", value: codeLanguage);
    Get.updateLocale(locale);
  }

  Locale? getAppLanguage() {
    String? language = ServicesHelper.getData(key: "language");
    if (language == "ar")
      return Locale("ar");
    else if (language == "en")
      return Locale("ar");
    else
      return Get.deviceLocale;
  }
}
