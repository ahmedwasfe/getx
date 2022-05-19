import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/state_managment/screens/profile/profile_controller.dart';

class ScreenOne extends StatelessWidget {

  ProfileController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                heroTag: Text("incremant"),
                child: Icon(Icons.add),
                mini: true,
                onPressed: () {
                  controller.incremant();
                }),
            SizedBox(width: 10),
            GetBuilder<ProfileController>(
                builder: (controller) => Text(
                      "${controller.counter}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
            SizedBox(width: 10),
            FloatingActionButton(
                heroTag: Text("decremant"),
                child: Icon(Icons.remove),
                mini: true,
                onPressed: () {
                  controller.decremant();
                }),
          ],
        ),
      ),
    );
  }
}
