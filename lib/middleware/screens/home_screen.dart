import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/style/theme.dart';
import 'package:getx/utils/services_helper.dart';
import 'package:getx/view/state_managment/screens/settings/settings_page.dart';

import 'language_screen.dart';

class HomeScreen extends GetView<ServicesHelper> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ServicesHelper helper = Get.find();
    return Scaffold(
      appBar: AppBar(title: Text("home".tr)),
      body: Container(
        margin: EdgeInsets.all(18),
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("welcome: ${getCurrentUser()}".tr),
              SizedBox(height: 10),
              Text("login_type: ${getUserType()}".tr),
              SizedBox(height: 20),
              GetX<ServicesHelper>(
                  builder: (c) => Text(
                        "${c.counter}",
                        style: TextStyle(fontSize: 20),
                      )),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 48,
                child: MaterialButton(
                  child: Text(
                    "sign_out".tr,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    ServicesHelper.clearData(key: "username");
                    ServicesHelper.clearData(key: "usertype");
                    Get.offAllNamed("/login");
                  },
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 48,
                child: MaterialButton(
                  child: Text(
                    "increment".tr,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    // helper.increment();
                    controller.increment();
                  },
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 48,
                child: MaterialButton(
                  child: Text(
                    "clear".tr,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    // helper.clearServicesData(key: "counter");
                    controller.clearServicesData(key: "counter");
                  },
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 48,
                child: MaterialButton(
                  child: Text(
                    "change_language".tr,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => Get.to(
                      ChangeLanguage.lang(selectedLang: "en"),
                      arguments: {"langCode": ServicesHelper.getData(key: "language")}),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 48,
                child: MaterialButton(
                  child: Text(
                    "show_dialog".tr,
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => Get.defaultDialog(
                    title: "New Dialog",
                    content: Text("this is new Dialog using GetX"),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 48,
                child: MaterialButton(
                  child: Text(
                    "Show SnackBar",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Get.snackbar(
                      "SnackBar Title",
                      "SnackBar Message",
                      /*titleText: CustomSnackBarContent(
                            titleMessage: "Oh snap!",
                            errorMessage:
                                "The Email Address is already in use! PLease try again later with differnt email",
                            color: Colors.green,
                            bubbles: "assets/images/bubbles_success.svg",
                            iconMessage: "assets/images/success.svg")*/
                    );
                    // Get.to(SettingsPage();
                  },
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 48,
                child: MaterialButton(
                  child: Text(
                    "Show BottomSeet",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () => Get.bottomSheet(
                    Container(
                      height: 250,
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Container(
                            height: 4,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Title",
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    enterBottomSheetDuration: Duration(seconds: 1),
                    exitBottomSheetDuration: Duration(seconds: 1),
                    backgroundColor: Colors.white,
                    isDismissible: false,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 48,
                child: MaterialButton(
                  child: Text(
                    "Change Theme",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if(Get.isDarkMode){
                      Get.changeTheme(AppTheme.customLightTheme);
                      ServicesHelper.saveData(key: "theme", value: true);
                    }else{
                      Get.changeTheme(AppTheme.customDarkTheme);
                      ServicesHelper.saveData(key: "theme", value: false);
                    }
                  },
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String getCurrentUser() {
    if (ServicesHelper.getData(key: "username") != null)
      return ServicesHelper.getData(key: "username");
    else
      return "";
  }

  String getUserType() {
    if (ServicesHelper.getData(key: "usertype") != null)
      return ServicesHelper.getData(key: "usertype");
    else
      return "";
  }
}
