import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/state_managment/screens/home/home_page.dart';
import '../view/state_managment/screens/profile/profile_page.dart';
import '../view/state_managment/screens/settings/settings_page.dart';

class HomeStateController extends GetxController {

  int currentNavIndex = 0;
  List<Widget> screens = [HomePage(), ProfilePage(), SettingsPage()];

  List<String> titles = ["Home", "Profile", "Settings"];

  void getCurrentNavIndex(int currentNavIndex) {
    this.currentNavIndex = currentNavIndex;
    update();
  }


}