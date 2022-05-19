import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../utils/services_helper.dart';

class SuperMiddleware extends GetMiddleware{

  bool isB = true;

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route){
    if(!isB) return RouteSettings(name: "super");
  }
}