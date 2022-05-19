
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/home_controller.dart';

class Secound extends StatelessWidget {

  HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Secound"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${controller.counter}"),
            SizedBox(height: 20),
            Text("${controller.value}"),
          ],
        ),
      ),
    );
  }
}
