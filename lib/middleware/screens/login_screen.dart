import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:getx/middleware/screens/home_screen.dart';

import '../../utils/services_helper.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var userNameController = TextEditingController();
  var userTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login".tr)),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(18),
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/bubbles_fail.svg",
                width: 100,
                height: 100,
              ),
              SizedBox(height: 50),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: userNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "username".tr,
                          prefixIcon: Icon(Icons.person_outline),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: userTypeController,
                      decoration: InputDecoration(
                          hintText: "user_type".tr,
                          prefixIcon: Icon(Icons.lock_open_outlined),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 48,
                      child: MaterialButton(
                        child: Text(
                          "login_as_user".tr,
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          ServicesHelper.saveData(key: "username", value: userNameController.text);
                          ServicesHelper.saveData(key: "usertype", value: userTypeController.text);
                          Get.to(() => HomeScreen());
                        },
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 48,
                      child: MaterialButton(
                        child: Text(
                          "login_as_admin".tr,
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          ServicesHelper.saveData(key: "username", value: userNameController.text);
                          ServicesHelper.saveData(key: "usertype", value: userTypeController.text);
                          Get.to(() => HomeScreen());
                        },
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
