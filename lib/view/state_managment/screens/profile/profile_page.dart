import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/state_managment/screens/profile/profile_controller.dart';
import 'package:getx/view/state_managment/screens/profile/screen_one.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final ProController = Get.lazyPut(() => ProfileController());
  ProfileController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.redAccent,
              child: Text(
                "Screen One",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => Get.to(() => ScreenOne())),
          SizedBox(height: 20),
          GetBuilder<ProfileController>(
              init: ProfileController(),
              builder: (controller) => Text(
                    "${controller.counter == 0 ? "Cart empty!" : "Cart Count is: ${controller.counter}"}",
                    style: TextStyle(color: Colors.redAccent, fontSize: 18),
                  )),
        ],
      ),
    );
  }
}
