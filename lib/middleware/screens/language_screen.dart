import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../controller/language_controller.dart';

class ChangeLanguage extends StatelessWidget {
  ChangeLanguage({Key? key}) : super(key: key);
  ChangeLanguage.lang({required this.selectedLang});

  String selectedLang = "";

  @override
  Widget build(BuildContext context) {
    LanguageController languageController = Get.find();

    String getAppLang(){
      if(languageController.langCode == "ar")
        return "arabic".tr;
      else if(languageController.langCode == "en")
        return "english".tr;
      else
        return Get.deviceLocale.toString();
    }
    return Scaffold(
      appBar: AppBar(title: Text("change_language".tr)),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your app language is: ${languageController.langCode == "ar" ? "Arabic" : "English"}"),
              SizedBox(height: 10,),
              Text("Your app language is: ${getAppLang()}"),
              SizedBox(height: 10,),
              Text(
                "select_language".tr,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              GetBuilder<LanguageController>(builder: (controller) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioListTile(
                    title: Text(
                      'arabic'.tr,
                      style: new TextStyle(fontSize: 16.0),
                    ),
                    // selected: selectedLang == "ar" ? true : false,
                    value: "ar",
                    groupValue: controller.language,
                    onChanged: (newValue) {
                      controller.language = newValue.toString();
                      controller.updateLangAr();
                      languageController.saveAppLanguage("ar");
                      print(controller.language);
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      'english'.tr,
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    // selected: selectedLang == "en" ? true : false,
                    value: "en",
                    groupValue: controller.language,
                    onChanged: (newValue) {
                      controller.language = newValue.toString();
                      controller.updateLangEn();
                      languageController.saveAppLanguage("en");
                      print(controller.language);
                    },
                  ),
                ],
              )),

            ],
          ),
        ),
      ),
    );
  }
}
