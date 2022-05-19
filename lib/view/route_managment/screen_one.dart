
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/route_managment/screen_three.dart';
import 'package:getx/view/route_managment/screen_two.dart';

import 'home_route_screen.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen One"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text("Page Tow", style: TextStyle(color: Colors.white)),
              onPressed: () => Get.to(ScreenTwo()),
              color: Colors.redAccent,
            ),
            MaterialButton(
              child: Text("Page Three", style: TextStyle(color: Colors.white)),
              onPressed: () => Get.to(ScreenThree()),
              color: Colors.redAccent,
            ),
            MaterialButton(
              child: Text("Back", style: TextStyle(color: Colors.white)),
              onPressed: () => Get.back(),
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
