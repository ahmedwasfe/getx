import 'package:get/get.dart';

class AppLocale implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "arabic": "العربية",
          "english": "الإنجليزية",
          "login": "تسجيل الدخول",
          "username": "إسم المستخدم",
          "login_as_user": "تسجيل الدخول كمستخدم",
          "login_as_admin": "تسجيل الدخول كمشرف",
          "home": "الرئيسية",
          "welcome": "مرحبا",
          "user_type": "نوع المستخدم",
          "increment": "زيادة العداد",
          "clear": "مسح العداد",
          "sign_out": "تسجيل الخروج",
          "change_language": "تغيير اللغة",
          "select_language": "إختر اللغة",
          "show_dialog": "إظهار حوار",
        },
        "en": {
          "arabic": "Arabic",
          "english": "English",
          "login": "Login",
          "username": "username",
          "login_as_user": "Login as user",
          "login_as_admin": "Login as admin",
          "home": "Home",
          "welcome": "Welcome",
          "user_type": "Login Type",
          "increment": "Incremant Counter",
          "clear": "Clear Counter",
          "sign_out": "Sign Out",
          "change_language": "Change language",
          "select_language": "Select language",
          "show_dialog": "Show Dialog",
        }
      };
}
