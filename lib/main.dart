import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/language_controller.dart';
import 'package:getx/middleware/screens/home_screen.dart';
import 'package:getx/middleware/screens/login_screen.dart';
import 'package:getx/style/theme.dart';
import 'package:getx/utils/services_helper.dart';
import 'package:getx/utils/my_bindings.dart';
import 'package:getx/view/route_managment/home_route_screen.dart';
import 'package:getx/view/route_managment/screen_one.dart';
import 'package:getx/view/route_managment/screen_three.dart';
import 'package:getx/view/route_managment/screen_two.dart';
import 'package:getx/view/state_managment/bindings/first.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'locale/locale.dart';
import 'middleware/auth_middleware.dart';
import 'middleware/screens/language_screen.dart';
import 'middleware/screens/super_screen.dart';
import 'middleware/super_middleware.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

Future initialServices() async{
  await Get.putAsync(() => ServicesHelper().initServices());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  ThemeData changeTheme(){
    if(ServicesHelper.getData(key: "theme") != null) {
      bool isDark = ServicesHelper.getData(key: "theme");
      print(isDark);
      if (isDark)
        return AppTheme.customLightTheme;
      else
        return AppTheme.customDarkTheme;
    }
    return AppTheme.customLightTheme;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LanguageController languageController = Get.put(LanguageController());
    print(GetPlatform.isAndroid ? "Android" : "IOS");
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Demo',
      theme: changeTheme(),
      locale: languageController.getAppLanguage(),
      translations: AppLocale(),
      // home: Home(),
      initialBinding: MyBindings(),
      initialRoute: "/login",
      getPages: [
        GetPage(name: "/login", page: () => LoginScreen(), middlewares: [
          AuthMiddleware(),
          SuperMiddleware(),
        ]),
        GetPage(name: "/home", page: () => HomeScreen()),
        GetPage(name: "/super", page: () => SuperScreen()),
        GetPage(name: "/language", page: () => ChangeLanguage()),
        // GetPage(name: "/page_one", page: () => ScreenOne()),
        // GetPage(name: "/page_two", page: () => ScreenTwo()),
        // GetPage(name: "/page_three", page: () => ScreenThree()),
        // GetPage(name: "/", page: () => Home(), binding: MyBindings()),
      ],
    );
  }
}
