import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/route_managment/screen_three.dart';

class HomeRouteScreen extends StatelessWidget {
  const HomeRouteScreen({Key? key}) : super(key: key);

  // Get.to() == push => add new screen
  // Get.off == pushReplacement => remove now screen and add new screen
  // Get.offAll == pushAndRemoveUntil => remove all screen but stay new screen
  // Get.offNamed == pushReplacementNamed
  // back == maybepop =>

  test(c){
    // Navigator.pushAndRemoveUntil(c, null, (route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home (GetX Demo)")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text("Screen One (to)", style: TextStyle(color: Colors.white),),
              onPressed: () {
                // Get.to(ScreenOne());
                Get.toNamed("/page_one");
              },
              color: Colors.redAccent,
            ),
            MaterialButton(
              child: Text("Screen Two", style: TextStyle(color: Colors.white)),
              onPressed: () {
                // Get.to(ScreenTwo());
                Get.offNamed("page_two");
              },
              color: Colors.redAccent,
            ),
            MaterialButton(
              child: Text("Screen Three", style: TextStyle(color: Colors.white)),
              onPressed: () => Get.to(ScreenThree()),
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
