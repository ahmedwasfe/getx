
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/route_managment/screen_one.dart';
import 'package:getx/view/route_managment/screen_two.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen Three"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text("Sceen One (offAll)", style: TextStyle(color: Colors.white)),
              onPressed: () => Get.offAll(ScreenOne()),
              color: Colors.redAccent,
            ),
            MaterialButton(
              child: Text("Back", style: TextStyle(color: Colors.white)),
              onPressed: () => Get.back(),
              color: Colors.redAccent,
            ),
            MaterialButton(
              child: Text("Back (off)", style: TextStyle(color: Colors.white)),
              onPressed: () => Get.off(ScreenTwo()),
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
