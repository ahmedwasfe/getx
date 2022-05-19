import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/services_helper.dart';

class AuthMiddleware extends GetMiddleware{

  @override
  int? get priority => 2;

  @override
  RouteSettings? redirect(String? route){
    if(ServicesHelper.getData(key: "username") != null)
      return RouteSettings(name: "/home");

    if(ServicesHelper.getData(key: "usertype") != null)
      return RouteSettings(name: "/home");
  }
}