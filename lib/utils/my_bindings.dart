import 'package:get/get.dart';

import '../controller/language_controller.dart';
import '../view/state_managment/bindings/controller/home_controller.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(LanguageController());
  }

}