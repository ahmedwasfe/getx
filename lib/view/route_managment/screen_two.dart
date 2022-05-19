import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/route_managment/screen_three.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen Two"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
